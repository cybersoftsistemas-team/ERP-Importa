object Config_TipoNotaFiliais: TConfig_TipoNotaFiliais
  Left = 426
  Top = 313
  BorderStyle = bsToolWindow
  Caption = 'Config_TipoNotaFiliais'
  ClientHeight = 286
  ClientWidth = 715
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
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 709
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
    Width = 715
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
    ExplicitTop = 245
    DesignSize = (
      715
      30)
    object bSair: TButton
      Left = 644
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
      Left = 566
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
      'SELECT MAX(Codigo) AS Codigo FROM TipoNota')
    Left = 114
    Top = 59
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object tFiliais: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TipoNota'
      
        '  (Codigo, Saida_Entrada, Descricao, Inf_Complementares, Linhas_' +
        'Itens, Linhas, Colunas, Movimenta_Estoque, Movimenta_Inventario,' +
        ' Nao_Tributada_ICMS, Nao_Tributada_IPI, Nota_Referencia, Apuraca' +
        'o_PISCOFINS, Formula_Mercadoria, Formula_MercadoriaImp, Formula_' +
        'BCICMS, Formula_VlrICMS, Formula_BcICMSSub, Formula_VlrICMSSub, ' +
        'Formula_VlrTotalProdutos, Formula_VlrFrete, Formula_VlrSeguro, F' +
        'ormula_OutrasDespesas, Formula_TotalIPI, Formula_TotalPedido, Fo' +
        'rmula_ReducaoICMS, Calculo_Mercadoria, Calculo_MercadoriaImp, Ca' +
        'lculo_BCICMS, Calculo_VlrICMS, Calculo_BCICMSSub, Calculo_VlrICM' +
        'SSub, Calculo_VlrTotalProdutos, Calculo_VlrFrete, Calculo_VlrSeg' +
        'uro, Calculo_OutrasDespesas, Calculo_TotalIPI, Calculo_TotalPedi' +
        'do, Calculo_ReducaoICMS, Tamanho_Fonte, Conta_ICMSOper_D, Conta_' +
        'ICMSOper_C, Historico_ICMSOper, Conta_ICMSSub_D, Conta_ICMSSub_C' +
        ', Historico_ICMSSub, Conta_IPI_D, Conta_IPI_C, Historico_IPI, Co' +
        'nta_Seguro_D, Conta_Seguro_C, Historico_Seguro, Conta_Frete_D, C' +
        'onta_Frete_C, Historico_Frete, Conta_Despesas_D, Conta_Despesas_' +
        'C, Historico_Despesas, Conta_PIS_D, Conta_PIS_C, Historico_PIS, ' +
        'Conta_COFINS_D, Conta_COFINS_C, Historico_COFINS, Conta_II_D, Co' +
        'nta_II_C, Historico_II, Conta_FOB_Fornecedor_D, Historico_FOB_Fo' +
        'rnecedor, Conta_FOB_Processo_D, Historico_FOB_Processo, Conta_To' +
        'talProdutos_D, Historico_TotalProdutos, Conta_TotalNota_C, Conta' +
        '_TotalNota_D, Historico_TotalNota, Visiveis_ICMSOper, Visiveis_I' +
        'CMSSub, Visiveis_Frete, Visiveis_Seguro, Visiveis_Desconto, Visi' +
        'veis_Despesas, Visiveis_IPI, Classificacao_Saida, Tipo_Documento' +
        ', Gerar_Financeiro, Centro_Custo, CST_PIS, CST_COFINS, Finalidad' +
        'e_MErcadoria, Imune_IPI, IPI_Imune, Descricao_CFOP_Nota, Complem' +
        'entar, Conta_FOB_Fornecedor_C, Conta_FOB_Processo_C, Conta_Total' +
        'Produtos_C, Formula_BCIPI, Calculo_BCIPI, Suspensao_ICMS, Receit' +
        'a, Ativo, Suspensao_IPI, Modalidade_Pagamento, Formula_BCMVA, Fo' +
        'rmula_VlrMVA, Calculo_BCMVA, Calculo_VlrMVA, Isencao_ICMS, Relat' +
        'orio_Vendas, CSTPIS_AliquotaUM, CSTPIS_Monofasica, CSTPIS_Aliquo' +
        'taZero, CSTPIS_Isenta, CSTPIS_Suspensao, CSTPIS_SemIncidencia, C' +
        'STCOFINS_AliquotaUM, CSTCOFINS_Monofasica, CSTCOFINS_AliquotaZer' +
        'o, CSTCOFINS_Isenta, CSTCOFINS_Suspensao, CSTCOFINS_SemIncidenci' +
        'a, CSTPIS_Outras, CSTCOFINS_Outras, Valoracao_Produto, Calculo_T' +
        'otalProdutos, Formula_TotalProdutos, Calculo_TotalBCICMS, Formul' +
        'a_TotalBCICMS, Calculo_TotalVLICMS, Formula_TotalVLICMS, Calculo' +
        '_TotalBCICMSSub, Formula_TotalBCICMSSub, Calculo_TotalVLICMSSub,' +
        ' Formula_TotalVLICMSSub, Relatorio_DestaqueICMS, Tipo_Credito, C' +
        'alculo_PIS, Formula_PIS, Calculo_COFINS, Formula_COFINS, Rateio_' +
        'PISCOFINSEntrada, Origem_AliquotaICMS, Media_BCR, Origem_ValorUn' +
        'itario, Visiveis_QuantidadeItem, Baixa_Estoque, ICMS_Destacar, C' +
        'alculo_BCPIS, Formula_BCPIS, Email_NFE)'
      'VALUES'
      
        '  (:Codigo, :Saida_Entrada, :Descricao, :Inf_Complementares, :Li' +
        'nhas_Itens, :Linhas, :Colunas, :Movimenta_Estoque, :Movimenta_In' +
        'ventario, :Nao_Tributada_ICMS, :Nao_Tributada_IPI, :Nota_Referen' +
        'cia, :Apuracao_PISCOFINS, :Formula_Mercadoria, :Formula_Mercador' +
        'iaImp, :Formula_BCICMS, :Formula_VlrICMS, :Formula_BcICMSSub, :F' +
        'ormula_VlrICMSSub, :Formula_VlrTotalProdutos, :Formula_VlrFrete,' +
        ' :Formula_VlrSeguro, :Formula_OutrasDespesas, :Formula_TotalIPI,' +
        ' :Formula_TotalPedido, :Formula_ReducaoICMS, :Calculo_Mercadoria' +
        ', :Calculo_MercadoriaImp, :Calculo_BCICMS, :Calculo_VlrICMS, :Ca' +
        'lculo_BCICMSSub, :Calculo_VlrICMSSub, :Calculo_VlrTotalProdutos,' +
        ' :Calculo_VlrFrete, :Calculo_VlrSeguro, :Calculo_OutrasDespesas,' +
        ' :Calculo_TotalIPI, :Calculo_TotalPedido, :Calculo_ReducaoICMS, ' +
        ':Tamanho_Fonte, :Conta_ICMSOper_D, :Conta_ICMSOper_C, :Historico' +
        '_ICMSOper, :Conta_ICMSSub_D, :Conta_ICMSSub_C, :Historico_ICMSSu' +
        'b, :Conta_IPI_D, :Conta_IPI_C, :Historico_IPI, :Conta_Seguro_D, ' +
        ':Conta_Seguro_C, :Historico_Seguro, :Conta_Frete_D, :Conta_Frete' +
        '_C, :Historico_Frete, :Conta_Despesas_D, :Conta_Despesas_C, :His' +
        'torico_Despesas, :Conta_PIS_D, :Conta_PIS_C, :Historico_PIS, :Co' +
        'nta_COFINS_D, :Conta_COFINS_C, :Historico_COFINS, :Conta_II_D, :' +
        'Conta_II_C, :Historico_II, :Conta_FOB_Fornecedor_D, :Historico_F' +
        'OB_Fornecedor, :Conta_FOB_Processo_D, :Historico_FOB_Processo, :' +
        'Conta_TotalProdutos_D, :Historico_TotalProdutos, :Conta_TotalNot' +
        'a_C, :Conta_TotalNota_D, :Historico_TotalNota, :Visiveis_ICMSOpe' +
        'r, :Visiveis_ICMSSub, :Visiveis_Frete, :Visiveis_Seguro, :Visive' +
        'is_Desconto, :Visiveis_Despesas, :Visiveis_IPI, :Classificacao_S' +
        'aida, :Tipo_Documento, :Gerar_Financeiro, :Centro_Custo, :CST_PI' +
        'S, :CST_COFINS, :Finalidade_MErcadoria, :Imune_IPI, :IPI_Imune, ' +
        ':Descricao_CFOP_Nota, :Complementar, :Conta_FOB_Fornecedor_C, :C' +
        'onta_FOB_Processo_C, :Conta_TotalProdutos_C, :Formula_BCIPI, :Ca' +
        'lculo_BCIPI, :Suspensao_ICMS, :Receita, :Ativo, :Suspensao_IPI, ' +
        ':Modalidade_Pagamento, :Formula_BCMVA, :Formula_VlrMVA, :Calculo' +
        '_BCMVA, :Calculo_VlrMVA, :Isencao_ICMS, :Relatorio_Vendas, :CSTP' +
        'IS_AliquotaUM, :CSTPIS_Monofasica, :CSTPIS_AliquotaZero, :CSTPIS' +
        '_Isenta, :CSTPIS_Suspensao, :CSTPIS_SemIncidencia, :CSTCOFINS_Al' +
        'iquotaUM, :CSTCOFINS_Monofasica, :CSTCOFINS_AliquotaZero, :CSTCO' +
        'FINS_Isenta, :CSTCOFINS_Suspensao, :CSTCOFINS_SemIncidencia, :CS' +
        'TPIS_Outras, :CSTCOFINS_Outras, :Valoracao_Produto, :Calculo_Tot' +
        'alProdutos, :Formula_TotalProdutos, :Calculo_TotalBCICMS, :Formu' +
        'la_TotalBCICMS, :Calculo_TotalVLICMS, :Formula_TotalVLICMS, :Cal' +
        'culo_TotalBCICMSSub, :Formula_TotalBCICMSSub, :Calculo_TotalVLIC' +
        'MSSub, :Formula_TotalVLICMSSub, :Relatorio_DestaqueICMS, :Tipo_C' +
        'redito, :Calculo_PIS, :Formula_PIS, :Calculo_COFINS, :Formula_CO' +
        'FINS, :Rateio_PISCOFINSEntrada, :Origem_AliquotaICMS, :Media_BCR' +
        ', :Origem_ValorUnitario, :Visiveis_QuantidadeItem, :Baixa_Estoqu' +
        'e, :ICMS_Destacar, :Calculo_BCPIS, :Formula_BCPIS, :Email_NFE)')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM TipoNota')
    FetchRows = 1
    Left = 113
    Top = 124
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 104
    Top = 174
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 175
    Top = 183
  end
  object dstFiliais: TDataSource
    DataSet = tFiliais
    Left = 169
    Top = 135
  end
end
