object Impressao_Faturamento_ComposicaoProc: TImpressao_Faturamento_ComposicaoProc
  Left = 700
  Top = 374
  BorderStyle = bsDialog
  Caption = 'Impressao_Faturamento_ComposicaoProc'
  ClientHeight = 241
  ClientWidth = 539
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
    Width = 539
    Height = 46
    Align = alTop
    Stretch = True
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
    Top = 211
    Width = 539
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      539
      30)
    object bSair: TButton
      Left = 472
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
    end
    object bImprimir: TButton
      Left = 406
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
    end
  end
  object StaticText5: TStaticText
    Left = 11
    Top = 152
    Width = 78
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Processo'
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
  object StaticText7: TStaticText
    Left = 11
    Top = 129
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
    TabOrder = 2
    Transparent = False
    StyleElements = []
  end
  object cCliente: TRxDBLookupCombo
    Left = 91
    Top = 129
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
    TabOrder = 3
    OnChange = cClienteChange
  end
  object cProcesso: TRxDBLookupCombo
    Left = 91
    Top = 152
    Width = 302
    Height = 21
    DropDownCount = 10
    DisplayAllFields = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo;Numero_Declaracao'
    LookupSource = Dados.dsProcessosDOC
    ParentFont = False
    TabOrder = 4
  end
  object cTipo: TRadioGroup
    Left = 11
    Top = 65
    Width = 518
    Height = 46
    Caption = 'Tipo'
    Columns = 3
    ItemIndex = 1
    Items.Strings = (
      'Notas Fiscais'
      'Pedido Sa'#237'da'
      'Simula'#231#227'o')
    TabOrder = 5
    OnClick = cClienteChange
  end
  object tNota: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_PRADOTEX2'
      
        '----------------------------------------------------------------' +
        '------------------[ NOTA FISCAL DE ENTRADA ]--------------------' +
        '-----------------------------------------------------------'
      
        'SELECT  Cliente         = (SELECT Nome FROM Clientes WHERE Codig' +
        'o = PD.Cliente)'
      
        '       ,CNPJ            = (SELECT CNPJ FROM Clientes WHERE Codig' +
        'o = Cliente)'
      '       ,Processo'
      '       ,Modalidade_Importacao'
      
        '       ,Modalidade      = (SELECT Descricao FROM TiposProcesso W' +
        'HERE Codigo = Modalidade_Importacao)'
      
        '       ,Tipo_NotaSaida  = ISNULL((SELECT DISTINCT Tipo_Nota FROM' +
        ' NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD' +
        '.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)'
      '       ,FOB'
      '       ,Frete'
      '       ,Seguro'
      '       ,Dumping          = ISNULL(Valor_Dumping, 0)'
      '       ,II'
      '       ,Valor_PIS'
      '       ,Valor_COFINS'
      
        '       ,Custo            = ISNULL((SELECT SUM(Valor_OutrasDespes' +
        'as) FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Proce' +
        'sso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1' +
        '), 0)'
      
        '       ,Produto_Entrada  = ISNULL((SELECT SUM(Valor_TotalProduto' +
        's)  FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Proce' +
        'sso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1' +
        '), 0)'
      
        '       ,Total_Entrada    = ISNULL((SELECT SUM(Valor_TotalNota)  ' +
        '    FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Proce' +
        'sso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1' +
        '), 0)'
      '       ,CIF              = CAST(0 AS Float)'
      '       ,CIF_Saida        = CAST(0 AS Float)'
      '       ,Fator            = CAST(0 AS Float)'
      
        '       ,Fator_ICMS = CASE WHEN (SELECT Fator_ICMS FROM TipoNota ' +
        'WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFisca' +
        'is NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo A' +
        'ND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN'
      
        #9'                            ISNULL((SELECT MAX(Aliquota_ICMSOpe' +
        'r) FROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo' +
        ' = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), ' +
        '0)'
      #9'                       ELSE'
      #9#9#9#9'    CAST(0  AS Float)'
      #9#9#9'     END'
      
        ' ,Fator_PIS = CASE WHEN (SELECT Fator_PIS FROM TipoNota WHERE Co' +
        'digo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WH' +
        'ERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Ca' +
        'ncelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN'
      
        #9'                          ISNULL((SELECT MAX(Aliquota_PIS) FROM' +
        ' NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.P' +
        'rocesso AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)'
      #9'                     ELSE'
      #9#9#9#9'CAST(0  AS Float)'
      #9#9#9'     END'
      
        ' ,Fator_COFINS = CASE WHEN (SELECT Fator_COFINS FROM TipoNota WH' +
        'ERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais' +
        ' NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND' +
        ' NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN'
      
        #9'                          ISNULL((SELECT MAX(Aliquota_COFINS) F' +
        'ROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = P' +
        'D.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)'
      #9'                     ELSE'
      #9#9#9#9'  CAST(0  AS Float)'
      #9#9#9'     END'
      
        ' ,Fator_IRPJ = CASE WHEN (SELECT Fator_IRPJ FROM TipoNota WHERE ' +
        'Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF ' +
        'WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.' +
        'Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN'
      
        #9'                             ISNULL((SELECT MAX(Aliquota_IRPJ) ' +
        'FROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = ' +
        'PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)'
      #9'                      ELSE'
      #9#9#9'             CAST(0  AS Float)'
      #9#9#9'      END'
      
        ' ,Fator_CSLL = CASE WHEN (SELECT Fator_CSLL FROM TipoNota WHERE ' +
        'Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF ' +
        'WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.' +
        'Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN'
      
        #9'                           ISNULL((SELECT MAX(Aliquota_CSLL) FR' +
        'OM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD' +
        '.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)'
      #9'                      ELSE'
      #9#9#9'           CAST(0  AS Float)'
      #9#9#9'      END'
      
        ' ,Fator_Lucro = CASE WHEN (SELECT Fator_Lucro FROM TipoNota WHER' +
        'E Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais N' +
        'F WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND N' +
        'F.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN'
      
        #9'                           ISNULL((SELECT MAX(Lucro) FROM Notas' +
        'Itens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Process' +
        'o AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)'
      #9'                      ELSE'
      #9#9#9'           CAST(0  AS Float)'
      #9#9#9'      END'
      
        '       ,Produto_Saida     = ISNULL((SELECT SUM(Valor_TotalProdut' +
        'os)    FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,BCICMS_Saida      = ISNULL((SELECT SUM(BCICMS)          ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,ICMS_Saida        = ISNULL((SELECT SUM(Valor_ICMS)      ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,BCICMS_STSaida    = ISNULL((SELECT SUM(BCICMS_Substituti' +
        'vo)    FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,ICMS_STSaida      = ISNULL((SELECT SUM(ValorICMS_Substit' +
        'utivo) FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,IPI_Saida         = ISNULL((SELECT SUM(Valor_TotalIPI)  ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,PIS_Saida         = ISNULL((SELECT SUM(Valor_PIS)       ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,COFINS_Saida      = ISNULL((SELECT SUM(Valor_COFINS)    ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,IRPJ              = ISNULL((SELECT SUM(Valor_IRPJ)      ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,CSLL              = ISNULL((SELECT SUM(Valor_CSLL)      ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,Lucro             = ISNULL((SELECT SUM(Lucro)           ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,Frete_Saida       = ISNULL((SELECT SUM(Total_Frete)     ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,Seguro_Saida      = ISNULL((SELECT SUM(Valor_Seguro)    ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,Desconto_Saida    = ISNULL((SELECT SUM(Total_Descontos) ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,Despesa_Saida     = ISNULL((SELECT SUM(Valor_OutrasDespe' +
        'sas)   FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      
        '       ,Faturamento       = ISNULL((SELECT SUM(Valor_TotalNota) ' +
        '       FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Pr' +
        'ocesso = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <' +
        '> 1), 0)'
      'INTO   #TEMP'
      'FROM   ProcessosDocumentos PD'
      'WHERE  Processo = '#39'PRTX 167'#39
      
        'UPDATE #TEMP SET Fator     = (ROUND((100 - (Fator_Lucro+Fator_IC' +
        'MS+Fator_PIS+Fator_COFINS+Fator_IRPJ+Fator_CSLL)), 4)/100)'
      
        '                ,CIF       = FOB + Frete + Seguro + II + Dumping' +
        ' + Custo '
      
        '                ,CIF_Saida = FOB + Frete + Seguro + II + Dumping' +
        ' + Despesa_Saida'
      'SELECT * FROM #TEMP'
      ''
      'DROP TABLE #TEMP')
    FetchRows = 1
    Left = 240
    Top = 8
  end
  object tDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_PRADOTEX2'
      'SELECT  DISTINCT Classificacao'
      '       ,Descricao'
      '       ,Valor_Total = SUM(Valor_Total)'
      
        '       ,Entrada     = CAST(CASE WHEN (SELECT Saida_Entrada FROM ' +
        'NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Dat' +
        'a_Emissao) = 0 THEN 1 END AS bit)'
      
        '       ,Saida       = CAST(CASE WHEN (SELECT Saida_Entrada FROM ' +
        'NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Dat' +
        'a_Emissao) = 1 THEN 1 END AS bit)'
      'FROM NotasDespesas WHERE Processo = '#39'PRTX 166'#39
      'GROUP BY Classificacao, Descricao, Nota'
      'ORDER BY Descricao')
    Left = 304
    Top = 8
  end
  object pNota: TppDBPipeline
    DataSource = dstNota
    UserName = 'pNota'
    Left = 368
    Top = 8
    object pNotappField1: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object pNotappField2: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
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
      FieldAlias = 'Modalidade_Importacao'
      FieldName = 'Modalidade_Importacao'
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
      Alignment = taRightJustify
      FieldAlias = 'Tipo_NotaSaida'
      FieldName = 'Tipo_NotaSaida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object pNotappField7: TppField
      FieldAlias = 'FOB'
      FieldName = 'FOB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object pNotappField8: TppField
      FieldAlias = 'Frete'
      FieldName = 'Frete'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pNotappField9: TppField
      FieldAlias = 'Seguro'
      FieldName = 'Seguro'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pNotappField10: TppField
      FieldAlias = 'Dumping'
      FieldName = 'Dumping'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pNotappField11: TppField
      FieldAlias = 'II'
      FieldName = 'II'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pNotappField12: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object pNotappField13: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object pNotappField14: TppField
      FieldAlias = 'Custo'
      FieldName = 'Custo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object pNotappField15: TppField
      FieldAlias = 'Produto_Entrada'
      FieldName = 'Produto_Entrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object pNotappField16: TppField
      FieldAlias = 'Total_Entrada'
      FieldName = 'Total_Entrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
    object pNotappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'CIF'
      FieldName = 'CIF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object pNotappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'CIF_Saida'
      FieldName = 'CIF_Saida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object pNotappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator'
      FieldName = 'Fator'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object pNotappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_ICMS'
      FieldName = 'Fator_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object pNotappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_PIS'
      FieldName = 'Fator_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object pNotappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_COFINS'
      FieldName = 'Fator_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object pNotappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_IRPJ'
      FieldName = 'Fator_IRPJ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object pNotappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_CSLL'
      FieldName = 'Fator_CSLL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object pNotappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_Lucro'
      FieldName = 'Fator_Lucro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object pNotappField26: TppField
      FieldAlias = 'Produto_Saida'
      FieldName = 'Produto_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object pNotappField27: TppField
      FieldAlias = 'BCICMS_Saida'
      FieldName = 'BCICMS_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 26
    end
    object pNotappField28: TppField
      FieldAlias = 'ICMS_Saida'
      FieldName = 'ICMS_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object pNotappField29: TppField
      FieldAlias = 'BCICMS_STSaida'
      FieldName = 'BCICMS_STSaida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 28
    end
    object pNotappField30: TppField
      FieldAlias = 'ICMS_STSaida'
      FieldName = 'ICMS_STSaida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 29
    end
    object pNotappField31: TppField
      FieldAlias = 'IPI_Saida'
      FieldName = 'IPI_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 30
    end
    object pNotappField32: TppField
      FieldAlias = 'PIS_Saida'
      FieldName = 'PIS_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 31
    end
    object pNotappField33: TppField
      FieldAlias = 'COFINS_Saida'
      FieldName = 'COFINS_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 32
    end
    object pNotappField34: TppField
      FieldAlias = 'IRPJ'
      FieldName = 'IRPJ'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 33
    end
    object pNotappField35: TppField
      FieldAlias = 'CSLL'
      FieldName = 'CSLL'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 34
    end
    object pNotappField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'Lucro'
      FieldName = 'Lucro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object pNotappField37: TppField
      FieldAlias = 'Frete_Saida'
      FieldName = 'Frete_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 36
    end
    object pNotappField38: TppField
      FieldAlias = 'Seguro_Saida'
      FieldName = 'Seguro_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 37
    end
    object pNotappField39: TppField
      FieldAlias = 'Desconto_Saida'
      FieldName = 'Desconto_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 38
    end
    object pNotappField40: TppField
      FieldAlias = 'Despesa_Saida'
      FieldName = 'Despesa_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 39
    end
    object pNotappField41: TppField
      FieldAlias = 'Faturamento'
      FieldName = 'Faturamento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 40
    end
  end
  object rComposicaoNF: TppReport
    AutoStop = False
    DataPipeline = pNota
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Composi'#231#227'o da Nota Fiscal de Sa'#237'da'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 464
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
        Caption = 'Composi'#231#227'o das Notas Fiscais do Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 27517
        mmTop = 8996
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
        mmTop = 17198
        mmWidth = 197115
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
        mmWidth = 18785
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
        mmHeight = 3387
        mmLeft = 19844
        mmTop = 19579
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText37'
        AutoSize = True
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
        mmLeft = 156634
        mmTop = 19579
        mmWidth = 25273
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
        mmLeft = 147373
        mmTop = 19579
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText38'
        AutoSize = True
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
        mmHeight = 3387
        mmLeft = 19844
        mmTop = 23548
        mmWidth = 13039
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
        mmLeft = 0
        mmTop = 23548
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground1
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
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
        AutoSize = True
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
        mmHeight = 3387
        mmLeft = 19844
        mmTop = 27517
        mmWidth = 23664
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
        mmLeft = 0
        mmTop = 27517
        mmWidth = 18785
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
        DataField = 'Seguro'
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
        DataField = 'Frete'
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
        Caption = 'CUSTOS (NF ENTRADA)'
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
        UserName = 'rDespesasE'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pDespesasE'
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
        object rDespesasE: TppChildReport
          AutoStop = False
          DataPipeline = pDespesasE
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Composi'#231#227'o da Nota Fiscal de Sa'#237'da'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
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
          DataPipelineName = 'pDespesasE'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label16'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CLASSIFICA'#199#195'O FINANCEIRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2921
              mmLeft = 13228
              mmTop = 265
              mmWidth = 131234
              BandType = 1
              LayerName = Foreground
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line3'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 794
              mmLeft = 168806
              mmTop = 4233
              mmWidth = 27780
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'VALOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2921
              mmLeft = 168806
              mmTop = 265
              mmWidth = 27780
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label18'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'ENTR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2921
              mmLeft = 146050
              mmTop = 265
              mmWidth = 9261
              BandType = 1
              LayerName = Foreground
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line4'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 794
              mmLeft = 146050
              mmTop = 4233
              mmWidth = 9261
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel59: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label59'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SA'#205'DA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2921
              mmLeft = 157427
              mmTop = 265
              mmWidth = 9261
              BandType = 1
              LayerName = Foreground
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 794
              mmLeft = 157427
              mmTop = 4233
              mmWidth = 9261
              BandType = 1
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 145257
              mmTop = 265
              mmWidth = 2117
              BandType = 1
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 156104
              mmTop = 794
              mmWidth = 2117
              BandType = 1
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 167746
              mmTop = 794
              mmWidth = 2117
              BandType = 1
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 529
              mmLeft = 13229
              mmTop = 4233
              mmWidth = 131498
              BandType = 1
              LayerName = Foreground
            end
          end
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
              DataPipeline = pDespesasE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pDespesasE'
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
              DataPipeline = pDespesasE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pDespesasE'
              mmHeight = 3175
              mmLeft = 37042
              mmTop = 265
              mmWidth = 106627
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pDespesasE
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pDespesasE'
              mmHeight = 3175
              mmLeft = 168806
              mmTop = 265
              mmWidth = 27780
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
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 145257
              mmTop = 0
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 167746
              mmTop = 265
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
            object myDBCheckBox1: TmyDBCheckBox
              DesignLayer = ppDesignLayer1
              UserName = 'DBCheckBox1'
              CheckBoxColor = clBlack
              BooleanFalse = 'False'
              BooleanTrue = 'True'
              Style = csCheckMark
              DataPipeline = pDespesasE
              DataField = 'Entrada'
              DataPipelineName = 'pDespesasE'
              mmHeight = 4233
              mmLeft = 148432
              mmTop = 0
              mmWidth = 4498
              BandType = 4
              LayerName = Foreground
            end
            object myDBCheckBox2: TmyDBCheckBox
              DesignLayer = ppDesignLayer1
              UserName = 'DBCheckBox2'
              CheckBoxColor = clBlack
              BooleanFalse = 'False'
              BooleanTrue = 'True'
              Style = csCheckMark
              DataPipeline = pDespesasE
              DataField = 'Saida'
              DataPipelineName = 'pDespesasE'
              mmHeight = 4233
              mmLeft = 160073
              mmTop = 0
              mmWidth = 4498
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 156104
              mmTop = 265
              mmWidth = 2117
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
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 1588
              mmLeft = 13229
              mmTop = 0
              mmWidth = 183357
              BandType = 7
              LayerName = Foreground
            end
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
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 113506
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
        mmTop = 26723
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
        mmTop = 26723
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
        mmTop = 30956
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
        mmTop = 30956
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
        mmTop = 30956
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
        mmTop = 34925
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Fator_ICMS'
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
        mmTop = 34925
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
        mmTop = 34925
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
        mmTop = 48683
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
        DataField = 'Produto_Saida'
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
        mmTop = 48683
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
        mmTop = 58208
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
        DataField = 'ICMS_STSaida'
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
        mmTop = 58208
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
        mmTop = 62971
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
        DataField = 'IPI_Saida'
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
        mmTop = 62971
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
        mmTop = 91281
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
        DataField = 'Faturamento'
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
        mmTop = 91281
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
        mmTop = 96838
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
        mmTop = 100806
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
        mmTop = 101336
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'BCICMS_Saida'
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
        mmTop = 103452
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
        mmTop = 100806
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
        mmTop = 101336
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ICMS_Saida'
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
        mmTop = 103452
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
        mmTop = 100806
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
        mmTop = 101336
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'BCICMS_STSaida'
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
        mmTop = 103452
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
        mmTop = 100806
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
        mmTop = 101336
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ICMS_STSaida'
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
        mmTop = 103452
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
        mmTop = 100806
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
        mmTop = 101336
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Produto_Saida'
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
        mmTop = 103452
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
        mmTop = 107156
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
        mmTop = 107686
        mmWidth = 11642
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'IPI_Saida'
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
        mmTop = 109802
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
        mmTop = 107156
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
        mmTop = 107686
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Faturamento'
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
        mmTop = 109802
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
        mmTop = 107156
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
        mmTop = 107686
        mmWidth = 30163
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Despesa_Saida'
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
        mmTop = 109802
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
        mmTop = 107156
        mmWidth = 26194
        BandType = 7
        LayerName = Foreground1
      end
      object pDescontos: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pDescontos'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Desconto_Saida'
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
        mmTop = 109802
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
        mmTop = 107686
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
        mmTop = 107156
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Seguro_Saida'
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
        mmTop = 109802
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
        mmTop = 107686
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
        mmTop = 107156
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Frete_Saida'
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
        mmTop = 109802
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
        mmTop = 107686
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
        mmTop = 26988
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
        mmTop = 26988
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
        mmTop = 26988
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
        mmTop = 26988
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
        mmTop = 26988
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
        mmTop = 26988
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
        mmTop = 26988
        mmWidth = 7408
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
        Caption = 'TOTAL DA NOTA FISCAL (ENTRADA)'
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
        mmTop = 67733
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
        DataField = 'PIS_Saida'
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
        mmTop = 67733
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
        mmTop = 72496
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
        DataField = 'COFINS_Saida'
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
        mmTop = 72496
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
        mmTop = 81756
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
        DataField = 'CSLL'
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
        mmTop = 81756
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
        mmTop = 76994
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
        DataField = 'IRPJ'
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
        mmTop = 76994
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
        mmTop = 38894
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText44'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Fator_IRPJ'
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
        mmTop = 38894
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
        mmTop = 39158
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
        mmTop = 42863
        mmWidth = 150284
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText45'
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Fator_CSLL'
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
        mmTop = 42863
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
        mmTop = 42863
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label401'
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
        mmTop = 86519
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText46'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
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
        DataPipelineName = 'pNota'
        mmHeight = 3703
        mmLeft = 169068
        mmTop = 86519
        mmWidth = 27781
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
        mmTop = 26988
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
        mmTop = 26988
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
        mmTop = 26988
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
        mmTop = 26988
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
        mmTop = 53446
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
        DataField = 'ICMS_Saida'
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
        mmTop = 53446
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label38'
        Border.mmPadding = 0
        Caption = ')'
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
        mmLeft = 87048
        mmTop = 26988
        mmWidth = 931
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label60'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'TOTAL DOS PRODUTOS NA SA'#205'DA'
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
        mmTop = 17727
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'CIF_Saida'
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
        mmTop = 17727
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label61'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOTA FISCAL DE SA'#205'DA'
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
        mmTop = 14023
        mmWidth = 196850
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'CUSTOS (NF SA'#205'DA)'
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
        mmTop = 22225
        mmWidth = 167482
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 14803425
        DataField = 'Despesa_Saida'
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
        mmTop = 22225
        mmWidth = 27781
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
    Left = 272
    Top = 8
  end
  object dstDespesasE: TDataSource
    DataSet = tDespesas
    Left = 336
    Top = 8
  end
  object pDespesasE: TppDBPipeline
    DataSource = dstDespesasE
    UserName = 'pDespesasE'
    Left = 400
    Top = 8
    object pDespesasEppField1: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object pDespesasEppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object pDespesasEppField3: TppField
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pDespesasEppField4: TppField
      FieldAlias = 'Entrada'
      FieldName = 'Entrada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 3
    end
    object pDespesasEppField5: TppField
      FieldAlias = 'Saida'
      FieldName = 'Saida'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 4
    end
  end
  object pEmpresa: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresa'
    Left = 432
    Top = 8
  end
end
