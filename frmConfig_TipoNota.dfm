object Config_TipoNota: TConfig_TipoNota
  Left = 633
  Top = 188
  BorderStyle = bsDialog
  Caption = 'Config_TipoNota'
  ClientHeight = 734
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Width = 756
    Height = 42
    Align = alTop
    Stretch = True
    ExplicitLeft = -8
    ExplicitWidth = 731
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 1
    Width = 160
    Height = 21
    Caption = 'TIPOS DE NOTA FISCAL'
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
  object RxLabel4: TRxLabel
    Left = 8
    Top = 19
    Width = 343
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de tipos de nota fiscal (Pr'#243'pria).'
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
    Top = 704
    Width = 756
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 690
    object bFiliais: TButton
      Left = 535
      Top = 1
      Width = 85
      Height = 28
      Align = alLeft
      Caption = '&Exportar Filiais'
      TabOrder = 6
      OnClick = bFiliaisClick
    end
    object bSair: TButton
      Left = 682
      Top = 1
      Width = 73
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 270
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsTipoNota
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o registro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisar: TButton
      Left = 271
      Top = 1
      Width = 66
      Height = 28
      Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
      Align = alLeft
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisarClick
    end
    object bDuplicar: TButton
      Left = 337
      Top = 1
      Width = 66
      Height = 28
      Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
      Align = alLeft
      Caption = '&Duplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bDuplicarClick
    end
    object bExportarFormulas: TButton
      Left = 403
      Top = 1
      Width = 66
      Height = 28
      Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
      Align = alLeft
      Caption = '&Exportar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bExportarFormulasClick
    end
    object bImportarFormulas: TButton
      Left = 469
      Top = 1
      Width = 66
      Height = 28
      Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
      Align = alLeft
      Caption = '&Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bImportarFormulasClick
    end
  end
  object Pasta: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 45
    Width = 750
    Height = 656
    ActivePage = TabSheet5
    Align = alClient
    TabHeight = 28
    TabOrder = 1
    TabWidth = 90
    OnChange = PastaChange
    ExplicitHeight = 642
    object TabSheet1: TTabSheet
      Caption = '&Diversos'
      Enabled = False
      ExplicitHeight = 604
      object cEntrada_Saida: TDBRadioGroup
        Left = 3
        Top = 106
        Width = 121
        Height = 70
        Caption = ' Tipo de Nota'
        DataField = 'Saida_Entrada'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Entrada'
          'Sa'#237'da')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          '0'
          '1')
        OnChange = cEntrada_SaidaChange
      end
      object StaticText1: TStaticText
        Left = 3
        Top = 27
        Width = 125
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Descri'#231#227'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 11
        Transparent = False
        StyleElements = []
      end
      object StaticText5: TStaticText
        Left = 3
        Top = 4
        Width = 125
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        Transparent = False
        StyleElements = []
      end
      object cDescricao: TDBEdit
        Left = 130
        Top = 27
        Width = 602
        Height = 21
        DataField = 'Descricao'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object cCodigo: TDBEdit
        Left = 130
        Top = 4
        Width = 76
        Height = 21
        DataField = 'Codigo'
        DataSource = Dados.dsTipoNota
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = cCodigoChange
      end
      object GroupBox2: TGroupBox
        Left = 319
        Top = 106
        Width = 277
        Height = 466
        Caption = ' Par'#226'metros Diversos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        object cNFReferencia: TDBCheckBox
          Left = 6
          Top = 52
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Pedir NF de Refer'#234'ncia no Pedido'
          DataField = 'Nota_Referencia'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object cApuracaoPISCOFINS: TDBCheckBox
          Left = 6
          Top = 70
          Width = 265
          Height = 17
          HelpType = htKeyword
          Alignment = taLeftJustify
          Caption = 'Gerar apura'#231#227'o de  PIS / COFINS'
          DataField = 'Apuracao_PISCOFINS'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cGerarFinanceiro: TDBCheckBox
          Left = 6
          Top = 88
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Gerar contas  Pagar/Receber'
          DataField = 'Gerar_Financeiro'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = cGerarFinanceiroClick
        end
        object cComplementar: TDBCheckBox
          Left = 6
          Top = 16
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Complementar'
          DataField = 'Complementar'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBCheckBox1: TDBCheckBox
          Left = 6
          Top = 106
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Gera Receita'
          DataField = 'Receita'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object cRelatorioVendas: TDBCheckBox
          Left = 6
          Top = 124
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Relat'#243'rio (Faturamento)'
          DataField = 'Relatorio_Vendas'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBCheckBox14: TDBCheckBox
          Left = 6
          Top = 142
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Relat'#243'rio (Rel.NF S/destaque de ICMS origem)'
          DataField = 'Relatorio_DestaqueICMS'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBCheckBox29: TDBCheckBox
          Left = 6
          Top = 34
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Baixa de Estoque'
          DataField = 'Baixa_Estoque'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object cICMSDestacar: TDBCheckBox
          Left = 6
          Top = 160
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'N'#227'o destacar ICMS nas obriga'#231#245'es fiscais'
          DataField = 'ICMS_Destacar'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBCheckBox13: TDBCheckBox
          Left = 6
          Top = 178
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'N'#227'o enviar E-Mail na emiss'#227'o da NF-e'
          DataField = 'Email_NFE'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBCheckBox30: TDBCheckBox
          Left = 6
          Top = 196
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Nota Fiscal de Estorno/Ajuste'
          DataField = 'NFE_Estorno'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBCheckBox33: TDBCheckBox
          Left = 6
          Top = 214
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Nota Fiscal de Transfer'#234'ncia'
          DataField = 'Transferencia'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object DBCheckBox48: TDBCheckBox
          Left = 6
          Top = 232
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Obrigar dados do ve'#237'culo nos pedidos'
          DataField = 'Dados_Veiculo'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBCheckBox49: TDBCheckBox
          Left = 6
          Top = 250
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Bloqueio de lucro M'#237'nimo/M'#225'ximo'
          DataField = 'Bloqueio_Lucro'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBCheckBox50: TDBCheckBox
          Left = 6
          Top = 268
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'N'#227'o calcular CST'#39's Automaticamente'
          DataField = 'Calculo_CST'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object DBCheckBox51: TDBCheckBox
          Left = 6
          Top = 287
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Utilizar f'#243'rmula para o valor do produrto'
          DataField = 'Formula_Produto'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBCheckBox53: TDBCheckBox
          Left = 6
          Top = 306
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Mostrar Despesas nas Informa'#231#245'es Complementar'
          DataField = 'Mostrar_Despesas'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object DBCheckBox55: TDBCheckBox
          Left = 6
          Top = 325
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tratamento Tribut'#225'rio Diferenciado  (TTD)'
          DataField = 'TTD'
          DataSource = Dados.dsTipoNota
          TabOrder = 17
        end
        object cRemessa: TDBCheckBox
          Left = 6
          Top = 344
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Nota Fiscal de Remessa'
          DataField = 'Remessa'
          DataSource = Dados.dsTipoNota
          TabOrder = 18
        end
        object DBCheckBox35: TDBCheckBox
          Left = 6
          Top = 363
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Transportador Obrigat'#243'rio na NF'
          DataField = 'Transportador'
          DataSource = Dados.dsTipoNota
          TabOrder = 19
        end
        object DBCheckBox36: TDBCheckBox
          Left = 6
          Top = 382
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Vis'#237'vel no televendas'
          DataField = 'Visivel_Televendas'
          DataSource = Dados.dsTipoNota
          TabOrder = 20
        end
        object DBCheckBox38: TDBCheckBox
          Left = 6
          Top = 401
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Incluir no Fechamento do Processo'
          DataField = 'Fechamento_Processo'
          DataSource = Dados.dsTipoNota
          TabOrder = 21
        end
        object cEstDevol: TDBCheckBox
          Left = 6
          Top = 420
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Estornar t'#237'tulo finananceiro para devolu'#231#227'o Integral'
          DataField = 'Estornar_TituloDev'
          DataSource = Dados.dsTipoNota
          TabOrder = 22
        end
        object cDevImp: TDBCheckBox
          Left = 6
          Top = 439
          Width = 265
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Devolu'#231#227'o de Importa'#231#227'o'
          DataField = 'Devolucao_Importacao'
          DataSource = Dados.dsTipoNota
          TabOrder = 23
        end
      end
      object GroupBox3: TGroupBox
        Left = 601
        Top = 106
        Width = 137
        Height = 259
        Caption = 'Campos Vis'#237'veis DANFE '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        object DBCheckBox2: TDBCheckBox
          Left = 7
          Top = 22
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'ICMS Operacional'
          DataField = 'Visiveis_ICMSOper'
          DataSource = Dados.dsTipoNota
          TabOrder = 0
        end
        object DBCheckBox3: TDBCheckBox
          Left = 7
          Top = 43
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'ICMS Substitutivo'
          DataField = 'Visiveis_ICMSSub'
          DataSource = Dados.dsTipoNota
          TabOrder = 1
        end
        object DBCheckBox4: TDBCheckBox
          Left = 7
          Top = 64
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Frete'
          DataField = 'Visiveis_Frete'
          DataSource = Dados.dsTipoNota
          TabOrder = 2
        end
        object DBCheckBox5: TDBCheckBox
          Left = 7
          Top = 85
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Seguro'
          DataField = 'Visiveis_Seguro'
          DataSource = Dados.dsTipoNota
          TabOrder = 3
        end
        object DBCheckBox6: TDBCheckBox
          Left = 7
          Top = 106
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Desconto'
          DataField = 'Visiveis_Desconto'
          DataSource = Dados.dsTipoNota
          TabOrder = 4
        end
        object DBCheckBox7: TDBCheckBox
          Left = 7
          Top = 127
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Despesas'
          DataField = 'Visiveis_Despesas'
          DataSource = Dados.dsTipoNota
          TabOrder = 5
        end
        object DBCheckBox8: TDBCheckBox
          Left = 7
          Top = 148
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'IPI'
          DataField = 'Visiveis_IPI'
          DataSource = Dados.dsTipoNota
          TabOrder = 6
        end
        object DBCheckBox17: TDBCheckBox
          Left = 7
          Top = 169
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Quantidade do Item'
          DataField = 'Visiveis_QuantidadeItem'
          DataSource = Dados.dsTipoNota
          TabOrder = 7
        end
        object DBCheckBox37: TDBCheckBox
          Left = 7
          Top = 190
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'DIFAL'
          DataField = 'Visiveis_DIFAL'
          DataSource = Dados.dsTipoNota
          TabOrder = 8
        end
        object DBCheckBox52: TDBCheckBox
          Left = 7
          Top = 210
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'AFRMM'
          DataField = 'Visiveis_AFRMM'
          DataSource = Dados.dsTipoNota
          TabOrder = 9
        end
        object DBCheckBox40: TDBCheckBox
          Left = 7
          Top = 230
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Caption = 'IPI devolu'#231#227'o'
          DataField = 'IPI_Devolucao'
          DataSource = Dados.dsTipoNota
          TabOrder = 10
        end
      end
      object StaticText57: TStaticText
        Left = 3
        Top = 50
        Width = 125
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Descri'#231#227'o CFOP p/Nota'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
        Transparent = False
        StyleElements = []
      end
      object DBEdit1: TDBEdit
        Left = 130
        Top = 50
        Width = 602
        Height = 21
        DataField = 'Descricao_CFOP_Nota'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBCheckBox15: TDBCheckBox
        Left = 210
        Top = 5
        Width = 52
        Height = 17
        Caption = 'Ativo'
        DataField = 'Ativo'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 3
        Top = 184
        Width = 121
        Height = 70
        Caption = ' PIS/COFINS Entrada'
        DataField = 'Rateio_PISCOFINSEntrada'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Rateado'
          'Calculado')
        ParentFont = False
        TabOrder = 5
        Values.Strings = (
          '0'
          '1')
        OnChange = cEntrada_SaidaChange
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 3
        Top = 504
        Width = 311
        Height = 68
        Caption = 'C'#225'lculo do ICMS Operacional'
        DataField = 'Origem_AliquotaICMS'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Utilizar a al'#237'quota da tabela de ICMS'
          'Utilizar a al'#237'quota da Adi'#231#227'o / Nota Entrada')
        ParentFont = False
        TabOrder = 8
        Values.Strings = (
          '0'
          '1')
        OnChange = cEntrada_SaidaChange
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 3
        Top = 347
        Width = 311
        Height = 138
        Caption = 'Valor Unit'#225'rio do Produto'
        DataField = 'Origem_ValorUnitario'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Valor de Entrada (Cadastro Produto)'
          'Valor de Venda (Cadastro Produto)'
          'Valor de Custo M'#233'dio (Cadastro Produto)'
          'Valor da Ficha de Estoque'
          'Valor Digitado')
        ParentFont = False
        TabOrder = 10
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        OnChange = cEntrada_SaidaChange
      end
      object cFinalidade: TDBRadioGroup
        Left = 128
        Top = 106
        Width = 185
        Height = 210
        Caption = ' Finalidade da Mercadoria '
        DataField = 'Finalidade_Mercadoria'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Revenda'
          'Consumo'
          'Devolu'#231#227'o'
          'Exporta'#231#227'o'
          'Pr'#243'pria em Poder de Terceiros'
          'Terceiros em Poder da Empresa'
          'Imobilizado'
          'Outras')
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '9')
        OnChange = cFinalidadeChange
      end
    end
    object TabSheet5: TTabSheet
      Caption = '&Fiscais'
      Enabled = False
      ImageIndex = 4
      ExplicitHeight = 604
      object cCST: TGroupBox
        Left = 5
        Top = 22
        Width = 732
        Height = 93
        Caption = ' C'#243'digos de Situa'#231#245'es Tribut'#225'rias (NF Entrada) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cCSTPIS: TDBLookupComboBox
          Left = 91
          Top = 19
          Width = 638
          Height = 21
          DataField = 'CST_PIS'
          DataSource = Dados.dsTipoNota
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCSTPIS
          NullValueKey = 46
          ParentFont = False
          TabOrder = 0
        end
        object cCSTCOFINS: TDBLookupComboBox
          Left = 91
          Top = 42
          Width = 638
          Height = 21
          DataField = 'CST_COFINS'
          DataSource = Dados.dsTipoNota
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCSTCONFINS
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object lCSTPIS: TStaticText
          Left = 5
          Top = 19
          Width = 84
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS'
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
        object lCSTCOFINS: TStaticText
          Left = 5
          Top = 42
          Width = 84
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Transparent = False
          StyleElements = []
        end
        object cTipoCredito: TRxDBLookupCombo
          Left = 91
          Top = 66
          Width = 638
          Height = 21
          DropDownCount = 8
          DropDownWidth = 650
          DisplayAllFields = True
          DataField = 'Tipo_Credito'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo; Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsTiposBCCredito
          ParentFont = False
          TabOrder = 4
        end
        object StaticText18: TStaticText
          Left = 5
          Top = 65
          Width = 84
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo B.C.Cr'#233'dito'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Transparent = False
          StyleElements = []
        end
      end
      object GrupoPIS: TGroupBox
        Left = 484
        Top = 329
        Width = 249
        Height = 142
        Caption = ' Situa'#231#227'o Tribut'#225'ria (PIS) '
        TabOrder = 1
        object DBCheckBox9: TDBCheckBox
          Left = 5
          Top = 15
          Width = 237
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
          DataField = 'CSTPIS_AliquotaUM'
          DataSource = Dados.dsTipoNota
          TabOrder = 0
        end
        object DBCheckBox18: TDBCheckBox
          Left = 5
          Top = 32
          Width = 237
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q.Zero)'
          DataField = 'CSTPIS_Monofasica'
          DataSource = Dados.dsTipoNota
          TabOrder = 1
        end
        object DBCheckBox19: TDBCheckBox
          Left = 5
          Top = 49
          Width = 237
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
          DataField = 'CSTPIS_AliquotaZero'
          DataSource = Dados.dsTipoNota
          TabOrder = 2
        end
        object DBCheckBox20: TDBCheckBox
          Left = 5
          Top = 83
          Width = 237
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isenta da Contribui'#231#227'o'
          DataField = 'CSTPIS_Isenta'
          DataSource = Dados.dsTipoNota
          TabOrder = 3
        end
        object DBCheckBox21: TDBCheckBox
          Left = 5
          Top = 66
          Width = 237
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o da Contribui'#231#227'o'
          DataField = 'CSTPIS_Suspensao'
          DataSource = Dados.dsTipoNota
          TabOrder = 4
        end
        object DBCheckBox22: TDBCheckBox
          Left = 5
          Top = 100
          Width = 237
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
          DataField = 'CSTPIS_SemIncidencia'
          DataSource = Dados.dsTipoNota
          TabOrder = 5
        end
        object DBCheckBox10: TDBCheckBox
          Left = 5
          Top = 117
          Width = 237
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Outras Opera'#231#245'es'
          DataField = 'CSTPIS_Outras'
          DataSource = Dados.dsTipoNota
          TabOrder = 6
        end
      end
      object GrupoCOFINS: TGroupBox
        Left = 484
        Top = 187
        Width = 248
        Height = 138
        Caption = ' Situa'#231#227'o Tribut'#225'ria (COFINS) '
        TabOrder = 2
        object DBCheckBox23: TDBCheckBox
          Left = 5
          Top = 15
          Width = 236
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
          DataField = 'CSTCOFINS_AliquotaUM'
          DataSource = Dados.dsTipoNota
          TabOrder = 0
        end
        object DBCheckBox24: TDBCheckBox
          Left = 5
          Top = 32
          Width = 236
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q Zero)'
          DataField = 'CSTCOFINS_Monofasica'
          DataSource = Dados.dsTipoNota
          TabOrder = 1
        end
        object DBCheckBox25: TDBCheckBox
          Left = 5
          Top = 49
          Width = 236
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
          DataField = 'CSTCOFINS_AliquotaZero'
          DataSource = Dados.dsTipoNota
          TabOrder = 2
        end
        object DBCheckBox26: TDBCheckBox
          Left = 5
          Top = 83
          Width = 236
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isenta da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_Isenta'
          DataSource = Dados.dsTipoNota
          TabOrder = 3
        end
        object DBCheckBox27: TDBCheckBox
          Left = 5
          Top = 66
          Width = 236
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_Suspensao'
          DataSource = Dados.dsTipoNota
          TabOrder = 4
        end
        object DBCheckBox28: TDBCheckBox
          Left = 5
          Top = 100
          Width = 236
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_SemIncidencia'
          DataSource = Dados.dsTipoNota
          TabOrder = 5
        end
        object DBCheckBox11: TDBCheckBox
          Left = 5
          Top = 117
          Width = 236
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Outras Opera'#231#245'es'
          DataField = 'CSTCOFINS_Outras'
          DataSource = Dados.dsTipoNota
          TabOrder = 6
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 187
        Width = 204
        Height = 82
        Caption = ' Par'#226'metros Fiscais '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object cEstoque: TDBCheckBox
          Left = 5
          Top = 15
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Movimenta Estoque'
          DataField = 'Movimenta_Estoque'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object cInventario: TDBCheckBox
          Left = 5
          Top = 35
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Movimenta Invent'#225'rio'
          DataField = 'Movimenta_Inventario'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object cEstoqueRep: TDBCheckBox
          Left = 5
          Top = 55
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Movimenta Estoque Representante'
          DataField = 'Movimenta_EstoqueRep'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object DBEdit2: TDBEdit
        Left = 1
        Top = 0
        Width = 79
        Height = 19
        TabStop = False
        Color = 10813439
        Ctl3D = False
        DataField = 'Codigo'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 81
        Top = 0
        Width = 655
        Height = 19
        TabStop = False
        Color = 10813439
        Ctl3D = False
        DataField = 'Descricao'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object GroupBox6: TGroupBox
        Left = 5
        Top = 474
        Width = 728
        Height = 70
        Caption = 
          ' CSOSN para notas fiscais de empresas do regime do Simples Nacio' +
          'nal '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object StaticText60: TStaticText
          Left = 5
          Top = 19
          Width = 50
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Entrada'
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
        object StaticText61: TStaticText
          Left = 5
          Top = 42
          Width = 50
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Sa'#237'da'
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
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 57
          Top = 19
          Width = 667
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'CSOSN_Entrada'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupSource = Dados.dsCSTTabelaB
          ParentFont = False
          TabOrder = 2
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 57
          Top = 43
          Width = 667
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'CSOSN_Saida'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupSource = Dados.dsCSTTabelaB
          ParentFont = False
          TabOrder = 3
        end
      end
      object StaticText62: TStaticText
        Left = 7
        Top = 119
        Width = 129
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Enquadram.Legal IPI'
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
      object cEnquadra: TRxDBLookupCombo
        Left = 138
        Top = 119
        Width = 596
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Enquadramento_IPI'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmFiscal.dsEnquadramentoIPI
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnChange = cEnquadraChange
        OnMouseUp = cEnquadraMouseUp
      end
      object StaticText95: TStaticText
        Left = 7
        Top = 142
        Width = 129
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Beneficio Fiscal'
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
      object DBEdit15: TDBEdit
        Left = 138
        Top = 142
        Width = 94
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Beneficio_Fiscal'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object GroupBox8: TGroupBox
        Left = 5
        Top = 547
        Width = 728
        Height = 70
        Caption = 'CFOP Padr'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        object StaticText69: TStaticText
          Left = 5
          Top = 19
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Dentro do Estado'
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
        object StaticText70: TStaticText
          Left = 5
          Top = 42
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fora do Estado'
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
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 96
          Top = 19
          Width = 628
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'CFOP_Dentro'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao_NF'
          LookupSource = dsCFOPDentro
          ParentFont = False
          TabOrder = 2
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 96
          Top = 42
          Width = 628
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'CFOP_Fora'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao_NF'
          LookupSource = dsCFOPFora
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox9: TGroupBox
        Left = 213
        Top = 281
        Width = 266
        Height = 190
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        object DBCheckBox58: TDBCheckBox
          Left = 4
          Top = 13
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'N'#227'o tributada para ICMS'
          DataField = 'Nao_Tributada_ICMS'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBCheckBox61: TDBCheckBox
          Left = 4
          Top = 30
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o de ICMS'
          DataField = 'Suspensao_ICMS'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBCheckBox63: TDBCheckBox
          Left = 4
          Top = 47
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Isen'#231#227'o de ICMS'
          DataField = 'Isencao_ICMS'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBCheckBox64: TDBCheckBox
          Left = 4
          Top = 98
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Calcular M'#233'dia BCR'
          DataField = 'Media_BCR'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBCheckBox65: TDBCheckBox
          Left = 4
          Top = 64
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Imune de ICMS'
          DataField = 'Imune_ICMS'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBCheckBox68: TDBCheckBox
          Left = 4
          Top = 81
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Diferimento de ICMS'
          DataField = 'Diferido_ICMS'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBCheckBox16: TDBCheckBox
          Left = 4
          Top = 115
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Trib.mono.pr'#243'pria (Combustiveis)'
          DataField = 'Monofasico_Comb'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBCheckBox31: TDBCheckBox
          Left = 4
          Top = 132
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Trib.mono.pr'#243'pria c/resp reten'#231#227'o ( Combust'#237'veis)'
          DataField = 'Monofasico_CombRetencao'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBCheckBox32: TDBCheckBox
          Left = 4
          Top = 149
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Trib.mono.Rec.Difer (combust'#237'veis)'
          DataField = 'Monofasico_CombDiferido'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBCheckBox34: TDBCheckBox
          Left = 4
          Top = 166
          Width = 258
          Height = 18
          Alignment = taLeftJustify
          Caption = 'Trib.mono.cobrada'#160'anteriormente((Combust'#237'veis)'
          DataField = 'Monofasico_CombAnterior'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
      end
      object GroupBox10: TGroupBox
        Left = 213
        Top = 187
        Width = 266
        Height = 93
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        object DBCheckBox60: TDBCheckBox
          Left = 4
          Top = 32
          Width = 258
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Imune de IPI'
          DataField = 'Imune_IPI'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBCheckBox62: TDBCheckBox
          Left = 4
          Top = 14
          Width = 258
          Height = 17
          Alignment = taLeftJustify
          Caption = 'N'#227'o tributada para IPI'
          DataField = 'Nao_Tributada_IPI'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBCheckBox67: TDBCheckBox
          Left = 4
          Top = 50
          Width = 258
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o de IPI'
          DataField = 'Suspensao_IPI'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBCheckBox73: TDBCheckBox
          Left = 4
          Top = 68
          Width = 258
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isen'#231#227'o de IPI'
          DataField = 'Isencao_IPI'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox12: TGroupBox
        Left = 3
        Top = 270
        Width = 204
        Height = 99
        Caption = 'Par'#226'metros Fiscais / CST CBS'
        TabOrder = 14
        object DBCheckBox41: TDBCheckBox
          Left = 5
          Top = 15
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isen'#231#227'o'
          DataField = 'CBS_Isencao'
          DataSource = Dados.dsTipoNota
          TabOrder = 0
        end
        object DBCheckBox54: TDBCheckBox
          Left = 5
          Top = 35
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o'
          DataField = 'CBS_Suspensao'
          DataSource = Dados.dsTipoNota
          TabOrder = 1
        end
        object DBCheckBox56: TDBCheckBox
          Left = 5
          Top = 55
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Imunidade'
          DataField = 'CBS_Imunidade'
          DataSource = Dados.dsTipoNota
          TabOrder = 2
        end
        object DBCheckBox57: TDBCheckBox
          Left = 5
          Top = 75
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Diferimento'
          DataField = 'CBS_Diferido'
          DataSource = Dados.dsTipoNota
          TabOrder = 3
        end
      end
      object GroupBox13: TGroupBox
        Left = 3
        Top = 372
        Width = 204
        Height = 99
        Caption = 'Par'#226'metros Fiscais / CST CBS'
        TabOrder = 15
        object DBCheckBox59: TDBCheckBox
          Left = 5
          Top = 15
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isen'#231#227'o'
          DataField = 'IBS_Isencao'
          DataSource = Dados.dsTipoNota
          TabOrder = 0
        end
        object DBCheckBox66: TDBCheckBox
          Left = 5
          Top = 35
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o'
          DataField = 'IBS_Suspensao'
          DataSource = Dados.dsTipoNota
          TabOrder = 1
        end
        object DBCheckBox69: TDBCheckBox
          Left = 5
          Top = 55
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Imunidade'
          DataField = 'IBS_Imunidade'
          DataSource = Dados.dsTipoNota
          TabOrder = 2
        end
        object DBCheckBox70: TDBCheckBox
          Left = 5
          Top = 75
          Width = 192
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Diferimento'
          DataField = 'IBS_Diferido'
          DataSource = Dados.dsTipoNota
          TabOrder = 3
        end
      end
      object StaticText77: TStaticText
        Left = 7
        Top = 165
        Width = 129
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classfica'#231#227'o Tributaria'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox31: TDBLookupComboBox
        Left = 138
        Top = 165
        Width = 596
        Height = 21
        DataField = 'Classificacao_Tributaria'
        DataSource = Dados.dsTipoNota
        DropDownRows = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsClassTribut
        NullValueKey = 16430
        ParentFont = False
        TabOrder = 17
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Inf Compl'
      Enabled = False
      ImageIndex = 3
      ExplicitHeight = 604
      object StaticText67: TStaticText
        Left = 1
        Top = 21
        Width = 99
        Height = 152
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Campos'
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
      object GradeCampos: TDBGrid
        Left = 102
        Top = 21
        Width = 635
        Height = 129
        DataSource = Dados.dsCampos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GradeCamposDblClick
        OnMouseDown = GradeCamposMouseDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 427
            Visible = True
          end>
      end
      object cComplemento: TDBRichEdit
        Left = 102
        Top = 175
        Width = 635
        Height = 248
        DataField = 'Inf_Complementares'
        DataSource = Dados.dsTipoNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Pitch = fpVariable
        Font.Style = []
        ScrollBars = ssVertical
        TabOrder = 2
        WordWrap = False
        Zoom = 100
        OnChange = cComplementoChange
        OnClick = cComplementoClick
        OnDragDrop = cComplementoDragDrop
        OnDragOver = cComplementoDragOver
        OnKeyUp = cComplementoKeyUp
      end
      object StaticText4: TStaticText
        Left = 1
        Top = 175
        Width = 99
        Height = 274
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Informa'#231#245'es Complementares'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        Transparent = False
        StyleElements = []
      end
      object DBEdit5: TDBEdit
        Left = 1
        Top = 0
        Width = 79
        Height = 19
        TabStop = False
        Color = 10813439
        Ctl3D = False
        DataField = 'Codigo'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 81
        Top = 0
        Width = 656
        Height = 19
        TabStop = False
        Color = 10813439
        Ctl3D = False
        DataField = 'Descricao'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 511
        Width = 734
        Height = 87
        Caption = 'Logomarca'
        TabOrder = 6
        object StaticText91: TStaticText
          Left = 6
          Top = 15
          Width = 72
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Logo'
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
        object cLogo: TFilenameEdit
          Left = 80
          Top = 15
          Width = 514
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 1
          Text = 'cLogo'
          OnExit = cLogoExit
        end
        object StaticText63: TStaticText
          Left = 6
          Top = 38
          Width = 72
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Mensagem 1'
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
        object cMsg1: TDBEdit
          Left = 80
          Top = 38
          Width = 514
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Obs_Msg1'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Panel2: TPanel
          Left = 596
          Top = 11
          Width = 111
          Height = 71
          BorderStyle = bsSingle
          ParentColor = True
          TabOrder = 4
          object iLogo: TImage
            Left = 2
            Top = 0
            Width = 105
            Height = 65
            Stretch = True
          end
        end
        object StaticText64: TStaticText
          Left = 6
          Top = 61
          Width = 72
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Mensagem 2'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Transparent = False
          StyleElements = []
        end
        object cMsg2: TDBEdit
          Left = 80
          Top = 61
          Width = 514
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Obs_Msg2'
          DataSource = Dados.dsTipoNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
      end
      object cPesqCampo: TEdit
        Left = 102
        Top = 152
        Width = 635
        Height = 21
        TabOrder = 7
        OnChange = cPesqCampoChange
      end
      object StaticText68: TStaticText
        Left = 1
        Top = 451
        Width = 99
        Height = 51
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Inf.Adicionais Fisco'
        Color = 7293440
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
      object cFisco: TDBRichEdit
        Left = 102
        Top = 451
        Width = 635
        Height = 51
        DataField = 'Inf_Complementares2'
        DataSource = Dados.dsTipoNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Pitch = fpVariable
        Font.Style = []
        ScrollBars = ssVertical
        TabOrder = 9
        WordWrap = False
        Zoom = 100
        OnChange = cComplementoChange
        OnDragDrop = cComplementoDragDrop
        OnDragOver = cComplementoDragOver
      end
      object cLinha: TEdit
        Left = 163
        Top = 425
        Width = 72
        Height = 24
        Alignment = taCenter
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText71: TStaticText
        Left = 102
        Top = 425
        Width = 59
        Height = 24
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'LINHA'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 11
        Transparent = False
        StyleElements = []
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'F'#243'rr&mulas'
      Enabled = False
      ImageIndex = 2
      ExplicitHeight = 604
      object pFormulas: TPageControl
        Left = 2
        Top = 22
        Width = 737
        Height = 579
        ActivePage = TabSheet6
        TabHeight = 28
        TabOrder = 1
        object TabSheet6: TTabSheet
          Caption = 'C'#225'lculos dos &Itens '
          object bUnitario: TButton
            Left = 1
            Top = 43
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS'
            Caption = 'Valor &Unit'#225'rio Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = bUnitarioClick
          end
          object Button1: TButton
            Left = 1
            Top = 76
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS'
            Caption = 'Bas&e C'#225'lculo II'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 34
            OnClick = Button1Click
          end
          object DBMemo1: TDBMemo
            Left = 120
            Top = 43
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_Mercadoria'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
          object DBMemo2: TDBMemo
            Left = 120
            Top = 142
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCICMS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 17
          end
          object DBMemo3: TDBMemo
            Left = 120
            Top = 175
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrICMS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 18
          end
          object bBCIPI: TButton
            Left = 1
            Top = 109
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS'
            Caption = 'Base C'#225'lculo I&PI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = bBCIPIClick
          end
          object DBMemo12: TDBMemo
            Left = 120
            Top = 109
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCIPI'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 19
          end
          object bBCICMS: TButton
            Left = 1
            Top = 142
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS'
            Caption = 'Base C'#225'lculo &ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = bBCICMSClick
          end
          object bVlICMS: TButton
            Left = 1
            Top = 175
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor do ICMS'
            Caption = 'Valor I&CMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = bVlICMSClick
          end
          object DBMemo13: TDBMemo
            Left = 120
            Top = 208
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCMVA'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 20
          end
          object bBCMVA: TButton
            Left = 1
            Top = 208
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS Substitui'#231#227'o'
            Caption = 'B.C.C'#225'lculo do M&VA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = bBCMVAClick
          end
          object DBMemo14: TDBMemo
            Left = 120
            Top = 241
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrMVA'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 21
          end
          object bValorMVA: TButton
            Left = 1
            Top = 241
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS Substitui'#231#227'o'
            Caption = 'Valor do &MVA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = bValorMVAClick
          end
          object DBMemo4: TDBMemo
            Left = 120
            Top = 274
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BcICMSSub'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 22
          end
          object DBMemo5: TDBMemo
            Left = 120
            Top = 307
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrICMSSub'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 23
          end
          object DBMemo9: TDBMemo
            Left = 120
            Top = 439
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_OutrasDespesas'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 24
          end
          object DBMemo6: TDBMemo
            Left = 120
            Top = 340
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_ReducaoICMS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 25
          end
          object DBMemo7: TDBMemo
            Left = 120
            Top = 472
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_MercadoriaImp'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 26
          end
          object DBMemo10: TDBMemo
            Left = 120
            Top = 406
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrSeguro'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 27
          end
          object bBCISMCSub: TButton
            Left = 1
            Top = 274
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS Substitui'#231#227'o'
            Caption = 'BC.ICMS S&T'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnClick = bBCISMCSubClick
          end
          object bVlICMSSub: TButton
            Left = 1
            Top = 307
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor do ICMS Substitui'#231#227'o'
            Caption = 'Val&or ICMS ST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = bVlICMSSubClick
          end
          object bReducaoICMS: TButton
            Left = 1
            Top = 340
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor do ICMS Substitui'#231#227'o'
            Caption = 'Valor &Red.ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            OnClick = bReducaoICMSClick
          end
          object bTotalSeguro: TButton
            Left = 1
            Top = 406
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor total do seguro'
            Caption = 'Valor total &Seguro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnClick = bTotalSeguroClick
          end
          object bDespesas: TButton
            Left = 1
            Top = 439
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor de Outras Despesas Acess'#243'rias'
            Caption = 'Outras &Desp.Acess'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnClick = bDespesasClick
          end
          object bProdutoImpostos: TButton
            Left = 1
            Top = 472
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'Valor Item c/I&mp'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            OnClick = bProdutoImpostosClick
          end
          object DBMemo22: TDBMemo
            Left = 363
            Top = 43
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCPIS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 30
          end
          object bBCPIS: TButton
            Left = 243
            Top = 43
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor de Outras Despesas Acess'#243'rias'
            Caption = '&BC.PIS/COFINS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnClick = bBCPISClick
          end
          object DBMemo20: TDBMemo
            Left = 363
            Top = 76
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_PIS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 28
          end
          object DBMemo21: TDBMemo
            Left = 363
            Top = 109
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_COFINS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 29
          end
          object bValorPIS: TButton
            Left = 243
            Top = 76
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor de Outras Despesas Acess'#243'rias'
            Caption = 'Va&lor PIS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            OnClick = bValorPISClick
          end
          object bValorCOFINS: TButton
            Left = 243
            Top = 109
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'Valor COFI&NS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            OnClick = bValorCOFINSClick
          end
          object DBMemo23: TDBMemo
            Left = 363
            Top = 241
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_Inventario'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 31
          end
          object bInventario: TButton
            Left = 243
            Top = 241
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'Valor Invent&ario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            OnClick = bInventarioClick
          end
          object GroupBox7: TGroupBox
            Left = 2
            Top = 1
            Width = 449
            Height = 38
            Caption = 'Composi'#231#227'o do Fator do Valor do Produto'
            TabOrder = 32
            object DBCheckBox39: TDBCheckBox
              Left = 374
              Top = 16
              Width = 61
              Height = 17
              Caption = '% Lucro'
              DataField = 'Fator_Lucro'
              DataSource = Dados.dsTipoNota
              TabOrder = 0
            end
            object DBCheckBox42: TDBCheckBox
              Left = 302
              Top = 16
              Width = 60
              Height = 17
              Caption = '% CSLL'
              DataField = 'Fator_CSLL'
              DataSource = Dados.dsTipoNota
              TabOrder = 1
            end
            object DBCheckBox43: TDBCheckBox
              Left = 230
              Top = 16
              Width = 57
              Height = 17
              Caption = '% IRPJ'
              DataField = 'Fator_IRPJ'
              DataSource = Dados.dsTipoNota
              TabOrder = 2
            end
            object DBCheckBox44: TDBCheckBox
              Left = 144
              Top = 16
              Width = 73
              Height = 17
              Caption = '% COFINS'
              DataField = 'Fator_COFINS'
              DataSource = Dados.dsTipoNota
              TabOrder = 3
            end
            object DBCheckBox45: TDBCheckBox
              Left = 80
              Top = 16
              Width = 51
              Height = 17
              Caption = '% PIS'
              DataField = 'Fator_PIS'
              DataSource = Dados.dsTipoNota
              TabOrder = 4
            end
            object DBCheckBox47: TDBCheckBox
              Left = 8
              Top = 16
              Width = 60
              Height = 17
              Caption = '% ICMS'
              DataField = 'Fator_ICMS'
              DataSource = Dados.dsTipoNota
              TabOrder = 5
            end
          end
          object DBCheckBox46: TDBCheckBox
            Left = 470
            Top = 13
            Width = 139
            Height = 17
            Caption = 'Arredondar valor unitario'
            DataField = 'Arredondar_Unitario'
            DataSource = Dados.dsTipoNota
            TabOrder = 33
          end
          object DBMemo24: TDBMemo
            Left = 120
            Top = 76
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCII'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 35
          end
          object DBMemo8: TDBMemo
            Left = 120
            Top = 373
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrFrete'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 36
          end
          object bTotalFrete: TButton
            Left = 1
            Top = 373
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor total do frete'
            Caption = 'Valor total &Frete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 37
            OnClick = bTotalFreteClick
          end
          object DBMemo25: TDBMemo
            Left = 363
            Top = 307
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_DIFAL'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 38
          end
          object bDIFAL: TButton
            Left = 243
            Top = 307
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'Valor DI&FAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 39
            OnClick = bDIFALClick
          end
          object DBMemo26: TDBMemo
            Left = 363
            Top = 274
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCDIFAL'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 40
          end
          object Button7: TButton
            Left = 243
            Top = 274
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'BC. DIFA&L'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 41
            OnClick = Button7Click
          end
          object bICMSDeson: TButton
            Left = 243
            Top = 406
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'ICMS Desonerado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 42
            OnClick = bICMSDesonClick
          end
          object DBMemo27: TDBMemo
            Left = 363
            Top = 406
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrICMSDeson'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 43
          end
          object Button8: TButton
            Left = 243
            Top = 472
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'ICMS Monof'#225'sico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 44
            OnClick = Button8Click
          end
          object DBMemo28: TDBMemo
            Left = 363
            Top = 472
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_ICMSMono'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 45
          end
          object Button9: TButton
            Left = 485
            Top = 43
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'ICMS Mono Ret'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 46
            OnClick = Button9Click
          end
          object DBMemo29: TDBMemo
            Left = 605
            Top = 43
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_ICMSMonoRet'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 47
          end
          object Button10: TButton
            Left = 243
            Top = 439
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'BC ICMS Monof'#225'sico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 48
            OnClick = Button10Click
          end
          object DBMemo30: TDBMemo
            Left = 363
            Top = 439
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCICMSMono'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 49
          end
          object Button11: TButton
            Left = 243
            Top = 505
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'BC ICMS Mono Ret'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 50
            OnClick = Button11Click
          end
          object DBMemo31: TDBMemo
            Left = 363
            Top = 505
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCICMSMonoRet'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 51
          end
          object DBMemo32: TDBMemo
            Left = 362
            Top = 175
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_PISST'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 52
          end
          object bValorPISST: TButton
            Left = 243
            Top = 175
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor de Outras Despesas Acess'#243'rias'
            Caption = 'Valor PIS ST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 53
            OnClick = bValorPISSTClick
          end
          object DBMemo33: TDBMemo
            Left = 362
            Top = 208
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_COFINSST'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 54
          end
          object bValorCOFINSST: TButton
            Left = 243
            Top = 208
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'Valor COFINS S&T'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 55
            OnClick = bValorCOFINSSTClick
          end
          object Button12: TButton
            Left = 485
            Top = 109
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'Valor ICMS Cr'#233'd Pres'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 56
            OnClick = Button12Click
          end
          object DBMemo34: TDBMemo
            Left = 604
            Top = 109
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_ICMSPresumido'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 57
          end
          object Button13: TButton
            Left = 485
            Top = 76
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'BC ICMS Cr'#233'd Pres'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 58
            OnClick = Button13Click
          end
          object DBMemo35: TDBMemo
            Left = 604
            Top = 76
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCICMSPresumido'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 59
          end
          object DBMemo36: TDBMemo
            Left = 363
            Top = 373
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_DIFALST'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 60
          end
          object Button14: TButton
            Left = 243
            Top = 373
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'Valor DIFAL ST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 61
            OnClick = Button14Click
          end
          object DBMemo37: TDBMemo
            Left = 363
            Top = 340
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCDIFALST'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 62
          end
          object Button15: TButton
            Left = 243
            Top = 340
            Width = 118
            Height = 31
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'BC. DIFAl ST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 63
            OnClick = Button15Click
          end
          object DBMemo38: TDBMemo
            Left = 364
            Top = 142
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCPISST'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 64
          end
          object Button16: TButton
            Left = 244
            Top = 142
            Width = 118
            Height = 31
            Hint = 'Definir a f'#243'rmula para o Valor de Outras Despesas Acess'#243'rias'
            Caption = '&BC.PIS/COFINS ST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 65
            OnClick = Button16Click
          end
          object Button17: TButton
            Left = 485
            Top = 208
            Width = 118
            Height = 31
            Hint = 'Valor da base de c'#225'lculo do CBS'
            Caption = 'BC C'#225'lculo CBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 66
            OnClick = Button17Click
          end
          object DBMemo39: TDBMemo
            Left = 605
            Top = 208
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCCBS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 67
          end
          object Button18: TButton
            Left = 485
            Top = 274
            Width = 118
            Height = 31
            Hint = 'Valor Base de c'#225'lculo do IS'
            Caption = 'BC IS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 68
            OnClick = Button18Click
          end
          object DBMemo40: TDBMemo
            Left = 605
            Top = 274
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCIS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 69
          end
          object Button19: TButton
            Left = 485
            Top = 241
            Width = 118
            Height = 31
            Hint = 'Valor do CBS'
            Caption = 'Valor do CBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 70
            OnClick = Button19Click
          end
          object DBMemo41: TDBMemo
            Left = 605
            Top = 241
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrCBS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 71
          end
          object Button20: TButton
            Left = 485
            Top = 307
            Width = 118
            Height = 31
            Hint = 'Valor do IS'
            Caption = 'Valor IS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 72
            OnClick = Button20Click
          end
          object DBMemo42: TDBMemo
            Left = 605
            Top = 307
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrIS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 73
          end
          object DBMemo43: TDBMemo
            Left = 605
            Top = 175
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_VlrIBS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 74
          end
          object Button21: TButton
            Left = 485
            Top = 175
            Width = 118
            Height = 31
            Hint = 'Valor do IBS'
            Caption = 'Valor IBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 75
            OnClick = Button21Click
          end
          object DBMemo44: TDBMemo
            Left = 605
            Top = 142
            Width = 120
            Height = 31
            TabStop = False
            Color = 13565951
            Ctl3D = True
            DataField = 'Formula_BCIBS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 76
          end
          object Button22: TButton
            Left = 485
            Top = 142
            Width = 118
            Height = 31
            Hint = 'Valor da Base de C'#225'lculo do IBS'
            Caption = 'BC. IBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 77
            OnClick = Button22Click
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'C'#225'lculos dos &Totais'
          ImageIndex = 1
          object DBMemo19: TDBMemo
            Left = 122
            Top = 1
            Width = 601
            Height = 40
            TabStop = False
            Color = 13565951
            DataField = 'Formula_TotalProdutos'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object Button6: TButton
            Left = 1
            Top = 1
            Width = 120
            Height = 40
            Hint = 
              'Valor Unit'#225'rio do Produto com impostos que s'#227'o calculados sobre ' +
              'o valor do produto.'
            Caption = 'V&alor Total Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = Button6Click
          end
          object Button2: TButton
            Left = 1
            Top = 43
            Width = 120
            Height = 40
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS'
            Caption = 'BC.&ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = Button2Click
          end
          object DBMemo15: TDBMemo
            Left = 122
            Top = 43
            Width = 601
            Height = 40
            TabStop = False
            Color = 13565951
            DataField = 'Formula_TotalBCICMS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object Button3: TButton
            Left = 1
            Top = 85
            Width = 120
            Height = 40
            Hint = 'Definir a f'#243'rmula para o Valor do ICMS'
            Caption = 'Valor I&CMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = Button3Click
          end
          object DBMemo16: TDBMemo
            Left = 122
            Top = 85
            Width = 601
            Height = 40
            TabStop = False
            Color = 13565951
            DataField = 'Formula_TotalVLICMS'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object Button4: TButton
            Left = 1
            Top = 127
            Width = 120
            Height = 40
            Hint = 'Definir a f'#243'rmula para a Base de C'#225'lculo do ICMS Substitui'#231#227'o'
            Caption = '&BC.ICMS ST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = Button4Click
          end
          object DBMemo17: TDBMemo
            Left = 122
            Top = 127
            Width = 601
            Height = 40
            TabStop = False
            Color = 13565951
            DataField = 'Formula_TotalBCICMSSub'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object Button5: TButton
            Left = 1
            Top = 169
            Width = 120
            Height = 40
            Hint = 'Definir a f'#243'rmula para o Valor do ICMS Substitui'#231#227'o'
            Caption = 'Val&or ICMS ST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = Button5Click
          end
          object DBMemo18: TDBMemo
            Left = 122
            Top = 169
            Width = 601
            Height = 40
            TabStop = False
            Color = 13565951
            DataField = 'Formula_TotalVLICMSSub'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object bTotalNota: TButton
            Left = 1
            Top = 211
            Width = 120
            Height = 40
            Hint = 'Definir a f'#243'rmula para o Valor do Total da Nota Fiscal'
            Caption = 'Total da &Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnClick = bTotalNotaClick
          end
          object DBMemo11: TDBMemo
            Left = 122
            Top = 211
            Width = 601
            Height = 40
            TabStop = False
            Color = 13565951
            DataField = 'Formula_TotalPedido'
            DataSource = Dados.dsTipoNota
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
        end
      end
      object DBCheckBox12: TDBCheckBox
        Left = 491
        Top = 20
        Width = 217
        Height = 27
        Alignment = taLeftJustify
        BiDiMode = bdLeftToRight
        Caption = 'Remover Valora'#231#227'o do Valor do Produto'
        DataField = 'Valoracao_Produto'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 1
        Top = 0
        Width = 79
        Height = 19
        TabStop = False
        Color = 10813439
        Ctl3D = False
        DataField = 'Codigo'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 81
        Top = 0
        Width = 634
        Height = 19
        TabStop = False
        Color = 10813439
        Ctl3D = False
        DataField = 'Descricao'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Fi&nanceiro'
      ImageIndex = 6
      ExplicitHeight = 604
      object GroupBox5: TGroupBox
        Left = 3
        Top = 3
        Width = 735
        Height = 112
        Caption = ' Lan'#231'amento Financeiro (Recebimento) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          735
          112)
        object StaticText30: TStaticText
          Left = 7
          Top = 15
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classifica'#231#227'o Financeira Pagar/Receber'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Transparent = False
          StyleElements = []
          OnClick = StaticText30Click
        end
        object cClassificacaoRec: TDBLookupComboBox
          Left = 210
          Top = 15
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Classificacao_Saida'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          NullValueKey = 46
          ParentFont = False
          TabOrder = 0
        end
        object StaticText3: TStaticText
          Left = 7
          Top = 61
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Documento'
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
          OnClick = StaticText3Click
        end
        object cTipoDoc: TDBLookupComboBox
          Left = 210
          Top = 61
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Tipo_Documento'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsTiposDocumentos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object StaticText56: TStaticText
          Left = 7
          Top = 38
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Centro de Custo'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Transparent = False
          StyleElements = []
          OnClick = StaticText30Click
        end
        object DBLookupComboBox20: TDBLookupComboBox
          Left = 210
          Top = 38
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Centro_Custo'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCentroCusto
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object StaticText17: TStaticText
          Left = 7
          Top = 84
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade de Pagamento'
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
          OnClick = StaticText17Click
        end
        object DBLookupComboBox25: TDBLookupComboBox
          Left = 210
          Top = 84
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Modalidade_Pagamento'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsModalidadesPgto
          NullValueKey = 46
          ParentFont = False
          TabOrder = 7
        end
      end
      object GroupBox11: TGroupBox
        Left = 4
        Top = 121
        Width = 735
        Height = 137
        Caption = ' Lan'#231'amento Financeiro (Pagamento ICMS Monof'#225'sico)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          735
          137)
        object StaticText72: TStaticText
          Left = 7
          Top = 15
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classifica'#231#227'o Financeira Pagar/Receber'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Transparent = False
          StyleElements = []
          OnClick = StaticText30Click
        end
        object DBLookupComboBox23: TDBLookupComboBox
          Left = 210
          Top = 15
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Classificacao_ICMSMono'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          NullValueKey = 46
          ParentFont = False
          TabOrder = 0
        end
        object StaticText73: TStaticText
          Left = 7
          Top = 61
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Documento'
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
          OnClick = StaticText3Click
        end
        object DBLookupComboBox27: TDBLookupComboBox
          Left = 210
          Top = 61
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Tipo_DocumentoICMSMono'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsTiposDocumentos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object StaticText74: TStaticText
          Left = 7
          Top = 38
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Centro de Custo'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Transparent = False
          StyleElements = []
          OnClick = StaticText30Click
        end
        object DBLookupComboBox28: TDBLookupComboBox
          Left = 210
          Top = 38
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Centro_CustoICMSMono'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCentroCusto
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object StaticText75: TStaticText
          Left = 7
          Top = 84
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade de Pagamento'
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
          OnClick = StaticText17Click
        end
        object DBLookupComboBox29: TDBLookupComboBox
          Left = 210
          Top = 84
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Modalidade_PagamentoICMSMono'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsModalidadesPgto
          NullValueKey = 46
          ParentFont = False
          TabOrder = 7
        end
        object StaticText76: TStaticText
          Left = 7
          Top = 107
          Width = 201
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Benefici'#225'rio'
          Color = 7293440
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
          OnClick = StaticText17Click
        end
        object DBLookupComboBox30: TDBLookupComboBox
          Left = 210
          Top = 107
          Width = 519
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Beneficiario_ICMSMono'
          DataSource = Dados.dsTipoNota
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsOrgaos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 9
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Cont'#225'bil'
      Enabled = False
      ImageIndex = 3
      ExplicitHeight = 604
      object SpeedButton2: TSpeedButton
        Left = 393
        Top = 525
        Width = 23
        Height = 23
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000FFFF0404040004040400040404003333
          CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404003333
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          040004040400040404000000FFFF040404000404040004040400040404000404
          04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
          0400040404000000FFFF04040400040404000404040004040400040404000404
          0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
          04000000FFFF000099FF04040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          FFFF000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
          0400040404000404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          CCFF000099FF0404040004040400040404000404040004040400040404000404
          04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
          04000000CCFF000099FF04040400040404000404040004040400040404000000
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          0400040404000000CCFF000099FF040404000404040004040400040404006666
          99FF0000CCFF666699FF04040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400}
        OnClick = SpeedButton2Click
      end
      object SpeedButton1: TSpeedButton
        Left = 393
        Top = 548
        Width = 23
        Height = 23
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000FFFF0404040004040400040404003333
          CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404003333
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          040004040400040404000000FFFF040404000404040004040400040404000404
          04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
          0400040404000000FFFF04040400040404000404040004040400040404000404
          0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
          04000000FFFF000099FF04040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          FFFF000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
          0400040404000404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          CCFF000099FF0404040004040400040404000404040004040400040404000404
          04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
          04000000CCFF000099FF04040400040404000404040004040400040404000000
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          0400040404000000CCFF000099FF040404000404040004040400040404006666
          99FF0000CCFF666699FF04040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400}
        OnClick = SpeedButton1Click
      end
      object DBEdit9: TDBEdit
        Left = 1
        Top = 4
        Width = 79
        Height = 19
        TabStop = False
        Color = 10813439
        Ctl3D = False
        DataField = 'Codigo'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 81
        Top = 4
        Width = 632
        Height = 19
        TabStop = False
        Color = 10813439
        Ctl3D = False
        DataField = 'Descricao'
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 42
        Width = 736
        Height = 447
        ActivePage = TabSheet9
        TabHeight = 28
        TabOrder = 2
        object TabSheet9: TTabSheet
          Caption = '&Lancamentos dos Impostos'
          object cII_NomeC: TDBLookupComboBox
            Left = 161
            Top = 383
            Width = 233
            Height = 21
            DataField = 'Conta_II_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 45
          end
          object cCOFINS_NomeC: TDBLookupComboBox
            Left = 161
            Top = 338
            Width = 233
            Height = 21
            Color = 11468799
            DataField = 'Conta_COFINS_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 39
          end
          object cPIS_NomeC: TDBLookupComboBox
            Left = 161
            Top = 293
            Width = 233
            Height = 21
            Color = clWhite
            DataField = 'Conta_PIS_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 34
          end
          object cDespesas_NomeC: TDBLookupComboBox
            Left = 161
            Top = 248
            Width = 233
            Height = 21
            Color = 11468799
            DataField = 'Conta_Despesas_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 29
          end
          object cFrete_NomeC: TDBLookupComboBox
            Left = 161
            Top = 203
            Width = 233
            Height = 21
            DataField = 'Conta_Frete_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 24
          end
          object cSeguro_NomeC: TDBLookupComboBox
            Left = 161
            Top = 158
            Width = 233
            Height = 21
            Color = 11468799
            DataField = 'Conta_Seguro_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 19
          end
          object cIPI_NomeC: TDBLookupComboBox
            Left = 161
            Top = 113
            Width = 233
            Height = 21
            DataField = 'Conta_IPI_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 14
          end
          object cICMSSub_NomeC: TDBLookupComboBox
            Left = 161
            Top = 68
            Width = 233
            Height = 21
            Color = 11468799
            DataField = 'Conta_ICMSSub_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 9
          end
          object cICMSOper_NomeC: TDBLookupComboBox
            Left = 161
            Top = 23
            Width = 233
            Height = 21
            Color = clWhite
            DataField = 'Conta_ICMSOper_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 4
          end
          object StaticText2: TStaticText
            Left = 1
            Top = 1
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'ICMS Oper.'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 44
            Transparent = False
            StyleElements = []
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 161
            Top = 1
            Width = 233
            Height = 21
            Color = clWhite
            DataField = 'Conta_ICMSOper_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 1
          end
          object cICMSOper_CodD: TDBEdit
            Left = 78
            Top = 1
            Width = 82
            Height = 21
            Color = clWhite
            DataField = 'Conta_ICMSOper_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 0
          end
          object StaticText6: TStaticText
            Left = 1
            Top = 46
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'ICMS Subs.'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 46
            Transparent = False
            StyleElements = []
          end
          object StaticText10: TStaticText
            Left = 1
            Top = 91
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'IPI'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 47
            Transparent = False
            StyleElements = []
          end
          object StaticText11: TStaticText
            Left = 1
            Top = 136
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Seguro'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 48
            Transparent = False
            StyleElements = []
          end
          object StaticText12: TStaticText
            Left = 1
            Top = 181
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Frete'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 49
            Transparent = False
            StyleElements = []
          end
          object StaticText13: TStaticText
            Left = 1
            Top = 226
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Despesas'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 50
            Transparent = False
            StyleElements = []
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 445
            Top = 1
            Width = 261
            Height = 21
            DataField = 'Historico_ICMSOper'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 2
          end
          object cICMSSub_CodD: TDBEdit
            Left = 78
            Top = 46
            Width = 82
            Height = 21
            Color = 11468799
            DataField = 'Conta_ICMSSub_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 5
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 445
            Top = 46
            Width = 261
            Height = 21
            Color = 11468799
            DataField = 'Historico_ICMSSub'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 7
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 161
            Top = 91
            Width = 233
            Height = 21
            DataField = 'Conta_IPI_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 11
          end
          object cIPI_CodD: TDBEdit
            Left = 78
            Top = 91
            Width = 82
            Height = 21
            DataField = 'Conta_IPI_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 10
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 445
            Top = 90
            Width = 261
            Height = 21
            DataField = 'Historico_IPI'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 12
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 161
            Top = 136
            Width = 233
            Height = 21
            Color = 11468799
            DataField = 'Conta_Seguro_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 16
          end
          object cSeguro_CodD: TDBEdit
            Left = 78
            Top = 136
            Width = 82
            Height = 21
            Color = 11468799
            DataField = 'Conta_Seguro_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 15
          end
          object DBLookupComboBox8: TDBLookupComboBox
            Left = 445
            Top = 135
            Width = 261
            Height = 21
            Color = 11468799
            DataField = 'Historico_Seguro'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 17
          end
          object DBLookupComboBox9: TDBLookupComboBox
            Left = 161
            Top = 181
            Width = 233
            Height = 21
            DataField = 'Conta_Frete_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 21
          end
          object cFrete_CodD: TDBEdit
            Left = 78
            Top = 181
            Width = 82
            Height = 21
            DataField = 'Conta_Frete_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 20
          end
          object DBLookupComboBox10: TDBLookupComboBox
            Left = 445
            Top = 182
            Width = 261
            Height = 21
            DataField = 'Historico_Frete'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 22
          end
          object DBLookupComboBox11: TDBLookupComboBox
            Left = 161
            Top = 226
            Width = 233
            Height = 21
            Color = 11468799
            DataField = 'Conta_Despesas_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 26
          end
          object DBEdit18: TDBEdit
            Left = 78
            Top = 226
            Width = 82
            Height = 21
            Color = 11468799
            DataField = 'Conta_Despesas_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 25
          end
          object DBLookupComboBox12: TDBLookupComboBox
            Left = 445
            Top = 226
            Width = 261
            Height = 21
            Color = 11468799
            DataField = 'Historico_Despesas'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 27
          end
          object lPIS: TStaticText
            Left = 1
            Top = 271
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'PIS Importa'#231#227'o'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 51
            Transparent = False
            StyleElements = []
          end
          object DBLookupComboBox13: TDBLookupComboBox
            Left = 161
            Top = 271
            Width = 233
            Height = 21
            DataField = 'Conta_PIS_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 31
          end
          object DBEdit3: TDBEdit
            Left = 78
            Top = 271
            Width = 82
            Height = 21
            DataField = 'Conta_PIS_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 30
          end
          object DBLookupComboBox14: TDBLookupComboBox
            Left = 445
            Top = 272
            Width = 261
            Height = 21
            DataField = 'Historico_PIS'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 32
          end
          object lCOFINS: TStaticText
            Left = 1
            Top = 316
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'COFINS Importa'#231#227'o'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 52
            Transparent = False
            StyleElements = []
          end
          object DBLookupComboBox15: TDBLookupComboBox
            Left = 161
            Top = 316
            Width = 233
            Height = 21
            Color = 11468799
            DataField = 'Conta_COFINS_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 36
          end
          object DBEdit23: TDBEdit
            Left = 78
            Top = 316
            Width = 82
            Height = 21
            Color = 11468799
            DataField = 'Conta_COFINS_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 35
          end
          object DBLookupComboBox16: TDBLookupComboBox
            Left = 445
            Top = 315
            Width = 261
            Height = 21
            Color = 11468799
            DataField = 'Historico_COFINS'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 37
          end
          object StaticText19: TStaticText
            Left = 1
            Top = 361
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'II'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 53
            Transparent = False
            StyleElements = []
          end
          object DBEdit25: TDBEdit
            Left = 78
            Top = 361
            Width = 82
            Height = 21
            DataField = 'Conta_II_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 40
          end
          object DBLookupComboBox18: TDBLookupComboBox
            Left = 445
            Top = 361
            Width = 261
            Height = 21
            DataField = 'Historico_II'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 42
          end
          object cICMSOper_CodC: TDBEdit
            Left = 78
            Top = 23
            Width = 82
            Height = 21
            Color = clWhite
            DataField = 'Conta_ICMSOper_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 3
          end
          object cIPI_CodC: TDBEdit
            Left = 78
            Top = 113
            Width = 82
            Height = 21
            DataField = 'Conta_IPI_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 13
          end
          object cSeguro_CodC: TDBEdit
            Left = 78
            Top = 158
            Width = 82
            Height = 21
            Color = 11468799
            DataField = 'Conta_Seguro_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 18
          end
          object cFrete_CodC: TDBEdit
            Left = 78
            Top = 203
            Width = 82
            Height = 21
            DataField = 'Conta_Frete_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 23
          end
          object cDespesas_CodC: TDBEdit
            Left = 78
            Top = 248
            Width = 82
            Height = 21
            Color = 11468799
            DataField = 'Conta_Despesas_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 28
          end
          object cPIS_CodC: TDBEdit
            Left = 78
            Top = 293
            Width = 82
            Height = 21
            DataField = 'Conta_PIS_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 33
          end
          object cCOFINS_CodC: TDBEdit
            Left = 78
            Top = 338
            Width = 82
            Height = 21
            Color = 11468799
            DataField = 'Conta_COFINS_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 38
          end
          object cII_CodC: TDBEdit
            Left = 78
            Top = 383
            Width = 82
            Height = 21
            DataField = 'Conta_II_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 43
          end
          object StaticText7: TStaticText
            Left = 395
            Top = 1
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 54
            Transparent = False
            StyleElements = []
          end
          object StaticText8: TStaticText
            Left = 395
            Top = 46
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 55
            Transparent = False
            StyleElements = []
          end
          object StaticText16: TStaticText
            Left = 395
            Top = 91
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 56
            Transparent = False
            StyleElements = []
          end
          object StaticText20: TStaticText
            Left = 395
            Top = 136
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 57
            Transparent = False
            StyleElements = []
          end
          object StaticText21: TStaticText
            Left = 395
            Top = 182
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 58
            Transparent = False
            StyleElements = []
          end
          object StaticText22: TStaticText
            Left = 395
            Top = 227
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 59
            Transparent = False
            StyleElements = []
          end
          object StaticText23: TStaticText
            Left = 395
            Top = 272
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 60
            Transparent = False
            StyleElements = []
          end
          object StaticText24: TStaticText
            Left = 395
            Top = 316
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 61
            Transparent = False
            StyleElements = []
          end
          object StaticText25: TStaticText
            Left = 395
            Top = 361
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 62
            Transparent = False
            StyleElements = []
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 161
            Top = 46
            Width = 233
            Height = 21
            Color = 11468799
            DataField = 'Conta_ICMSSub_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 6
          end
          object DBLookupComboBox17: TDBLookupComboBox
            Left = 161
            Top = 361
            Width = 233
            Height = 21
            DataField = 'Conta_II_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 41
          end
          object cICMSSub_CodC: TDBEdit
            Left = 78
            Top = 68
            Width = 82
            Height = 21
            Color = 11468799
            DataField = 'Conta_ICMSSub_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 8
          end
          object StaticText29: TStaticText
            Left = 62
            Top = 1
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 63
            Transparent = False
            StyleElements = []
          end
          object StaticText31: TStaticText
            Left = 62
            Top = 23
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 64
            Transparent = False
            StyleElements = []
          end
          object StaticText32: TStaticText
            Left = 62
            Top = 46
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 65
            Transparent = False
            StyleElements = []
          end
          object StaticText33: TStaticText
            Left = 62
            Top = 68
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 66
            Transparent = False
            StyleElements = []
          end
          object StaticText9: TStaticText
            Left = 62
            Top = 91
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 67
            Transparent = False
            StyleElements = []
          end
          object StaticText14: TStaticText
            Left = 62
            Top = 113
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 68
            Transparent = False
            StyleElements = []
          end
          object StaticText15: TStaticText
            Left = 62
            Top = 136
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 69
            Transparent = False
            StyleElements = []
          end
          object StaticText34: TStaticText
            Left = 62
            Top = 158
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 70
            Transparent = False
            StyleElements = []
          end
          object StaticText35: TStaticText
            Left = 62
            Top = 181
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 71
            Transparent = False
            StyleElements = []
          end
          object StaticText36: TStaticText
            Left = 62
            Top = 203
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 72
            Transparent = False
            StyleElements = []
          end
          object StaticText37: TStaticText
            Left = 62
            Top = 226
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 73
            Transparent = False
            StyleElements = []
          end
          object StaticText38: TStaticText
            Left = 62
            Top = 248
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 74
            Transparent = False
            StyleElements = []
          end
          object StaticText39: TStaticText
            Left = 62
            Top = 271
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 75
            Transparent = False
            StyleElements = []
          end
          object StaticText40: TStaticText
            Left = 62
            Top = 293
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 76
            Transparent = False
            StyleElements = []
          end
          object StaticText41: TStaticText
            Left = 62
            Top = 316
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 77
            Transparent = False
            StyleElements = []
          end
          object StaticText42: TStaticText
            Left = 62
            Top = 338
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 78
            Transparent = False
            StyleElements = []
          end
          object StaticText28: TStaticText
            Left = 62
            Top = 361
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 79
            Transparent = False
            StyleElements = []
          end
          object StaticText43: TStaticText
            Left = 62
            Top = 383
            Width = 15
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 80
            Transparent = False
            StyleElements = []
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Lan'#231'amentos dos Totais'
          ImageIndex = 1
          object lFOBFornecedor: TStaticText
            Left = 1
            Top = 2
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Total FOB Fornecedor'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 25
            Transparent = False
            StyleElements = []
          end
          object cHistoricoNF1: TDBLookupComboBox
            Left = 445
            Top = 136
            Width = 261
            Height = 21
            Color = 11468799
            DataField = 'Historico_TotalNota'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 17
          end
          object cFOB2D: TDBLookupComboBox
            Left = 154
            Top = 2
            Width = 240
            Height = 21
            Color = clWhite
            DataField = 'Conta_FOB_Fornecedor_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 1
          end
          object cFOB1D: TDBEdit
            Left = 78
            Top = 2
            Width = 74
            Height = 21
            Color = clWhite
            DataField = 'Conta_FOB_Fornecedor_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 0
          end
          object lHistoricoNF1: TStaticText
            Left = 395
            Top = 137
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 26
            Transparent = False
            StyleElements = []
          end
          object lTotalNota: TStaticText
            Left = 1
            Top = 137
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Total Nota'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 27
            Transparent = False
            StyleElements = []
          end
          object cTotalNota4: TDBLookupComboBox
            Left = 154
            Top = 159
            Width = 240
            Height = 21
            Color = 11468799
            DataField = 'Conta_TotalNota_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 19
          end
          object cTotalNotaC: TDBEdit
            Left = 78
            Top = 159
            Width = 74
            Height = 21
            Color = 11468799
            DataField = 'Conta_TotalNota_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 18
          end
          object StaticText44: TStaticText
            Left = 62
            Top = 137
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 28
            Transparent = False
            StyleElements = []
          end
          object StaticText45: TStaticText
            Left = 62
            Top = 205
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 29
            Transparent = False
            StyleElements = []
          end
          object StaticText47: TStaticText
            Left = 62
            Top = 2
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 30
            Transparent = False
            StyleElements = []
          end
          object StaticText48: TStaticText
            Left = 62
            Top = 24
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 31
            Transparent = False
            StyleElements = []
          end
          object cHistoricoFOB1: TDBLookupComboBox
            Left = 445
            Top = 2
            Width = 261
            Height = 21
            Color = clWhite
            DataField = 'Historico_FOB_Fornecedor'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 2
          end
          object StaticText50: TStaticText
            Left = 395
            Top = 2
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 32
            Transparent = False
            StyleElements = []
          end
          object lFOBProcesso: TStaticText
            Left = 1
            Top = 47
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Total FOB Processo'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 33
            Transparent = False
            StyleElements = []
          end
          object cFOB4: TDBLookupComboBox
            Left = 154
            Top = 47
            Width = 240
            Height = 21
            Color = 11468799
            DataField = 'Conta_FOB_Processo_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 6
          end
          object cTotalFOBD: TDBEdit
            Left = 78
            Top = 47
            Width = 74
            Height = 21
            Color = 11468799
            DataField = 'Conta_FOB_Processo_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 5
          end
          object StaticText52: TStaticText
            Left = 62
            Top = 47
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 34
            Transparent = False
            StyleElements = []
          end
          object StaticText53: TStaticText
            Left = 62
            Top = 69
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 35
            Transparent = False
            StyleElements = []
          end
          object cHistoricoFOB2: TDBLookupComboBox
            Left = 445
            Top = 46
            Width = 261
            Height = 21
            Color = 11468799
            DataField = 'Historico_FOB_Processo'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 7
          end
          object StaticText55: TStaticText
            Left = 395
            Top = 47
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 36
            Transparent = False
            StyleElements = []
          end
          object DBLookupComboBox19: TDBLookupComboBox
            Left = 445
            Top = 91
            Width = 261
            Height = 21
            Color = clWhite
            DataField = 'Historico_TotalProdutos'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 12
          end
          object StaticText27: TStaticText
            Left = 395
            Top = 92
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 37
            Transparent = False
            StyleElements = []
          end
          object StaticText46: TStaticText
            Left = 1
            Top = 92
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Produtos'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 38
            Transparent = False
            StyleElements = []
          end
          object StaticText49: TStaticText
            Left = 62
            Top = 92
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 39
            Transparent = False
            StyleElements = []
          end
          object StaticText51: TStaticText
            Left = 62
            Top = 114
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 40
            Transparent = False
            StyleElements = []
          end
          object cHistoricoProdutos: TDBLookupComboBox
            Left = 154
            Top = 92
            Width = 240
            Height = 21
            Color = clWhite
            DataField = 'Conta_TotalProdutos_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 11
          end
          object cProdutosD: TDBEdit
            Left = 78
            Top = 92
            Width = 74
            Height = 21
            Color = clWhite
            DataField = 'Conta_TotalProdutos_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 10
          end
          object cTotalNotaD: TDBEdit
            Left = 78
            Top = 137
            Width = 74
            Height = 21
            Color = 11468799
            DataField = 'Conta_TotalNota_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 15
          end
          object cTotalNota2: TDBLookupComboBox
            Left = 154
            Top = 137
            Width = 240
            Height = 21
            Color = 11468799
            DataField = 'Conta_TotalNota_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 16
          end
          object cFOB1C: TDBEdit
            Left = 78
            Top = 24
            Width = 74
            Height = 21
            Color = clWhite
            DataField = 'Conta_FOB_Fornecedor_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 3
          end
          object cFOB2C: TDBLookupComboBox
            Left = 154
            Top = 24
            Width = 240
            Height = 21
            Color = clWhite
            DataField = 'Conta_FOB_Fornecedor_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 4
          end
          object cTotalFOBC: TDBEdit
            Left = 78
            Top = 69
            Width = 74
            Height = 21
            Color = 11468799
            DataField = 'Conta_FOB_Processo_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 8
          end
          object DBLookupComboBox21: TDBLookupComboBox
            Left = 154
            Top = 69
            Width = 240
            Height = 21
            Color = 11468799
            DataField = 'Conta_FOB_Processo_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 9
          end
          object cProdutosC: TDBEdit
            Left = 78
            Top = 114
            Width = 74
            Height = 21
            Color = clWhite
            DataField = 'Conta_TotalProdutos_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 13
          end
          object DBLookupComboBox22: TDBLookupComboBox
            Left = 154
            Top = 114
            Width = 240
            Height = 21
            Color = clWhite
            DataField = 'Conta_TotalProdutos_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 14
          end
          object cHistoricoEstoque: TDBLookupComboBox
            Left = 445
            Top = 181
            Width = 261
            Height = 21
            Color = clWhite
            DataField = 'Historico_Estoque'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo;Descricao'
            ListFieldIndex = 1
            ListSource = dmContab.dsHistoricos
            NullValueKey = 46
            ParentFont = False
            TabOrder = 22
          end
          object StaticText26: TStaticText
            Left = 395
            Top = 182
            Width = 48
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hist'#243'rico'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 41
            Transparent = False
            StyleElements = []
          end
          object StaticText54: TStaticText
            Left = 1
            Top = 182
            Width = 60
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Estoque'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 42
            Transparent = False
            StyleElements = []
          end
          object DBLookupComboBox24: TDBLookupComboBox
            Left = 154
            Top = 204
            Width = 240
            Height = 21
            Color = clWhite
            DataField = 'Conta_Estoque_C'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 24
          end
          object cEstoqueD: TDBEdit
            Left = 78
            Top = 204
            Width = 74
            Height = 21
            Color = clWhite
            DataField = 'Conta_Estoque_C'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 23
          end
          object StaticText58: TStaticText
            Left = 62
            Top = 182
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'D'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 43
            Transparent = False
            StyleElements = []
          end
          object StaticText59: TStaticText
            Left = 62
            Top = 159
            Width = 15
            Height = 21
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 44
            Transparent = False
            StyleElements = []
          end
          object cEstoqueC: TDBEdit
            Left = 78
            Top = 181
            Width = 74
            Height = 21
            Color = clWhite
            DataField = 'Conta_Estoque_D'
            DataSource = Dados.dsTipoNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = mnVariavel
            TabOrder = 20
          end
          object DBLookupComboBox26: TDBLookupComboBox
            Left = 154
            Top = 181
            Width = 240
            Height = 21
            Color = clWhite
            DataField = 'Conta_Estoque_D'
            DataSource = Dados.dsTipoNota
            DropDownRows = 20
            DropDownWidth = 450
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Conta;Codigo;Descricao'
            ListFieldIndex = 2
            ListSource = dmContab.dsPlanoContas
            NullValueKey = 46
            ParentFont = False
            TabOrder = 21
          end
        end
      end
      object StaticText65: TStaticText
        Left = 9
        Top = 526
        Width = 101
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Filtrar Contas'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        Transparent = False
        StyleElements = []
      end
      object cPesquisa: TEdit
        Left = 112
        Top = 526
        Width = 280
        Height = 21
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnChange = cPesquisaChange
      end
      object bCopiarContabil: TButton
        Left = 436
        Top = 520
        Width = 94
        Height = 28
        Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
        Caption = '&Importar Contas'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = bCopiarContabilClick
      end
      object bLimparContabil: TButton
        Left = 529
        Top = 520
        Width = 84
        Height = 28
        Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
        Caption = '&Limpar Contas'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = bLimparContabilClick
      end
      object StaticText66: TStaticText
        Left = 9
        Top = 549
        Width = 101
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Filtrar Hist'#243'ricos'
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
      object cPesquisaH: TEdit
        Left = 112
        Top = 549
        Width = 280
        Height = 21
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnChange = cPesquisaHChange
      end
      object bCopiarTodos: TButton
        Left = 436
        Top = 547
        Width = 177
        Height = 28
        Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
        Caption = '&Exporta p/todas os Tipos de Nota'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = bCopiarTodosClick
      end
      object bFiliaisContas: TButton
        Left = 612
        Top = 520
        Width = 101
        Height = 55
        Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
        Caption = 'Exporta p/Filiais'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = bFiliaisContasClick
      end
    end
    object TabSheet8: TTabSheet
      Caption = '&Lista'
      ImageIndex = 5
      ExplicitHeight = 604
      object Grade: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 736
        Height = 565
        Align = alClient
        DataSource = Dados.dsTipoNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = GradeDrawColumnCell
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 619
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Ativo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
          end>
      end
      object cFiltro: TRadioGroup
        AlignWithMargins = True
        Left = 3
        Top = 574
        Width = 736
        Height = 41
        Align = alBottom
        Caption = 'Filtro'
        Columns = 5
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Entrada'
          'Sa'#237'da'
          'Ativos'
          'Desativados')
        TabOrder = 1
        OnClick = cFiltroClick
        ExplicitTop = 560
      end
    end
  end
  object tCodigo: TMSQuery
    SQLRefresh.Strings = (
      'SELECT Moedas.Codigo, Moedas.Nome, Moedas.Pais FROM Moedas'
      'WHERE Moedas.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM TipoNota')
    FetchRows = 1
    Left = 155
    Top = 145
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object tCopia: TMSQuery
    SQLRefresh.Strings = (
      'SELECT Moedas.Codigo, Moedas.Nome, Moedas.Pais FROM Moedas'
      'WHERE Moedas.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 216
    Top = 145
  end
  object mnVariavel: TPopupMenu
    Left = 488
    Top = 145
    object FORNECEDORES1: TMenuItem
      Caption = '&FORNECEDOR (Conta do cadastro do fornecedor)'
      OnClick = FORNECEDORES1Click
    end
    object Clientes1: TMenuItem
      Caption = '&CLIENTE (Conta do cadastro do cliente)'
      OnClick = Clientes1Click
    end
    object PROCESSO1: TMenuItem
      Caption = 'PROCESSO (&Despesas)'
      OnClick = PROCESSO1Click
    end
    object PROCESSOImpostos1: TMenuItem
      Caption = 'PROCESSO (&Impostos)'
      OnClick = PROCESSOImpostos1Click
    end
    object PROCESSOAdiantamento1: TMenuItem
      Caption = 'PROCESSO (&Adiantamento)'
      OnClick = PROCESSOAdiantamento1Click
    end
    object DEVOLUO1: TMenuItem
      Caption = 'DE&VOLU'#199#195'O (Saida/Entrada)'
      OnClick = DEVOLUO1Click
    end
  end
  object tClassificacao: TMSQuery
    SQLRefresh.Strings = (
      'SELECT Moedas.Codigo, Moedas.Nome, Moedas.Pais FROM Moedas'
      'WHERE Moedas.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 286
    Top = 145
  end
  object dstClassificacao: TDataSource
    DataSet = tClassificacao
    Left = 286
    Top = 193
  end
  object tQtde: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 354
    Top = 145
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 416
    Top = 145
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    FileName = '*.txt'
    Filter = '*.txt'
    Options = [ofReadOnly, ofHideReadOnly, ofEnableSizing]
    Title = 'Importa'#231#227'o de Tipos de Nota'
    Left = 564
    Top = 145
  end
  object CFOPDentro: TMSQuery
    SQLRefresh.Strings = (
      'SELECT Moedas.Codigo, Moedas.Nome, Moedas.Pais FROM Moedas'
      'WHERE Moedas.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from Natureza')
    FetchRows = 1
    Left = 243
    Top = 281
  end
  object dsCFOPDentro: TDataSource
    DataSet = CFOPDentro
    Left = 243
    Top = 331
  end
  object dsCFOPFora: TDataSource
    DataSet = CFOPFora
    Left = 331
    Top = 330
  end
  object CFOPFora: TMSQuery
    SQLRefresh.Strings = (
      'SELECT Moedas.Codigo, Moedas.Nome, Moedas.Pais FROM Moedas'
      'WHERE Moedas.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Natureza')
    FetchRows = 1
    Left = 331
    Top = 280
  end
end
