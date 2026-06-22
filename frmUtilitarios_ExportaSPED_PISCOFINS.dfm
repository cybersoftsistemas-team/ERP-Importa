object Utilitarios_ExportaSPED_PISCOFINS: TUtilitarios_ExportaSPED_PISCOFINS
  Left = 623
  Top = 222
  BorderStyle = bsDialog
  Caption = 'SQL.Save'
  ClientHeight = 637
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 745
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 4
    Width = 126
    Height = 23
    Caption = 'EFD PIS/COFINS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 8
    Top = 23
    Width = 303
    Height = 18
    Caption = 'Gera'#231#227'o do arquivo de envio do EFD PIS/COFINS.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 607
    Width = 745
    Height = 30
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object bSair: TButton
      Left = 674
      Top = 1
      Width = 70
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Align = alRight
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bGerar: TButton
      Left = 442
      Top = 1
      Width = 70
      Height = 28
      Hint = '   Gerar arquivo do SPED PIS/COFINS   '
      Align = alRight
      Caption = '&Gerar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bGerarClick
    end
    object bSintegra: TButton
      Left = 596
      Top = 1
      Width = 78
      Height = 28
      Hint = '   Abrir validador do SPED PIS/COFINS'
      Align = alRight
      Caption = '&Validador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSintegraClick
    end
    object bImprimir: TButton
      Left = 512
      Top = 1
      Width = 84
      Height = 28
      Hint = '   Imprimir rela'#231#227'o de erros'
      Align = alRight
      Caption = '&Imprimir Erros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImprimirClick
    end
  end
  object cPagina: TPageControl
    Left = 4
    Top = 56
    Width = 737
    Height = 545
    ActivePage = TabSheet1
    TabHeight = 28
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&Op'#231#245'es p/Gera'#231#227'o'
      object StaticText2: TStaticText
        Left = 5
        Top = 5
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'M'#234's / Ano'
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
      object cNomeArquivo: TEdit
        Left = 100
        Top = 28
        Width = 625
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'EFD_PIS_COFINS'
      end
      object StaticText3: TStaticText
        Left = 5
        Top = 28
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Nome do Arquivo'
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
      object cAno: TRxSpinEdit
        Left = 210
        Top = 5
        Width = 65
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object cMes: TComboBox
        Left = 100
        Top = 5
        Width = 109
        Height = 21
        Color = clWhite
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'cMes'
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object cTipo: TRadioGroup
        Left = 6
        Top = 251
        Width = 251
        Height = 57
        Caption = 'Tipo de escritura'#231#227'o'
        ItemIndex = 0
        Items.Strings = (
          'Original'
          'Retificadora')
        TabOrder = 5
        OnClick = cTipoClick
      end
      object cSituacao: TRadioGroup
        Left = 6
        Top = 77
        Width = 251
        Height = 159
        Caption = 'Situa'#231#227'o especial'
        ItemIndex = 0
        Items.Strings = (
          'Abertura'
          'Cis'#227'o'
          'Fus'#227'o'
          'Incorpora'#231#227'o'
          'Encerramento'
          'Nenhum')
        TabOrder = 6
      end
      object StaticText1: TStaticText
        Left = 5
        Top = 51
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' do Recibo'
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
      object cRecibo: TEdit
        Left = 100
        Top = 51
        Width = 173
        Height = 21
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object cNatureza: TRadioGroup
        Left = 270
        Top = 77
        Width = 454
        Height = 77
        Caption = 'Natureza da pessoa jur'#237'dica:'
        ItemIndex = 0
        Items.Strings = (
          'Sociedade empres'#225'ria em geral'
          'Sociedade cooperativa'
          
            'Entidade sujeita PIS/Pasep exclusivamente com base na Folha de S' +
            'al'#225'rios')
        TabOrder = 9
      end
      object cIncidencia: TRadioGroup
        Left = 270
        Top = 159
        Width = 454
        Height = 77
        Caption = 'Incid'#234'ncia tribut'#225'ria no per'#237'odo'
        ItemIndex = 0
        Items.Strings = (
          
            'Escritura'#231#227'o de op. c/incid'#234'ncia exclusivamente regime n'#227'o-cumul' +
            'ativo.'
          
            'Escritura'#231#227'o de op. c/incid'#234'ncia exclusivamente regime cumulativ' +
            'o.'
          
            'Escritura'#231#227'o de op. c/incid'#234'ncia regimes n'#227'o-cumulativo e cumula' +
            'tivo.')
        TabOrder = 10
        OnClick = cIncidenciaClick
      end
      object cMetodo: TRadioGroup
        Left = 270
        Top = 242
        Width = 454
        Height = 57
        Caption = 'M'#233'todo de apropria'#231#227'o de cr'#233'ditos comuns'
        Enabled = False
        Items.Strings = (
          'M'#233'todo de Apropria'#231#227'o Direta;'
          'M'#233'todo de Rateio Proporcional (Receita Bruta)')
        TabOrder = 11
      end
      object cContribuicao: TRadioGroup
        Left = 270
        Top = 304
        Width = 454
        Height = 57
        Caption = 'Tipo de contribui'#231#227'o apurada no per'#237'odo'
        Items.Strings = (
          'Contribui'#231#227'o Exclusivamente a Al'#237'quota B'#225'sica'
          
            'Contribui'#231#227'o a Al'#237'quotas Espec'#237'ficas (Difer.e/ou p/Unid.Medida P' +
            'roduto)')
        TabOrder = 12
      end
      object cTipoApuracao: TRadioGroup
        Left = 270
        Top = 366
        Width = 454
        Height = 57
        Caption = 'Tipo de apura'#231#227'o'
        Items.Strings = (
          
            'Apura'#231#227'o com base nos registros de consolida'#231#227'o das opera'#231#245'es po' +
            'r NF-e'
          'Apura'#231#227'o com base no registro individualizado de NF-e')
        TabOrder = 13
      end
      object cCriterio: TRadioGroup
        Left = 270
        Top = 428
        Width = 454
        Height = 77
        Caption = 'Indicador do crit'#233'rio de escritura'#231#227'o e apura'#231#227'o adotado'
        ItemIndex = 0
        Items.Strings = (
          'Regime de Caixa             - Escritura'#231#227'o consolidada'
          'Regime de Compet'#234'ncia - Escritura'#231#227'o consolidada'
          'Regime de Compet'#234'ncia - Escritura'#231#227'o detalhada')
        TabOrder = 14
        OnClick = cIncidenciaClick
      end
      object cBlocoM: TRadioGroup
        Left = 6
        Top = 324
        Width = 251
        Height = 61
        Caption = 'Bloco M (Apura'#231#245'es)'
        ItemIndex = 0
        Items.Strings = (
          'Gerar'
          'N'#227'o Gerar')
        TabOrder = 15
        OnClick = cTipoClick
      end
      object cVersao: TEdit
        Left = 323
        Top = 51
        Width = 117
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object StaticText4: TStaticText
        Left = 277
        Top = 51
        Width = 44
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vers'#227'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 17
        Transparent = False
        StyleElements = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Consist'#234'ncias'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsg: TMemo
        Left = 0
        Top = 0
        Width = 729
        Height = 507
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
      end
    end
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 249
    Top = 1
  end
  object tUnidades: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 281
    Top = 1
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 185
    Top = 1
  end
  object tNatureza: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT DISTINCT Natureza_Codigo,'
      
        '       (SELECT Descricao_NF FROM Cybersoft_Cadastros.dbo.Naturez' +
        'a WHERE(Codigo = NotasFiscais.Natureza_Codigo)) AS Descricao'
      'FROM   NotasFiscais'
      
        'WHERE  (MONTH(Data_Emissao) = 3) AND (YEAR(Data_Emissao) = 2011)' +
        ' AND ((SELECT Apuracao_PISCOFINS FROM TipoNota WHERE(Codigo = No' +
        'tasFiscais.Tipo_Nota)) = 1)')
    FetchRows = 1
    Left = 313
    Top = 1
  end
  object tBeneficiario: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT DISTINCT Natureza_Codigo,'
      
        '       (SELECT Descricao_NF FROM Cybersoft_Cadastros.dbo.Naturez' +
        'a WHERE(Codigo = NotasFiscais.Natureza_Codigo)) AS Descricao'
      'FROM   NotasFiscais'
      
        'WHERE  (MONTH(Data_Emissao) = 3) AND (YEAR(Data_Emissao) = 2011)' +
        ' AND ((SELECT Apuracao_PISCOFINS FROM TipoNota WHERE(Codigo = No' +
        'tasFiscais.Tipo_Nota)) = 1)')
    FetchRows = 1
    Left = 345
    Top = 1
  end
  object tItens2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 377
    Top = 1
  end
  object tApuracao: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 409
    Top = 1
  end
  object tApuracao2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 441
    Top = 1
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 505
    Top = 1
  end
  object tNotas2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 217
    Top = 1
  end
  object tDebitos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 473
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = tPagarReceber
    Left = 536
    Top = 32
  end
  object tPagarReceber: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Classificacao,'
      '       Valor_Operacao,'
      '       Data_Vencimento,'
      '       Fornecedor,'
      
        '       (SELECT Aliquota_PIS    FROM ClassificacaoFinanceira WHER' +
        'E(Codigo = Classificacao)) AS Aliquota_PIS,'
      
        '       (SELECT Aliquota_COFINS FROM ClassificacaoFinanceira WHER' +
        'E(Codigo = Classificacao)) AS Aliquota_COFINS,'
      
        '       (SELECT CST_PIS         FROM ClassificacaoFinanceira WHER' +
        'E(Codigo = Classificacao)) AS CST_PIS,'
      
        '       (SELECT CST_COFINS      FROM ClassificacaoFinanceira WHER' +
        'E(Codigo = Classificacao)) AS CST_COFINS,'
      
        '       (SELECT BCCredito       FROM ClassificacaoFinanceira WHER' +
        'E(Codigo = Classificacao)) AS Codigo_BC,'
      
        '       (SELECT Tipo_Operacao   FROM Cybersoft_Cadastros.dbo.CSTP' +
        'IS    WHERE(Codigo = (SELECT CST_PIS    FROM ClassificacaoFinanc' +
        'eira WHERE(Codigo = Classificacao)))) AS Tipo_OperacaoPIS,'
      
        '       (SELECT Tipo_Operacao   FROM Cybersoft_Cadastros.dbo.CSTC' +
        'OFINS WHERE(Codigo = (SELECT CST_COFINS FROM ClassificacaoFinanc' +
        'eira WHERE(Codigo = Classificacao)))) AS Tipo_OperacaoCOFINS,'
      
        '       CASE WHEN Fornecedor  >    0 THEN CAST(Fornecedor AS VARC' +
        'HAR(6))+'#39'F'#39' '
      
        '            WHEN Cliente     >    0 THEN CAST(Cliente AS VARCHAR' +
        '(6))+'#39'C'#39' '
      '            WHEN Orgao      <> '#39#39' THEN Orgao+'#39'O'#39' '
      '       END AS Beneficiario'
      'FROM PagarReceber'
      
        'WHERE ((SELECT ISNULL(Aliquota_PIS, 0) FROM ClassificacaoFinance' +
        'ira WHERE(Codigo = PagarReceber.Classificacao)) > 0)'
      
        '      AND (YEAR(Data_Vencimento) = 2012) AND (MONTH(Data_Vencime' +
        'nto) = 3)'
      'ORDER BY Classificacao')
    FetchRows = 1
    Left = 537
    Top = 1
  end
  object tPagarReceber2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 569
    Top = 1
  end
  object tNCM: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 601
    Top = 1
  end
  object tClassificacao: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 633
    Top = 1
  end
  object dstt: TDataSource
    DataSet = tNotas
    Left = 184
    Top = 32
  end
  object tContas: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 696
  end
end
