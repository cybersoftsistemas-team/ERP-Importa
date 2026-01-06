object Impressao_Faturamento_ComposicaoNF: TImpressao_Faturamento_ComposicaoNF
  Left = 699
  Top = 392
  BorderStyle = bsDialog
  Caption = 'Impressao_Faturamento_ComposicaoNF'
  ClientHeight = 282
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 536
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 539
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 207
    Height = 21
    Caption = 'IMPRESS'#195'O - FATURAMENTO'
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
    Width = 229
    Height = 18
    Caption = 'Composi'#231#227'o da Nota Fiscal de Sa'#237'da.'
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
    Top = 252
    Width = 536
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 232
    ExplicitWidth = 539
    DesignSize = (
      536
      30)
    object bSair: TButton
      Left = 469
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 472
    end
    object bImprimir: TButton
      Left = 403
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = bImprimirClick
      ExplicitLeft = 406
    end
  end
  object StaticText5: TStaticText
    Left = 10
    Top = 158
    Width = 78
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'N'#186' da Nota'
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
  object StaticText6: TStaticText
    Left = 10
    Top = 181
    Width = 78
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'N'#186' do Pedido'
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
  object cExcel: TCheckBox
    Left = 12
    Top = 219
    Width = 155
    Height = 17
    Caption = 'Enviar dados para o EXCEL'
    TabOrder = 3
  end
  object lCliente: TStaticText
    Left = 10
    Top = 112
    Width = 78
    Height = 21
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
    TabOrder = 4
    Transparent = False
    StyleElements = []
  end
  object cCliente: TRxDBLookupCombo
    Left = 90
    Top = 112
    Width = 436
    Height = 21
    DropDownCount = 10
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsClientes
    ParentFont = False
    TabOrder = 5
    OnChange = cClienteChange
  end
  object cNota: TRxDBLookupCombo
    Left = 90
    Top = 158
    Width = 238
    Height = 21
    DropDownCount = 10
    DisplayAllFields = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Numero'
    LookupDisplay = 'Numero;Data_Emissao'
    LookupSource = dmFiscal.dsNotas
    ParentFont = False
    TabOrder = 6
    OnChange = cNotaChange
  end
  object cPedido: TRxDBLookupCombo
    Left = 90
    Top = 181
    Width = 238
    Height = 21
    DropDownCount = 10
    DisplayAllFields = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Numero'
    LookupDisplay = 'Numero;Data_Emissao'
    LookupSource = Dados.dsPedidos
    ParentFont = False
    TabOrder = 7
    OnChange = cPedidoChange
  end
  object cTipoNota: TRadioGroup
    Left = 10
    Top = 56
    Width = 214
    Height = 46
    Caption = 'Notas Fiscais'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Entradas'
      'Sa'#237'das')
    TabOrder = 8
    OnClick = cTipoNotaClick
  end
  object lFornecedor: TStaticText
    Left = 10
    Top = 135
    Width = 78
    Height = 21
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
    TabOrder = 9
    Transparent = False
    StyleElements = []
  end
  object cFornecedor: TRxDBLookupCombo
    Left = 90
    Top = 135
    Width = 436
    Height = 21
    DropDownCount = 10
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsFornecedores
    ParentFont = False
    TabOrder = 10
    OnChange = cFornecedorChange
  end
  object tNota: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Nota = NF.Numero,'
      '       Data = NF.Data_Emissao,'
      '       NF.Processo,'
      
        '       Modalidade_Cod  = (SELECT Modalidade_Importacao FROM Proc' +
        'essosDocumentos WHERE Processo = NF.Processo),'
      
        '       Modalidade      = (SELECT Descricao FROM TiposProcesso WH' +
        'ERE Codigo = (SELECT Modalidade_Importacao FROM ProcessosDocumen' +
        'tos WHERE Processo = NF.Processo)),'
      
        '       FOB             = ISNULL((SELECT FOB_Real    FROM NotasRa' +
        'teio PD WHERE(PD.Nota = NF.Numero)), 0),'
      
        '       SeguroProc      = ISNULL((SELECT Seguro_Real FROM NotasRa' +
        'teio PD WHERE(PD.Nota = NF.Numero)), 0),'
      
        '       FreteProc       = ISNULL((SELECT Frete_Real  FROM NotasRa' +
        'teio PD WHERE(PD.Nota = NF.Numero)), 0),'
      
        '       Dumping         = ISNULL((SELECT Dumping     FROM NotasRa' +
        'teio PD WHERE(PD.Nota = NF.Numero)), 0),'
      
        '       II              = ISNULL((SELECT II          FROM NotasRa' +
        'teio PD WHERE(PD.Nota = NF.Numero)), 0),'
      
        '       Lucro           = (SELECT SUM(Lucro * NI.Quantidade) FROM' +
        ' NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data' +
        '_Emissao))'
      
        '                         /(SELECT SUM(NI.Quantidade) FROM NotasI' +
        'tens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emissa' +
        'o)),'
      '       Produtos_NF     = NF.Valor_TotalProdutos,'
      '       Produtos        = NF.Valor_TotalProdutos,'
      
        '       BCICMSOp        = CASE WHEN (SELECT Visiveis_ICMSOper FRO' +
        'M TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.BCICMS        ' +
        '         ELSE 0 END,'
      
        '       ICMSOp          = CASE WHEN (SELECT Visiveis_ICMSOper FRO' +
        'M TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_ICMS    ' +
        '         ELSE 0 END,'
      
        '       BCICMSST        = CASE WHEN (SELECT Visiveis_ICMSSub  FRO' +
        'M TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.BCICMS_Substit' +
        'utivo    ELSE 0 END,'
      
        '       ICMSST          = CASE WHEN (SELECT Visiveis_ICMSSub  FRO' +
        'M TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.ValorICMS_Subs' +
        'titutivo ELSE 0 END,'
      
        '       IPI             = CASE WHEN (SELECT Visiveis_IPI      FRO' +
        'M TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_TotalIPI' +
        '         ELSE 0 END,'
      '       Total_NF        = NF.Valor_TotalNota,'
      '       Total_Nota      = NF.Valor_TotalNota,'
      
        '       Custo           = (SELECT SUM(Valor_Nota) FROM NotasDespe' +
        'sas ND WHERE(ND.Nota = NF.Numero) AND (ND.Data_Emissao = NF.Data' +
        '_Emissao)),'
      
        '       FreteNF         = CASE WHEN (SELECT Visiveis_Frete    FRO' +
        'M TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Total_Frete  E' +
        'LSE 0 END,'
      
        '       SeguroNF        = CASE WHEN (SELECT Visiveis_Seguro   FRO' +
        'M TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_Seguro E' +
        'LSE 0 END,'
      '       DespesasNF      = NF.Valor_OutrasDespesas,'
      
        '       Desconto        = CASE WHEN (SELECT Visiveis_Desconto FRO' +
        'M TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN ISNULL(NF.Total_D' +
        'escontos, 0) ELSE 0 END,'
      '       Aliquota_ICMS   = NF.Aliquota_ICMSOper,'
      
        '       Aliquota_PIS    = (SELECT SUM(CASE WHEN Aliquota_PISRed  ' +
        '  > 0 THEN NI.Aliquota_PISRed    ELSE Aliquota_PIS    END * NI.Q' +
        'uantidade) FROM NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI' +
        '.Data = NF.Data_Emissao))'
      
        '                         / (SELECT SUM(NI.Quantidade) FROM Notas' +
        'Itens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emiss' +
        'ao)),'
      
        '       Aliquota_COFINS = (SELECT SUM(CASE WHEN Aliquota_COFINSRe' +
        'd > 0 THEN NI.Aliquota_COFINSRed ELSE Aliquota_COFINS END * NI.Q' +
        'uantidade) FROM NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI' +
        '.Data = NF.Data_Emissao))'
      
        '                         / (SELECT SUM(NI.Quantidade) FROM Notas' +
        'Itens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emiss' +
        'ao)),'
      '       Fator           = CAST(0 AS Float),'
      '       Cliente         = Destinatario_Nome,'
      '       CNPJ            = Destinatario_CNPJ_CPF,'
      '       CIF             = CAST(0 AS Float),'
      
        '       Valor_PISEnt    = (SELECT Valor_PIS    FROM ProcessosDocu' +
        'mentos WHERE Processo = NF.Processo),'
      
        '       Valor_COFINSEnt = (SELECT Valor_COFINS FROM ProcessosDocu' +
        'mentos WHERE Processo = NF.Processo),'
      '       Valor_PIS       = ISNULL(NF.Valor_PIS    , 0),'
      '       Valor_COFINS    = ISNULL(NF.Valor_COFINS , 0),'
      '       Valor_CSLL      = ISNULL(NF.Valor_CSLL   , 0),'
      '       Valor_IRPJ      = ISNULL(NF.Valor_IRPJ   , 0),'
      '       Aliquota_CSLL   = ISNULL(NF.Aliquota_CSLL, 0),'
      '       Aliquota_IRPJ   = ISNULL(NF.Aliquota_IRPJ, 0),'
      '       Lucro_Valor     = ISNULL(NF.Lucro_Valor  , 0),'
      ''
      ''
      '       Lucro_ValorPerc = CAST(0 AS money),'
      ''
      ''
      '       Fator_ICMS      = CAST(0 AS float),'
      '       Fator_PIS       = CAST(0 AS float),'
      '       Fator_COFINS    = CAST(0 AS float),'
      '       Fator_IRPJ      = CAST(0 AS float),'
      '       Fator_CSLL      = CAST(0 AS float),'
      '       Fator_Lucro     = CAST(0 AS float),'
      '       Tipo_Nota'
      'INTO   #TEMP'
      'FROM   NotasFiscais NF'
      'WHERE  (Numero = 741) '
      ''
      
        'UPDATE #TEMP SET  Fator_ICMS   = CASE WHEN (SELECT Fator_ICMS   ' +
        'FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_ICMS  ' +
        ' ELSE 0 END,'
      
        #9'              Fator_PIS    = CASE WHEN (SELECT Fator_PIS    FRO' +
        'M TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_PIS    EL' +
        'SE 0 END,'
      
        #9'              Fator_COFINS = CASE WHEN (SELECT Fator_COFINS FRO' +
        'M TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_COFINS EL' +
        'SE 0 END,'
      
        #9'              Fator_IRPJ   = CASE WHEN (SELECT Fator_IRPJ   FRO' +
        'M TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_IRPJ   EL' +
        'SE 0 END,'
      
        #9'              Fator_CSLL   = CASE WHEN (SELECT Fator_CSLL   FRO' +
        'M TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_CSLL   EL' +
        'SE 0 END,'
      
        #9'              Fator_Lucro  = CASE WHEN (SELECT Fator_Lucro  FRO' +
        'M TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Lucro           EL' +
        'SE 0 END'
      
        'UPDATE #TEMP SET Fator      = (ROUND((100 - (Fator_Lucro+Fator_I' +
        'CMS+Fator_PIS+Fator_COFINS+Fator_IRPJ+Fator_CSLL)), 4)/100),'
      
        '                 CIF        =  CASE WHEN Modalidade_Cod <> 2 THE' +
        'N'
      
        '                                    FOB + SeguroProc + FreteProc' +
        ' + Dumping + Custo + II'
      '                               ELSE'
      
        '                                    FOB + SeguroProc + FreteProc' +
        ' + Dumping + Custo + II + Valor_PISEnt + Valor_COFINSEnt'
      '                               END'
      'UPDATE #TEMP SET Lucro_ValorPerc = ISNULL(Produtos, 0) -'
      #9#9#9#9#9#9'          ( ISNULL(CIF, 0) +'
      #9'                                ISNULL(ICMSOp, 0) +'
      '                                    ISNULL(ICMSST, 0) +'
      '                                    ISNULL(IPI, 0) +'
      #9#9#9#9#9#9'            ISNULL(Valor_PIS, 0) +'
      #9#9#9#9#9#9'            ISNULL(Valor_COFINS, 0) +'
      #9#9#9#9#9#9'            ISNULL(Valor_IRPJ, 0) +'
      #9#9#9#9#9#9'            ISNULL(Valor_CSLL, 0) )'
      ''
      'SELECT * FROM #TEMP'
      'DROP TABLE #TEMP')
    Active = True
    Left = 240
    Top = 8
  end
  object tDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Classificacao,'
      '       Descricao,'
      '       Valor_Total,'
      '       Valor_Nota'
      'FROM NotasDespesas'
      'WHERE Nota = 4223')
    Active = True
    Left = 312
    Top = 8
  end
  object pNota: TppDBPipeline
    DataSource = dstNota
    UserName = 'pNota'
    Left = 392
    Top = 152
    object pNotappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pNotappField2: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pNotappField3: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object pNotappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Modalidade_Cod'
      FieldName = 'Modalidade_Cod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object pNotappField5: TppField
      FieldAlias = 'Modalidade'
      FieldName = 'Modalidade'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object pNotappField6: TppField
      FieldAlias = 'FOB'
      FieldName = 'FOB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object pNotappField7: TppField
      FieldAlias = 'SeguroProc'
      FieldName = 'SeguroProc'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object pNotappField8: TppField
      FieldAlias = 'FreteProc'
      FieldName = 'FreteProc'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pNotappField9: TppField
      FieldAlias = 'Dumping'
      FieldName = 'Dumping'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pNotappField10: TppField
      FieldAlias = 'II'
      FieldName = 'II'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pNotappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Lucro'
      FieldName = 'Lucro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object pNotappField12: TppField
      FieldAlias = 'Produtos_NF'
      FieldName = 'Produtos_NF'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object pNotappField13: TppField
      FieldAlias = 'Produtos'
      FieldName = 'Produtos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object pNotappField14: TppField
      FieldAlias = 'BCICMSOp'
      FieldName = 'BCICMSOp'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object pNotappField15: TppField
      FieldAlias = 'ICMSOp'
      FieldName = 'ICMSOp'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object pNotappField16: TppField
      FieldAlias = 'BCICMSST'
      FieldName = 'BCICMSST'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
    object pNotappField17: TppField
      FieldAlias = 'ICMSST'
      FieldName = 'ICMSST'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 16
    end
    object pNotappField18: TppField
      FieldAlias = 'IPI'
      FieldName = 'IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 17
    end
    object pNotappField19: TppField
      FieldAlias = 'Total_NF'
      FieldName = 'Total_NF'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 18
    end
    object pNotappField20: TppField
      FieldAlias = 'Total_Nota'
      FieldName = 'Total_Nota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 19
    end
    object pNotappField21: TppField
      FieldAlias = 'Custo'
      FieldName = 'Custo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 20
    end
    object pNotappField22: TppField
      FieldAlias = 'FreteNF'
      FieldName = 'FreteNF'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 21
    end
    object pNotappField23: TppField
      FieldAlias = 'SeguroNF'
      FieldName = 'SeguroNF'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
    object pNotappField24: TppField
      FieldAlias = 'DespesasNF'
      FieldName = 'DespesasNF'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 23
    end
    object pNotappField25: TppField
      FieldAlias = 'Desconto'
      FieldName = 'Desconto'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 24
    end
    object pNotappField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMS'
      FieldName = 'Aliquota_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object pNotappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_PIS'
      FieldName = 'Aliquota_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object pNotappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_COFINS'
      FieldName = 'Aliquota_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object pNotappField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator'
      FieldName = 'Fator'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object pNotappField30: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 60
      DisplayWidth = 60
      Position = 29
    end
    object pNotappField31: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 30
    end
    object pNotappField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'CIF'
      FieldName = 'CIF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object pNotappField33: TppField
      FieldAlias = 'Valor_PISEnt'
      FieldName = 'Valor_PISEnt'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 32
    end
    object pNotappField34: TppField
      FieldAlias = 'Valor_COFINSEnt'
      FieldName = 'Valor_COFINSEnt'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 33
    end
    object pNotappField35: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 34
    end
    object pNotappField36: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 35
    end
    object pNotappField37: TppField
      FieldAlias = 'Valor_CSLL'
      FieldName = 'Valor_CSLL'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 36
    end
    object pNotappField38: TppField
      FieldAlias = 'Valor_IRPJ'
      FieldName = 'Valor_IRPJ'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 37
    end
    object pNotappField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_CSLL'
      FieldName = 'Aliquota_CSLL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object pNotappField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_IRPJ'
      FieldName = 'Aliquota_IRPJ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object pNotappField41: TppField
      FieldAlias = 'Lucro_Valor'
      FieldName = 'Lucro_Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 40
    end
    object pNotappField42: TppField
      FieldAlias = 'Lucro_ValorPerc'
      FieldName = 'Lucro_ValorPerc'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 41
    end
    object pNotappField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_ICMS'
      FieldName = 'Fator_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object pNotappField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_PIS'
      FieldName = 'Fator_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object pNotappField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_COFINS'
      FieldName = 'Fator_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pNotappField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_IRPJ'
      FieldName = 'Fator_IRPJ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object pNotappField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_CSLL'
      FieldName = 'Fator_CSLL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 46
    end
    object pNotappField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_Lucro'
      FieldName = 'Fator_Lucro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object pNotappField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Nota'
      FieldName = 'Tipo_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
  end
  object rComposicaoNF: TppReport
    AutoStop = False
    DataPipeline = pNota
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Composi'#231#227'o da Nota Fiscal de Sa'#237'da'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\Composicao_Nota_' +
      'Fiscal.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 392
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pNota'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresa'
        mmHeight = 5027
        mmLeft = 27517
        mmTop = 0
        mmWidth = 169334
        BandType = 0
        LayerName = Foreground1
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Composi'#231#227'o da Nota Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 27781
        mmTop = 6350
        mmWidth = 169334
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 2381
        mmLeft = 0
        mmTop = 17463
        mmWidth = 196850
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3440
        mmLeft = 0
        mmTop = 32544
        mmWidth = 167746
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3440
        mmLeft = 169069
        mmTop = 32544
        mmWidth = 28046
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label103'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 19579
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground1
      end
      object lNota: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lNota'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOTA FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 23548
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText34'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Cliente'
        DataPipeline = pNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 19579
        mmWidth = 794
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText35'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Nota'
        DataPipeline = pNota
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 23548
        mmWidth = 794
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText36'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3704
        mmLeft = 43392
        mmTop = 23548
        mmWidth = 794
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label104'
        Border.mmPadding = 0
        Caption = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 23548
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText37'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pNota
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3387
        mmLeft = 143404
        mmTop = 19579
        mmWidth = 51594
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label42'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 19579
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 143404
        mmTop = 23548
        mmWidth = 51594
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label43'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PROCESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 23548
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground1
      end
      object lTipo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label105'
        Border.mmPadding = 0
        Caption = '(ENTRADA)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 60061
        mmTop = 23548
        mmWidth = 15367
        BandType = 0
        LayerName = Foreground1
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 17198
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText52'
        Border.mmPadding = 0
        DataField = 'Modalidade'
        DataPipeline = pNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 143404
        mmTop = 27517
        mmWidth = 51594
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label58'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'MODALIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 27517
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'FOB (DI)'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 0
        mmWidth = 167483
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'FOB'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 0
        mmWidth = 27780
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'SEGURO (DI)'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 4763
        mmWidth = 167483
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'SeguroProc'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 4763
        mmWidth = 27780
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'FRETE (DI)'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 9525
        mmWidth = 167483
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'FreteProc'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 9525
        mmWidth = 27780
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'ANTI DUMPING'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 14288
        mmWidth = 167483
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Dumping'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 14288
        mmWidth = 27780
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'CUSTOS (NF)'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3704
        mmLeft = 0
        mmTop = 28575
        mmWidth = 167482
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Custo'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 28575
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground1
      end
      object rDespesas: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'rDespesas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pDespesas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 33073
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pDespesas
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Composi'#231#227'o da Nota Fiscal de Sa'#237'da'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pDespesas'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'Classificacao'
              DataPipeline = pDespesas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3175
              mmLeft = 17198
              mmTop = 265
              mmWidth = 18785
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'Descricao'
              DataPipeline = pDespesas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3175
              mmLeft = 37042
              mmTop = 265
              mmWidth = 130704
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'Valor_Nota'
              DataPipeline = pDespesas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3175
              mmLeft = 168805
              mmTop = 265
              mmWidth = 27781
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label10'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #8226
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 13229
              mmTop = 265
              mmWidth = 2910
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 1588
            mmPrintPosition = 0
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label56'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'PIS ENTRADA'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19050
        mmWidth = 167482
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText50'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Valor_PISEnt'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 19050
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label57'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'COFINS ENTRADA'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3704
        mmLeft = 0
        mmTop = 23813
        mmWidth = 167482
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText51'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Valor_COFINSEnt'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 23813
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 81492
        mmTop = 0
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 128059
        mmTop = 0
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 47096
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 180446
        mmTop = 0
        mmWidth = 16404
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 265
        mmTop = 0
        mmWidth = 196850
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 179652
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 103981
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'IMPOSTO DE IMPORTA'#199#195'O (DI)'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 265
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'II'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 265
        mmWidth = 27780
        BandType = 7
        LayerName = Foreground1
      end
      object lFator: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lFator'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'FATOR = (100 - ('
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 9789
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Fator'
        DataPipeline = pNota
        DisplayFormat = ',##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 9790
        mmWidth = 27780
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PERCENTUAL DA MARGEM DE LUCRO'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 14023
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Lucro'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3175
        mmLeft = 168805
        mmTop = 14023
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #8226
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 13228
        mmTop = 14023
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'AL'#205'QUOTA DO ICMS'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 17992
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Aliquota_ICMS'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3175
        mmLeft = 168805
        mmTop = 17992
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #8226
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 13229
        mmTop = 17992
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'AL'#205'QUOTA DO PIS'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 21960
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Aliquota_PIS'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3175
        mmLeft = 168540
        mmTop = 21960
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #8226
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 13229
        mmTop = 21960
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'AL'#205'QUOTA DA COFINS'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 25929
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Aliquota_COFINS'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3175
        mmLeft = 168539
        mmTop = 25929
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #8226
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 13229
        mmTop = 25929
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'TOTAL DOS PRODUTOS'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 38894
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Produtos'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 38894
        mmWidth = 27780
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'ICMS SUBSTITUTIVO'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 48419
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'ICMSST'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 48419
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'IPI'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 53181
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'IPI'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 53181
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'FATURAMENTO'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 81492
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Total_Nota'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169069
        mmTop = 81492
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTALIZADORES DA NOTA FISCAL'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 0
        mmTop = 87312
        mmWidth = 196850
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape26: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape26'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 91281
        mmWidth = 36513
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'BASE DE C'#193'LCULO DO ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 795
        mmTop = 91810
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'BCICMSOp'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 93927
        mmWidth = 34660
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape27: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape27'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 36513
        mmTop = 91281
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR DO ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 37306
        mmTop = 91810
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ICMSOp'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 93927
        mmWidth = 34925
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape28: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape28'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 73554
        mmTop = 91281
        mmWidth = 41010
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'BASE DE C'#193'LCULO DO ICMS ST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 74613
        mmTop = 91810
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'BCICMSST'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 74348
        mmTop = 93927
        mmWidth = 38894
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape29: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape29'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 114565
        mmTop = 91281
        mmWidth = 41010
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR DO ICMS SUBSTITUI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 115359
        mmTop = 91810
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ICMSST'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 115359
        mmTop = 93927
        mmWidth = 38894
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape30: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape30'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 155575
        mmTop = 91281
        mmWidth = 41275
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label301'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR TOTAL DOS PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 156634
        mmTop = 91810
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Produtos_NF'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 93927
        mmWidth = 39423
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape31: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape31'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 114565
        mmTop = 97631
        mmWidth = 41010
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label302'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR DO IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 115623
        mmTop = 98160
        mmWidth = 11642
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'IPI'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 115359
        mmTop = 100277
        mmWidth = 38894
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape32: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape301'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 155575
        mmTop = 97631
        mmWidth = 41275
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label33'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR TOTAL DA NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 156634
        mmTop = 98160
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_NF'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 100277
        mmWidth = 39423
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape33: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape33'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 73554
        mmTop = 97631
        mmWidth = 41010
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label34'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'OUTRAS DESPESAS ACESS'#211'RIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 74613
        mmTop = 98160
        mmWidth = 30163
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'DespesasNF'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 74348
        mmTop = 100277
        mmWidth = 38894
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape34: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape34'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 47361
        mmTop = 97631
        mmWidth = 26194
        BandType = 7
        LayerName = Foreground1
      end
      object pDescontos: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pDescontos'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Desconto'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 48419
        mmTop = 100277
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label35'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 48683
        mmTop = 98160
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape35: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape35'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 23813
        mmTop = 97631
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SeguroNF'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 100277
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label36'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR DO SEGURO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 24871
        mmTop = 98160
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape36: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape36'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 97631
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FreteNF'
        DataPipeline = pNota
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3440
        mmLeft = 794
        mmTop = 100277
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label37'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR DO FRETE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1852
        mmLeft = 795
        mmTop = 98160
        mmWidth = 15346
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        Border.mmPadding = 0
        DataField = 'Fator_Lucro'
        DataPipeline = pNota
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3260
        mmLeft = 21960
        mmTop = 10054
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 29898
        mmTop = 10054
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText301'
        Border.mmPadding = 0
        DataField = 'Fator_ICMS'
        DataPipeline = pNota
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3260
        mmLeft = 33338
        mmTop = 10054
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 41275
        mmTop = 10054
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataField = 'Fator_PIS'
        DataPipeline = pNota
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3260
        mmLeft = 44715
        mmTop = 10054
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 10054
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText33'
        Border.mmPadding = 0
        DataField = 'Fator_COFINS'
        DataPipeline = pNota
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3260
        mmLeft = 56092
        mmTop = 10054
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label38'
        Border.mmPadding = 0
        Caption = ')) / 100'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 87313
        mmTop = 10054
        mmWidth = 8975
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label44'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'TOTAL (FOB + Frete + Seguro + Dumping + Custo + II)'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 5027
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText39'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'CIF'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169069
        mmTop = 5027
        mmWidth = 27780
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label202'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'PIS'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 57944
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText40'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Valor_PIS'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 57944
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label46'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'COFINS'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 62706
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText41'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Valor_COFINS'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 62706
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label40'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'CSLL'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 71967
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText42'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Valor_CSLL'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 71967
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label47'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'IRPJ'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 67204
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText43'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Valor_IRPJ'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169069
        mmTop = 67204
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label48'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'AL'#205'QUOTA DO IRPJ'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 29898
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText44'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Aliquota_IRPJ'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3175
        mmLeft = 168539
        mmTop = 29898
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label49'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #8226
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 13229
        mmTop = 30163
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label50'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'AL'#205'QUOTA DA CSLL'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 34131
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText45'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Aliquota_CSLL'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3175
        mmLeft = 168539
        mmTop = 34131
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label51'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #8226
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 13229
        mmTop = 34131
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText47'
        Border.mmPadding = 0
        DataField = 'Fator_IRPJ'
        DataPipeline = pNota
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3260
        mmLeft = 67204
        mmTop = 10054
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label53'
        Border.mmPadding = 0
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 63765
        mmTop = 10054
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label54'
        Border.mmPadding = 0
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 75142
        mmTop = 10054
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText48'
        Border.mmPadding = 0
        DataField = 'Fator_CSLL'
        DataPipeline = pNota
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNota'
        mmHeight = 3260
        mmLeft = 78581
        mmTop = 10054
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label203'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'ICMS OPERACIONAL'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 43656
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText49'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'ICMSOp'
        DataPipeline = pNota
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169069
        mmTop = 43656
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object lLucroPerc: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lLucroPerc'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'LUCRO'
        Color = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3703
        mmLeft = 0
        mmTop = 76730
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable1'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Color = 14803425
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        OnCalc = ppVariable1Calc
        TextAlignment = taRightJustified
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 76728
        mmWidth = 27516
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dstNota: TDataSource
    DataSet = tNota
    Left = 240
    Top = 56
  end
  object dstDespesas: TDataSource
    DataSet = tDespesas
    Left = 312
    Top = 56
  end
  object pDespesas: TppDBPipeline
    DataSource = dstDespesas
    UserName = 'pDespesas'
    Left = 392
    Top = 104
    object pDespesasppField1: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object pDespesasppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object pDespesasppField3: TppField
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pDespesasppField4: TppField
      FieldAlias = 'Valor_Nota'
      FieldName = 'Valor_Nota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
  end
  object pEmpresa: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresa'
    Left = 392
    Top = 56
    object pEmpresappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object pEmpresappField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 25
      Position = 1
    end
    object pEmpresappField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pEmpresappField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pEmpresappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pEmpresappField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pEmpresappField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object pEmpresappField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object pEmpresappField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pEmpresappField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 9
    end
    object pEmpresappField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object pEmpresappField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object pEmpresappField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresappField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pEmpresappField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pEmpresappField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object pEmpresappField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pEmpresappField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pEmpresappField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pEmpresappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pEmpresappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pEmpresappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pEmpresappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresappField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object pEmpresappField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object pEmpresappField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object pEmpresappField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pEmpresappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pEmpresappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresappField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pEmpresappField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object pEmpresappField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pEmpresappField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object pEmpresappField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object pEmpresappField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresappField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresappField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object pEmpresappField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object pEmpresappField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresappField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresappField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object pEmpresappField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresappField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pEmpresappField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object pEmpresappField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object pEmpresappField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object pEmpresappField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object pEmpresappField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pEmpresappField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object pEmpresappField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object pEmpresappField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object pEmpresappField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object pEmpresappField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresappField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresappField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresappField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresappField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object pEmpresappField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object pEmpresappField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresappField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresappField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object pEmpresappField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresappField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object pEmpresappField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresappField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresappField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresappField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresappField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object pEmpresappField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object pEmpresappField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pEmpresappField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object pEmpresappField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresappField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pEmpresappField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresappField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresappField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object pEmpresappField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object pEmpresappField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object pEmpresappField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pEmpresappField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresappField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresappField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pEmpresappField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object pEmpresappField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pEmpresappField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pEmpresappField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresappField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresappField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 89
    end
    object pEmpresappField91: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 90
      Searchable = False
      Sortable = False
    end
    object pEmpresappField92: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresappField93: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 92
    end
    object pEmpresappField94: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 93
    end
    object pEmpresappField95: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 94
    end
    object pEmpresappField96: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 95
    end
    object pEmpresappField97: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 96
      Searchable = False
      Sortable = False
    end
    object pEmpresappField98: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 97
    end
    object pEmpresappField99: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 98
    end
    object pEmpresappField100: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 99
    end
    object pEmpresappField101: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 100
    end
    object pEmpresappField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 101
    end
    object pEmpresappField103: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresappField104: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresappField105: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 104
    end
    object pEmpresappField106: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 105
    end
    object pEmpresappField107: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 106
    end
    object pEmpresappField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 107
    end
    object pEmpresappField109: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 108
    end
    object pEmpresappField110: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 109
    end
    object pEmpresappField111: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 110
    end
    object pEmpresappField112: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresappField113: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 112
    end
    object pEmpresappField114: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresappField115: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresappField116: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 115
    end
    object pEmpresappField117: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresappField118: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresappField119: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object pEmpresappField120: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresappField121: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 120
    end
    object pEmpresappField122: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 121
    end
    object pEmpresappField123: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresappField124: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 123
      Searchable = False
      Sortable = False
    end
    object pEmpresappField125: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 124
    end
    object pEmpresappField126: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 125
    end
    object pEmpresappField127: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresappField128: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresappField129: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 128
    end
    object pEmpresappField130: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 129
    end
    object pEmpresappField131: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresappField132: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 131
    end
    object pEmpresappField133: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresappField134: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 133
    end
    object pEmpresappField135: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresappField136: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 135
    end
    object pEmpresappField137: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 136
    end
    object pEmpresappField138: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 137
    end
    object pEmpresappField139: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 138
    end
    object pEmpresappField140: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 139
    end
    object pEmpresappField141: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 140
    end
    object pEmpresappField142: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 141
    end
    object pEmpresappField143: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 142
    end
    object pEmpresappField144: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresappField145: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 144
    end
    object pEmpresappField146: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 145
    end
    object pEmpresappField147: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 146
    end
    object pEmpresappField148: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresappField149: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 148
    end
    object pEmpresappField150: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 149
    end
    object pEmpresappField151: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 150
    end
    object pEmpresappField152: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 151
    end
    object pEmpresappField153: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 152
    end
    object pEmpresappField154: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 153
    end
    object pEmpresappField155: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 154
    end
    object pEmpresappField156: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 155
    end
    object pEmpresappField157: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 156
    end
    object pEmpresappField158: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 157
    end
    object pEmpresappField159: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 158
    end
    object pEmpresappField160: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 159
    end
    object pEmpresappField161: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 160
    end
    object pEmpresappField162: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 161
    end
    object pEmpresappField163: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 162
    end
    object pEmpresappField164: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresappField165: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 164
    end
    object pEmpresappField166: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 165
    end
    object pEmpresappField167: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 166
    end
    object pEmpresappField168: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresappField169: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 168
    end
    object pEmpresappField170: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresappField171: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 170
      Searchable = False
      Sortable = False
    end
    object pEmpresappField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresappField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresappField174: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 173
    end
    object pEmpresappField175: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 174
    end
    object pEmpresappField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresappField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresappField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresappField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresappField180: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresappField181: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresappField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresappField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresappField184: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 183
    end
    object pEmpresappField185: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 184
    end
    object pEmpresappField186: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 185
    end
    object pEmpresappField187: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresappField188: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresappField189: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresappField190: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 189
    end
    object pEmpresappField191: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 190
    end
    object pEmpresappField192: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 191
    end
    object pEmpresappField193: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 192
    end
    object pEmpresappField194: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 193
    end
    object pEmpresappField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresappField196: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 195
    end
    object pEmpresappField197: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 196
    end
    object pEmpresappField198: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresappField199: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 198
    end
    object pEmpresappField200: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 199
    end
    object pEmpresappField201: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 200
    end
    object pEmpresappField202: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 201
    end
    object pEmpresappField203: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 202
    end
    object pEmpresappField204: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 203
    end
    object pEmpresappField205: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 204
    end
    object pEmpresappField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object pEmpresappField207: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresappField208: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresappField209: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 208
    end
  end
end
