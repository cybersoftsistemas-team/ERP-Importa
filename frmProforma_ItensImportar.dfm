object Proforma_ItensImportar: TProforma_ItensImportar
  Left = 359
  Top = 218
  BorderStyle = bsDialog
  Caption = 'Proforma_ItensImportar'
  ClientHeight = 490
  ClientWidth = 984
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
  DesignSize = (
    984
    490)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 459
    Width = 984
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      984
      31)
    object bSair: TButton
      Left = 912
      Top = 2
      Width = 72
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bAdicionaTodos: TButton
      Left = 1
      Top = 2
      Width = 104
      Height = 28
      Caption = '&Adicionar Todos'
      TabOrder = 1
      OnClick = bAdicionaTodosClick
    end
    object bRemoveTodos: TButton
      Left = 106
      Top = 2
      Width = 104
      Height = 28
      Caption = '&Remover Todos'
      TabOrder = 2
      OnClick = bRemoveTodosClick
    end
    object bAdicionarItem: TButton
      Left = 210
      Top = 2
      Width = 104
      Height = 28
      Caption = '&Adicionar Item'
      TabOrder = 3
      OnClick = bAdicionarItemClick
    end
    object bRemoverItem: TButton
      Left = 315
      Top = 2
      Width = 104
      Height = 28
      Caption = '&Remover Item'
      TabOrder = 4
      OnClick = bRemoverItemClick
    end
  end
  object GradeItens: TRxDBGrid
    Left = 5
    Top = 236
    Width = 974
    Height = 219
    Anchors = [akLeft, akTop, akRight]
    Color = 14155775
    DataSource = Dados.dsProformaItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDragDrop = GradeItensDragDrop
    OnDragOver = GradeItensDragOver
    RowColor2 = 16776176
    ShowGlyphs = False
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 29
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'Codigo_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
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
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 444
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nota_Numero'
        Title.Alignment = taCenter
        Title.Caption = 'Nota'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nota_Data'
        Title.Alignment = taCenter
        Title.Caption = 'Data Nota'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'QTDE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_UnitarioReal'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr Unit'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object Grade: TRxDBGrid
    Left = 5
    Top = 4
    Width = 974
    Height = 229
    DataSource = dsItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnMouseDown = GradeMouseDown
    RowColor2 = 16776176
    ShowGlyphs = False
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 441
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'Nota'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Disponivel'
        Title.Alignment = taCenter
        Title.Caption = 'Dispon'#237'vel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Unitario'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr Unit'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dsItens: TDataSource
    DataSet = tItens
    Left = 66
    Top = 305
  end
  object tItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasItens'
      
        '  (Nota, Data, Item, Sequencia_SISCOMEX, Codigo_Mercadoria, Codi' +
        'go_Fabricante, Descricao_Mercadoria, NCM, EXTIPI, Unidade_Medida' +
        ', Quantidade, Disponivel, Valor_Unitario, Valor_Total, Aliquota_' +
        'IPI, Valor_IPI, Total_IPI, CodigoTrib_TabA, CodigoTrib_TabB, CST' +
        'IPI, CSTPIS, CSTCOFINS, Adicao, Aliquota_II, Valor_II, Valor_BCI' +
        'CMSOper, Aliquota_ICMSOper, Valor_ICMSOper, Valor_BCICMSSub, Ali' +
        'quota_ICMSSub, Valor_ICMSSub, Aliquota_MVA, Valor_MVA, Aliquota_' +
        'ICMSReducao, Valor_ICMSReducao, Valor_Seguro, Valor_Frete, Valor' +
        '_Despesa, Aliquota_PIS, Valor_PIS, Aliquota_COFINS, Valor_COFINS' +
        ', Peso_Liquido, Peso_Bruto, Veiculo, Saida_Entrada, Movimenta_In' +
        'ventario, Movimenta_Estoque, Cancelada, Modalidade_BCICMS, Modal' +
        'idade_BCICMSST, Processo, DI, Valor_IsentasICMS, Valor_OutrasICM' +
        'S, Valor_IsentasIPI, Valor_OutrasIPI, Lucro, Lucro_Valor, Valor_' +
        'BCIPI, Rateio_ICMSProcesso, Nota_Terceiros, Sequencia, Desconto,' +
        ' Desconto_Valor, Apuracao_PISCOFINS, Aliquota_PISRed, Aliquota_C' +
        'OFINSRed, Aliquota_ICMSIntegral, Valor_BCMVA, Valor_Dumping, Fin' +
        'alidade_Mercadoria, Total_Item, Rateio_SISCOMEX, Valor_BCICMSOpe' +
        'rApuracao, Valor_ICMSOperApuracao, Media_BCR, Registro_Adicao, Q' +
        'uantidade_Original, Unidade_Original, Valor_PIS2, Valor_COFINS2,' +
        ' Tipo_Nota, Valor_DespesasOutros, Valor_BCPIS, Total_Impostos, A' +
        'liquota_IRPJ, Valor_IRPJ, Aliquota_CSLL, Valor_CSLL, ICMSST_Ante' +
        'rior, Comissao, Comissao_Valor, NFe_Denegada, Reducao_ICMSST, Va' +
        'lor_Inventario, Nota_Referencia, Data_Referencia, Devolucao, Num' +
        'ero_Referencia, Movimenta_EstoqueRep, CEST, Valor_BCICMSDest, Al' +
        'iquota_ICMSDest, Valor_ICMSDest, DIFAL_PercOrig, DIFAL_ValorOrig' +
        ', DIFAL_PercDest, DIFAL_ValorDest, FCP_Aliquota, FCP_ValorDest, ' +
        'FCP_ICMSOrig, FCP_ICMSDest, DIFAL_Valor)'
      'VALUES'
      
        '  (:Nota, :Data, :Item, :Sequencia_SISCOMEX, :Codigo_Mercadoria,' +
        ' :Codigo_Fabricante, :Descricao_Mercadoria, :NCM, :EXTIPI, :Unid' +
        'ade_Medida, :Quantidade, :Disponivel, :Valor_Unitario, :Valor_To' +
        'tal, :Aliquota_IPI, :Valor_IPI, :Total_IPI, :CodigoTrib_TabA, :C' +
        'odigoTrib_TabB, :CSTIPI, :CSTPIS, :CSTCOFINS, :Adicao, :Aliquota' +
        '_II, :Valor_II, :Valor_BCICMSOper, :Aliquota_ICMSOper, :Valor_IC' +
        'MSOper, :Valor_BCICMSSub, :Aliquota_ICMSSub, :Valor_ICMSSub, :Al' +
        'iquota_MVA, :Valor_MVA, :Aliquota_ICMSReducao, :Valor_ICMSReduca' +
        'o, :Valor_Seguro, :Valor_Frete, :Valor_Despesa, :Aliquota_PIS, :' +
        'Valor_PIS, :Aliquota_COFINS, :Valor_COFINS, :Peso_Liquido, :Peso' +
        '_Bruto, :Veiculo, :Saida_Entrada, :Movimenta_Inventario, :Movime' +
        'nta_Estoque, :Cancelada, :Modalidade_BCICMS, :Modalidade_BCICMSS' +
        'T, :Processo, :DI, :Valor_IsentasICMS, :Valor_OutrasICMS, :Valor' +
        '_IsentasIPI, :Valor_OutrasIPI, :Lucro, :Lucro_Valor, :Valor_BCIP' +
        'I, :Rateio_ICMSProcesso, :Nota_Terceiros, :Sequencia, :Desconto,' +
        ' :Desconto_Valor, :Apuracao_PISCOFINS, :Aliquota_PISRed, :Aliquo' +
        'ta_COFINSRed, :Aliquota_ICMSIntegral, :Valor_BCMVA, :Valor_Dumpi' +
        'ng, :Finalidade_Mercadoria, :Total_Item, :Rateio_SISCOMEX, :Valo' +
        'r_BCICMSOperApuracao, :Valor_ICMSOperApuracao, :Media_BCR, :Regi' +
        'stro_Adicao, :Quantidade_Original, :Unidade_Original, :Valor_PIS' +
        '2, :Valor_COFINS2, :Tipo_Nota, :Valor_DespesasOutros, :Valor_BCP' +
        'IS, :Total_Impostos, :Aliquota_IRPJ, :Valor_IRPJ, :Aliquota_CSLL' +
        ', :Valor_CSLL, :ICMSST_Anterior, :Comissao, :Comissao_Valor, :NF' +
        'e_Denegada, :Reducao_ICMSST, :Valor_Inventario, :Nota_Referencia' +
        ', :Data_Referencia, :Devolucao, :Numero_Referencia, :Movimenta_E' +
        'stoqueRep, :CEST, :Valor_BCICMSDest, :Aliquota_ICMSDest, :Valor_' +
        'ICMSDest, :DIFAL_PercOrig, :DIFAL_ValorOrig, :DIFAL_PercDest, :D' +
        'IFAL_ValorDest, :FCP_Aliquota, :FCP_ValorDest, :FCP_ICMSOrig, :F' +
        'CP_ICMSDest, :DIFAL_Valor)')
    SQLDelete.Strings = (
      'DELETE FROM NotasItens'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data = :Old_Data AND Item = :Old_Item AND' +
        ' Sequencia_SISCOMEX = :Old_Sequencia_SISCOMEX AND Codigo_Mercado' +
        'ria = :Old_Codigo_Mercadoria')
    SQLUpdate.Strings = (
      'UPDATE NotasItens'
      'SET'
      
        '  Nota = :Nota, Data = :Data, Item = :Item, Sequencia_SISCOMEX =' +
        ' :Sequencia_SISCOMEX, Codigo_Mercadoria = :Codigo_Mercadoria, Co' +
        'digo_Fabricante = :Codigo_Fabricante, Descricao_Mercadoria = :De' +
        'scricao_Mercadoria, NCM = :NCM, EXTIPI = :EXTIPI, Unidade_Medida' +
        ' = :Unidade_Medida, Quantidade = :Quantidade, Disponivel = :Disp' +
        'onivel, Valor_Unitario = :Valor_Unitario, Valor_Total = :Valor_T' +
        'otal, Aliquota_IPI = :Aliquota_IPI, Valor_IPI = :Valor_IPI, Tota' +
        'l_IPI = :Total_IPI, CodigoTrib_TabA = :CodigoTrib_TabA, CodigoTr' +
        'ib_TabB = :CodigoTrib_TabB, CSTIPI = :CSTIPI, CSTPIS = :CSTPIS, ' +
        'CSTCOFINS = :CSTCOFINS, Adicao = :Adicao, Aliquota_II = :Aliquot' +
        'a_II, Valor_II = :Valor_II, Valor_BCICMSOper = :Valor_BCICMSOper' +
        ', Aliquota_ICMSOper = :Aliquota_ICMSOper, Valor_ICMSOper = :Valo' +
        'r_ICMSOper, Valor_BCICMSSub = :Valor_BCICMSSub, Aliquota_ICMSSub' +
        ' = :Aliquota_ICMSSub, Valor_ICMSSub = :Valor_ICMSSub, Aliquota_M' +
        'VA = :Aliquota_MVA, Valor_MVA = :Valor_MVA, Aliquota_ICMSReducao' +
        ' = :Aliquota_ICMSReducao, Valor_ICMSReducao = :Valor_ICMSReducao' +
        ', Valor_Seguro = :Valor_Seguro, Valor_Frete = :Valor_Frete, Valo' +
        'r_Despesa = :Valor_Despesa, Aliquota_PIS = :Aliquota_PIS, Valor_' +
        'PIS = :Valor_PIS, Aliquota_COFINS = :Aliquota_COFINS, Valor_COFI' +
        'NS = :Valor_COFINS, Peso_Liquido = :Peso_Liquido, Peso_Bruto = :' +
        'Peso_Bruto, Veiculo = :Veiculo, Saida_Entrada = :Saida_Entrada, ' +
        'Movimenta_Inventario = :Movimenta_Inventario, Movimenta_Estoque ' +
        '= :Movimenta_Estoque, Cancelada = :Cancelada, Modalidade_BCICMS ' +
        '= :Modalidade_BCICMS, Modalidade_BCICMSST = :Modalidade_BCICMSST' +
        ', Processo = :Processo, DI = :DI, Valor_IsentasICMS = :Valor_Ise' +
        'ntasICMS, Valor_OutrasICMS = :Valor_OutrasICMS, Valor_IsentasIPI' +
        ' = :Valor_IsentasIPI, Valor_OutrasIPI = :Valor_OutrasIPI, Lucro ' +
        '= :Lucro, Lucro_Valor = :Lucro_Valor, Valor_BCIPI = :Valor_BCIPI' +
        ', Rateio_ICMSProcesso = :Rateio_ICMSProcesso, Nota_Terceiros = :' +
        'Nota_Terceiros, Sequencia = :Sequencia, Desconto = :Desconto, De' +
        'sconto_Valor = :Desconto_Valor, Apuracao_PISCOFINS = :Apuracao_P' +
        'ISCOFINS, Aliquota_PISRed = :Aliquota_PISRed, Aliquota_COFINSRed' +
        ' = :Aliquota_COFINSRed, Aliquota_ICMSIntegral = :Aliquota_ICMSIn' +
        'tegral, Valor_BCMVA = :Valor_BCMVA, Valor_Dumping = :Valor_Dumpi' +
        'ng, Finalidade_Mercadoria = :Finalidade_Mercadoria, Total_Item =' +
        ' :Total_Item, Rateio_SISCOMEX = :Rateio_SISCOMEX, Valor_BCICMSOp' +
        'erApuracao = :Valor_BCICMSOperApuracao, Valor_ICMSOperApuracao =' +
        ' :Valor_ICMSOperApuracao, Media_BCR = :Media_BCR, Registro_Adica' +
        'o = :Registro_Adicao, Quantidade_Original = :Quantidade_Original' +
        ', Unidade_Original = :Unidade_Original, Valor_PIS2 = :Valor_PIS2' +
        ', Valor_COFINS2 = :Valor_COFINS2, Tipo_Nota = :Tipo_Nota, Valor_' +
        'DespesasOutros = :Valor_DespesasOutros, Valor_BCPIS = :Valor_BCP' +
        'IS, Total_Impostos = :Total_Impostos, Aliquota_IRPJ = :Aliquota_' +
        'IRPJ, Valor_IRPJ = :Valor_IRPJ, Aliquota_CSLL = :Aliquota_CSLL, ' +
        'Valor_CSLL = :Valor_CSLL, ICMSST_Anterior = :ICMSST_Anterior, Co' +
        'missao = :Comissao, Comissao_Valor = :Comissao_Valor, NFe_Denega' +
        'da = :NFe_Denegada, Reducao_ICMSST = :Reducao_ICMSST, Valor_Inve' +
        'ntario = :Valor_Inventario, Nota_Referencia = :Nota_Referencia, ' +
        'Data_Referencia = :Data_Referencia, Devolucao = :Devolucao, Nume' +
        'ro_Referencia = :Numero_Referencia, Movimenta_EstoqueRep = :Movi' +
        'menta_EstoqueRep, CEST = :CEST, Valor_BCICMSDest = :Valor_BCICMS' +
        'Dest, Aliquota_ICMSDest = :Aliquota_ICMSDest, Valor_ICMSDest = :' +
        'Valor_ICMSDest, DIFAL_PercOrig = :DIFAL_PercOrig, DIFAL_ValorOri' +
        'g = :DIFAL_ValorOrig, DIFAL_PercDest = :DIFAL_PercDest, DIFAL_Va' +
        'lorDest = :DIFAL_ValorDest, FCP_Aliquota = :FCP_Aliquota, FCP_Va' +
        'lorDest = :FCP_ValorDest, FCP_ICMSOrig = :FCP_ICMSOrig, FCP_ICMS' +
        'Dest = :FCP_ICMSDest, DIFAL_Valor = :DIFAL_Valor'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data = :Old_Data AND Item = :Old_Item AND' +
        ' Sequencia_SISCOMEX = :Old_Sequencia_SISCOMEX AND Codigo_Mercado' +
        'ria = :Old_Codigo_Mercadoria')
    SQLRefresh.Strings = (
      
        'SELECT NotasItens.Nota, NotasItens.Data, NotasItens.Item, NotasI' +
        'tens.Sequencia_SISCOMEX, NotasItens.Codigo_Mercadoria, NotasIten' +
        's.Codigo_Fabricante, NotasItens.Descricao_Mercadoria, NotasItens' +
        '.NCM, NotasItens.EXTIPI, NotasItens.Unidade_Medida, NotasItens.Q' +
        'uantidade, NotasItens.Disponivel, NotasItens.Valor_Unitario, Not' +
        'asItens.Valor_Total, NotasItens.Aliquota_IPI, NotasItens.Valor_I' +
        'PI, NotasItens.Total_IPI, NotasItens.CodigoTrib_TabA, NotasItens' +
        '.CodigoTrib_TabB, NotasItens.CSTIPI, NotasItens.CSTPIS, NotasIte' +
        'ns.CSTCOFINS, NotasItens.Adicao, NotasItens.Aliquota_II, NotasIt' +
        'ens.Valor_II, NotasItens.Valor_BCICMSOper, NotasItens.Aliquota_I' +
        'CMSOper, NotasItens.Valor_ICMSOper, NotasItens.Valor_BCICMSSub, ' +
        'NotasItens.Aliquota_ICMSSub, NotasItens.Valor_ICMSSub, NotasIten' +
        's.Aliquota_MVA, NotasItens.Valor_MVA, NotasItens.Aliquota_ICMSRe' +
        'ducao, NotasItens.Valor_ICMSReducao, NotasItens.Valor_Seguro, No' +
        'tasItens.Valor_Frete, NotasItens.Valor_Despesa, NotasItens.Aliqu' +
        'ota_PIS, NotasItens.Valor_PIS, NotasItens.Aliquota_COFINS, Notas' +
        'Itens.Valor_COFINS, NotasItens.Peso_Liquido, NotasItens.Peso_Bru' +
        'to, NotasItens.Veiculo, NotasItens.Saida_Entrada, NotasItens.Mov' +
        'imenta_Inventario, NotasItens.Movimenta_Estoque, NotasItens.Canc' +
        'elada, NotasItens.Modalidade_BCICMS, NotasItens.Modalidade_BCICM' +
        'SST, NotasItens.Processo, NotasItens.DI, NotasItens.Valor_Isenta' +
        'sICMS, NotasItens.Valor_OutrasICMS, NotasItens.Valor_IsentasIPI,' +
        ' NotasItens.Valor_OutrasIPI, NotasItens.Lucro, NotasItens.Lucro_' +
        'Valor, NotasItens.Valor_BCIPI, NotasItens.Rateio_ICMSProcesso, N' +
        'otasItens.Nota_Terceiros, NotasItens.Sequencia, NotasItens.Desco' +
        'nto, NotasItens.Desconto_Valor, NotasItens.Apuracao_PISCOFINS, N' +
        'otasItens.Aliquota_PISRed, NotasItens.Aliquota_COFINSRed, NotasI' +
        'tens.Aliquota_ICMSIntegral, NotasItens.Valor_BCMVA, NotasItens.V' +
        'alor_Dumping, NotasItens.Finalidade_Mercadoria, NotasItens.Total' +
        '_Item, NotasItens.Rateio_SISCOMEX, NotasItens.Valor_BCICMSOperAp' +
        'uracao, NotasItens.Valor_ICMSOperApuracao, NotasItens.Media_BCR,' +
        ' NotasItens.Registro_Adicao, NotasItens.Quantidade_Original, Not' +
        'asItens.Unidade_Original, NotasItens.Valor_PIS2, NotasItens.Valo' +
        'r_COFINS2, NotasItens.Tipo_Nota, NotasItens.Valor_DespesasOutros' +
        ', NotasItens.Valor_BCPIS, NotasItens.Total_Impostos, NotasItens.' +
        'Aliquota_IRPJ, NotasItens.Valor_IRPJ, NotasItens.Aliquota_CSLL, ' +
        'NotasItens.Valor_CSLL, NotasItens.ICMSST_Anterior, NotasItens.Co' +
        'missao, NotasItens.Comissao_Valor, NotasItens.NFe_Denegada, Nota' +
        'sItens.Reducao_ICMSST, NotasItens.Valor_Inventario, NotasItens.N' +
        'ota_Referencia, NotasItens.Data_Referencia, NotasItens.Devolucao' +
        ', NotasItens.Numero_Referencia, NotasItens.Movimenta_EstoqueRep,' +
        ' NotasItens.CEST, NotasItens.Valor_BCICMSDest, NotasItens.Aliquo' +
        'ta_ICMSDest, NotasItens.Valor_ICMSDest, NotasItens.DIFAL_PercOri' +
        'g, NotasItens.DIFAL_ValorOrig, NotasItens.DIFAL_PercDest, NotasI' +
        'tens.DIFAL_ValorDest, NotasItens.FCP_Aliquota, NotasItens.FCP_Va' +
        'lorDest, NotasItens.FCP_ICMSOrig, NotasItens.FCP_ICMSDest, Notas' +
        'Itens.DIFAL_Valor FROM NotasItens'
      
        'WHERE NotasItens.Nota = :Nota AND NotasItens.Data = :Data AND No' +
        'tasItens.Item = :Item AND NotasItens.Sequencia_SISCOMEX = :Seque' +
        'ncia_SISCOMEX AND NotasItens.Codigo_Mercadoria = :Codigo_Mercado' +
        'ria ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo_Mercadoria'
      '      ,Descricao_Mercadoria'
      '      ,NCM'
      '      ,Nota'
      '      ,Data'
      '      ,Quantidade'
      
        '      ,Disponivel = NI.Quantidade - (SELECT SUM(Quantidade) FROM' +
        ' ProformaItens PI WHERE PI.Nota_Numero =  NI.Nota AND PI.Nota_Da' +
        'ta = NI.Data AND PI.Codigo_Mercadoria = NI.Codigo_Mercadoria AND' +
        ' PI.Item = NI.Item)'
      '      ,Valor_Unitario'
      '      ,Emissao = '#39'P'#39' '
      '      ,Item'
      'FROM   NotasItens NI'
      'WHERE  Processo = '#39'EXP 118/2016'#39
      'AND    Saida_Entrada = 0'
      'UNION ALL'
      'SELECT Codigo_Mercadoria'
      '      ,Descricao_Mercadoria'
      '      ,NCM'
      '      ,Nota'
      '      ,Data_Entrada'
      '      ,Quantidade'
      
        '      ,Disponivel = NTI.Quantidade - (SELECT SUM(Quantidade) FRO' +
        'M ProformaItens PI WHERE PI.Nota_Numero =  NTI.Nota AND PI.Nota_' +
        'Data = NTI.Data_Entrada AND PI.Codigo_Mercadoria = NTI.Codigo_Me' +
        'rcadoria AND PI.Item = NTI.Item)'
      '      ,Valor_Unitario'
      '      ,Emissao = '#39'T'#39' '
      '      ,Item'
      'FROM   NotasTerceirosItens NTI'
      'WHERE  Processo = '#39'EXP 118/2016'#39
      'Order by Nota')
    FetchRows = 1
    Active = True
    Left = 33
    Top = 304
    object tItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = '.'
      ReadOnly = True
    end
    object tItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = '.'
      ReadOnly = True
      OnGetText = tItensDescricao_MercadoriaGetText
      BlobType = ftMemo
    end
    object tItensNCM: TStringField
      FieldName = 'NCM'
      Origin = '.'
      ReadOnly = True
      EditMask = '####.##.##;0; '
      FixedChar = True
      Size = 8
    end
    object tItensNota: TIntegerField
      FieldName = 'Nota'
      Origin = '.'
      ReadOnly = True
    end
    object tItensData: TDateTimeField
      FieldName = 'Data'
      Origin = '.'
      ReadOnly = True
    end
    object tItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',##0.0000'
    end
    object tItensEmissao: TStringField
      FieldName = 'Emissao'
      Origin = '.'
      ReadOnly = True
      Size = 1
    end
    object tItensItem: TSmallintField
      FieldName = 'Item'
      Origin = '.'
      ReadOnly = True
    end
    object tItensDisponivel: TFloatField
      FieldName = 'Disponivel'
      Origin = '.'
      ReadOnly = True
    end
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 32
    Top = 334
  end
end
