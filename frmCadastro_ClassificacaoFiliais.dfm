object Cadastro_ClassificacaoFiliais: TCadastro_ClassificacaoFiliais
  Left = 747
  Top = 334
  BorderStyle = bsDialog
  Caption = 'Cadastro_ClassificacaoFiliais'
  ClientHeight = 438
  ClientWidth = 716
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
    Top = 408
    Width = 716
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
      716
      30)
    object bSair: TButton
      Left = 645
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
      Left = 567
      Top = 1
      Width = 78
      Height = 28
      Hint = '   Abrir validador do SPED PIS/COFINS'
      Anchors = [akTop, akRight]
      Caption = '&Exportar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bExportarClick
    end
    object StaticText5: TStaticText
      Left = 4
      Top = 5
      Width = 153
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvRaised
      BorderStyle = sbsSunken
      Caption = 'Senha do ADMINISTRADOR'
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
    object cSenha: TEdit
      Left = 159
      Top = 5
      Width = 177
      Height = 21
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 3
      OnChange = cSenhaChange
    end
  end
  object cContas: TRadioGroup
    Left = 5
    Top = 297
    Width = 460
    Height = 42
    Caption = 'Contas'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Apenas Contas Ativas'
      'Contas Ativas e Desativadas')
    TabOrder = 2
  end
  object TermEmpresa: TProgressBar
    Left = 364
    Top = 243
    Width = 173
    Height = 17
    TabOrder = 3
  end
  object TermClass: TProgressBar
    Left = 540
    Top = 243
    Width = 173
    Height = 17
    TabOrder = 4
  end
  object cSubst: TCheckBox
    Left = 8
    Top = 357
    Width = 265
    Height = 17
    Caption = 'Substituir Contas encontradas no Plano de Destino.'
    TabOrder = 5
  end
  object tFiliais: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ClassificacaoFinanceira'
      
        '  (Codigo, Descricao, Tipo, Relatorio, Custo, Provisao_ContaD, P' +
        'rovisao_ContaC, Provisao_Historico, Pagamento_Historico, Adianta' +
        'mento, Tipo_Lancamento, Pagamento_Conta, Cambio, Somente_Faturam' +
        'ento, Devolucao, Titulo, Aliquota_PIS, Aliquota_COFINS, CST_PIS,' +
        ' CST_COFINS, Nivel, BCCredito, Baixa_Automatica, Despesa_Fixa, D' +
        'esativada, Transferencia, Nota_Referencia, Modalidade_Importacao' +
        ', Fechamento_Processo, Processo_Obrigatorio, Custo_Seletivo, Cus' +
        'to_Entrada, Natureza_Receita, Custo_Outros, Boleto, DRE, DRE_Pri' +
        'ncipal, DRE_Juros, DRE_Desconto, Codigo_RFB, DRE_DescontoDupl)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Tipo, :Relatorio, :Custo, :Provisao_Con' +
        'taD, :Provisao_ContaC, :Provisao_Historico, :Pagamento_Historico' +
        ', :Adiantamento, :Tipo_Lancamento, :Pagamento_Conta, :Cambio, :S' +
        'omente_Faturamento, :Devolucao, :Titulo, :Aliquota_PIS, :Aliquot' +
        'a_COFINS, :CST_PIS, :CST_COFINS, :Nivel, :BCCredito, :Baixa_Auto' +
        'matica, :Despesa_Fixa, :Desativada, :Transferencia, :Nota_Refere' +
        'ncia, :Modalidade_Importacao, :Fechamento_Processo, :Processo_Ob' +
        'rigatorio, :Custo_Seletivo, :Custo_Entrada, :Natureza_Receita, :' +
        'Custo_Outros, :Boleto, :DRE, :DRE_Principal, :DRE_Juros, :DRE_De' +
        'sconto, :Codigo_RFB, :DRE_DescontoDupl)')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ClassificacaoFinanceira')
    FetchRows = 1
    Left = 120
    Top = 144
    object tFiliaisCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tFiliaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tFiliaisTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object tFiliaisRelatorio: TBooleanField
      FieldName = 'Relatorio'
    end
    object tFiliaisCusto: TBooleanField
      FieldName = 'Custo'
    end
    object tFiliaisProvisao_ContaD: TStringField
      FieldName = 'Provisao_ContaD'
      Size = 12
    end
    object tFiliaisProvisao_ContaC: TStringField
      FieldName = 'Provisao_ContaC'
      Size = 12
    end
    object tFiliaisProvisao_Historico: TSmallintField
      FieldName = 'Provisao_Historico'
    end
    object tFiliaisPagamento_Historico: TSmallintField
      FieldName = 'Pagamento_Historico'
    end
    object tFiliaisAdiantamento: TBooleanField
      FieldName = 'Adiantamento'
    end
    object tFiliaisTipo_Lancamento: TStringField
      FieldName = 'Tipo_Lancamento'
      FixedChar = True
      Size = 1
    end
    object tFiliaisPagamento_Conta: TStringField
      FieldName = 'Pagamento_Conta'
      Size = 12
    end
    object tFiliaisCambio: TBooleanField
      FieldName = 'Cambio'
    end
    object tFiliaisSomente_Faturamento: TBooleanField
      FieldName = 'Somente_Faturamento'
    end
    object tFiliaisDevolucao: TBooleanField
      FieldName = 'Devolucao'
    end
    object tFiliaisTitulo: TBooleanField
      FieldName = 'Titulo'
    end
    object tFiliaisAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
    end
    object tFiliaisAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
    end
    object tFiliaisCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object tFiliaisCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object tFiliaisNivel: TSmallintField
      FieldName = 'Nivel'
    end
    object tFiliaisBCCredito: TSmallintField
      FieldName = 'BCCredito'
    end
    object tFiliaisBaixa_Automatica: TBooleanField
      FieldName = 'Baixa_Automatica'
    end
    object tFiliaisDespesa_Fixa: TBooleanField
      FieldName = 'Despesa_Fixa'
    end
    object tFiliaisDesativada: TBooleanField
      FieldName = 'Desativada'
    end
    object tFiliaisTransferencia: TBooleanField
      FieldName = 'Transferencia'
    end
    object tFiliaisNota_Referencia: TBooleanField
      FieldName = 'Nota_Referencia'
    end
    object tFiliaisModalidade_Importacao: TSmallintField
      FieldName = 'Modalidade_Importacao'
    end
    object tFiliaisFechamento_Processo: TBooleanField
      FieldName = 'Fechamento_Processo'
    end
    object tFiliaisProcesso_Obrigatorio: TBooleanField
      FieldName = 'Processo_Obrigatorio'
    end
    object tFiliaisCusto_Seletivo: TBooleanField
      FieldName = 'Custo_Seletivo'
    end
    object tFiliaisCusto_Entrada: TBooleanField
      FieldName = 'Custo_Entrada'
    end
    object tFiliaisNatureza_Receita: TStringField
      FieldName = 'Natureza_Receita'
      Size = 3
    end
    object tFiliaisCusto_Outros: TBooleanField
      FieldName = 'Custo_Outros'
    end
    object tFiliaisBoleto: TBooleanField
      FieldName = 'Boleto'
    end
    object tFiliaisDRE: TSmallintField
      FieldName = 'DRE'
    end
    object tFiliaisDRE_Principal: TSmallintField
      FieldName = 'DRE_Principal'
    end
    object tFiliaisDRE_Juros: TSmallintField
      FieldName = 'DRE_Juros'
    end
    object tFiliaisDRE_Desconto: TSmallintField
      FieldName = 'DRE_Desconto'
    end
    object tFiliaisCodigo_RFB: TStringField
      FieldName = 'Codigo_RFB'
      Size = 8
    end
    object tFiliaisDRE_DescontoDupl: TSmallintField
      FieldName = 'DRE_DescontoDupl'
    end
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
  object tClassificacao: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ClassificacaoFinanceira'
      
        '  (Codigo, Descricao, Tipo, Relatorio, Custo, Provisao_ContaD, P' +
        'rovisao_ContaC, Provisao_Historico, Pagamento_Historico, Adianta' +
        'mento, Tipo_Lancamento, Pagamento_Conta, Cambio, Somente_Faturam' +
        'ento, Devolucao, Titulo, Aliquota_PIS, Aliquota_COFINS, CST_PIS,' +
        ' CST_COFINS, Nivel, BCCredito, Baixa_Automatica, Despesa_Fixa, D' +
        'esativada, Transferencia, Nota_Referencia, Modalidade_Importacao' +
        ', Fechamento_Processo, Processo_Obrigatorio, Custo_Seletivo, Cus' +
        'to_Entrada, Natureza_Receita, Custo_Outros, Boleto, DRE, DRE_Pri' +
        'ncipal, DRE_Juros, DRE_Desconto, Codigo_RFB, DRE_DescontoDupl)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Tipo, :Relatorio, :Custo, :Provisao_Con' +
        'taD, :Provisao_ContaC, :Provisao_Historico, :Pagamento_Historico' +
        ', :Adiantamento, :Tipo_Lancamento, :Pagamento_Conta, :Cambio, :S' +
        'omente_Faturamento, :Devolucao, :Titulo, :Aliquota_PIS, :Aliquot' +
        'a_COFINS, :CST_PIS, :CST_COFINS, :Nivel, :BCCredito, :Baixa_Auto' +
        'matica, :Despesa_Fixa, :Desativada, :Transferencia, :Nota_Refere' +
        'ncia, :Modalidade_Importacao, :Fechamento_Processo, :Processo_Ob' +
        'rigatorio, :Custo_Seletivo, :Custo_Entrada, :Natureza_Receita, :' +
        'Custo_Outros, :Boleto, :DRE, :DRE_Principal, :DRE_Juros, :DRE_De' +
        'sconto, :Codigo_RFB, :DRE_DescontoDupl)')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ClassificacaoFinanceira')
    FetchRows = 1
    Left = 120
    Top = 112
  end
  object dsClassificacao: TDataSource
    DataSet = tClassificacao
    Left = 152
    Top = 112
  end
end
