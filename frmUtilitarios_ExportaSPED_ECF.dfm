object Utilitarios_ExportaSPED_ECF: TUtilitarios_ExportaSPED_ECF
  Left = 506
  Top = 134
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ExportaSPED_ECF'
  ClientHeight = 700
  ClientWidth = 925
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
  DesignSize = (
    925
    700)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 925
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 4
    Width = 112
    Height = 21
    Caption = 'SPED CONT'#193'BIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 351
    Height = 18
    Caption = 'Gera'#231#227'o do arquivo de envio para o SPED Cont'#225'bil (ECF).'
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
    Top = 670
    Width = 925
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      925
      30)
    object bSair: TButton
      Left = 854
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
    object bGerar: TButton
      Left = 706
      Top = 1
      Width = 70
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Anchors = [akTop, akRight]
      Caption = '&Gerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bGerarClick
    end
    object bSintegra: TButton
      Left = 776
      Top = 1
      Width = 78
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Anchors = [akTop, akRight]
      Caption = '&Validador'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 56
    Width = 916
    Height = 609
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 1
    object StaticText2: TStaticText
      Left = 7
      Top = 6
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'M'#234's/Ano In'#237'cio'
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
    object cNomeArquivo: TEdit
      Left = 102
      Top = 52
      Width = 357
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = 'CYBERSOFT_LECF_CONTABIL'
    end
    object StaticText3: TStaticText
      Left = 7
      Top = 52
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
      TabOrder = 6
      Transparent = False
      StyleElements = []
    end
    object cAnoIni: TRxSpinEdit
      Left = 212
      Top = 6
      Width = 65
      Height = 21
      Value = 2012.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = cAnoIniChange
    end
    object cMesIni: TComboBox
      Left = 102
      Top = 6
      Width = 109
      Height = 21
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
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
    object StaticText1: TStaticText
      Left = 7
      Top = 75
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo da Vers'#227'o'
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
    object StaticText4: TStaticText
      Left = 7
      Top = 29
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'M'#234's/Ano Fim'
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
    object cAnoFim: TRxSpinEdit
      Left = 212
      Top = 29
      Width = 65
      Height = 21
      Value = 2012.000000000000000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object cMesFim: TComboBox
      Left = 102
      Top = 29
      Width = 109
      Height = 21
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
    object cVersao: TEdit
      Left = 101
      Top = 75
      Width = 86
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Text = '1.00'
    end
    object cIndicador: TRadioGroup
      Left = 7
      Top = 289
      Width = 370
      Height = 108
      Caption = 'Indicador do In'#237'cio do Per'#237'odo'
      ItemIndex = 0
      Items.Strings = (
        '0 - Regular (In'#237'cio no primeiro dia do ano)  '
        '1 - Abertura (In'#237'cio de atividades no ano-calend'#225'rio) '
        
          '2 - Resultante cis'#227'o/fus'#227'o,remanescente cis'#227'o,realizou incorpora' +
          #231#227'o  '
        
          '4 - In'#237'cio de obrigatoriedade da entrega no curso do ano calend'#225 +
          'rio. ')
      TabOrder = 10
    end
    object cSituacao: TRadioGroup
      Left = 383
      Top = 169
      Width = 242
      Height = 227
      Caption = 'Situa'#231#227'o especial'
      ItemIndex = 0
      Items.Strings = (
        '0 - Normal'
        '1 - Extin'#231#227'o'
        '2 - Fus'#227'o'
        '3 - Incorpora'#231#227'o \ Incorporada'
        '4 - Incorpora'#231#227'o \ Incorporadora'
        '5 - Cis'#227'o Total'
        '6 - Cis'#227'o Parcial'
        '8 - Desenquadramento de Imune/Isenta'
        '9 - Inclus'#227'o no Simples Nacional')
      TabOrder = 11
    end
    object cRetificadora: TRadioGroup
      Left = 7
      Top = 169
      Width = 370
      Height = 92
      Caption = 'Escritura'#231#227'o Retificadora'
      ItemIndex = 0
      Items.Strings = (
        'N - ECF original  '
        'S - ECF retificadora  '
        'F - ECF original com mudan'#231'a de forma de tributa'#231#227'o '#9)
      TabOrder = 12
      OnClick = cRetificadoraClick
    end
    object lRecibo: TStaticText
      Left = 7
      Top = 264
      Width = 122
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Recibo da ECF Anterior'
      Color = 7293440
      Enabled = False
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
    object cRecibo: TEdit
      Left = 131
      Top = 264
      Width = 246
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object cTipoECF: TRadioGroup
      Left = 7
      Top = 401
      Width = 370
      Height = 92
      Caption = 'Indicador do Tipo da ECF:'
      ItemIndex = 0
      Items.Strings = (
        
          '0 - ECF de empresa n'#227'o participante de SCP como s'#243'cio ostensivo.' +
          '  '
        '1 - ECF de empresa participante de SCP como s'#243'cio ostensivo.  '
        '2 - ECF da SCP. '#9)
      TabOrder = 15
      OnClick = cRetificadoraClick
    end
    object cMovimento: TRadioGroup
      Left = 8
      Top = 106
      Width = 193
      Height = 60
      Caption = 'Indicador de movimento'
      ItemIndex = 0
      Items.Strings = (
        '0 - Bloco com dados informados'
        '1 - Bloco sem dados informados')
      TabOrder = 16
      OnClick = cRetificadoraClick
    end
    object cApuracao: TRadioGroup
      Left = 208
      Top = 106
      Width = 169
      Height = 60
      Caption = 'Per'#237'odo Apura'#231#227'o (IRPJ/CSLL)'
      ItemIndex = 0
      Items.Strings = (
        'T - Trimestral  '
        'A - Anual '#9)
      TabOrder = 17
      OnClick = cRetificadoraClick
    end
    object cQualificacao: TRadioGroup
      Left = 383
      Top = 401
      Width = 242
      Height = 92
      Caption = 'Qualifica'#231#227'o da Pessoa Jur'#237'dica:  '
      ItemIndex = 0
      Items.Strings = (
        '01 - PJ em Geral  '
        '02 - PJ Componente do Sistema Financeiro  '
        '03 - Seguradoras,Capitaliza'#231#227'o,Prev.Compl.')
      TabOrder = 18
      OnClick = cRetificadoraClick
    end
    object cFormaTrib: TRadioGroup
      Left = 7
      Top = 497
      Width = 370
      Height = 108
      Caption = 'Forma de Tributa'#231#227'o no Per'#237'odo'
      ItemIndex = 0
      Items.Strings = (
        
          '0000 - ZERO - N'#227'o informado - Trim.n'#227'o compreendido per'#237'odo apur' +
          '.'
        'RRRR - Real  '
        'PPPP - Presumido  '
        'AAAA - Arbitrado  '
        'EEEE - Real Estimativa '#9)
      TabOrder = 19
    end
    object cFormaApura: TRadioGroup
      Left = 383
      Top = 497
      Width = 242
      Height = 108
      Caption = 'Forma de Apura'#231#227'o da Estimativa Mensal'
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        '0 - Fora do Per'#237'odo'
        'E - Receita Bruta'
        'B - Balan'#231'o ou Balancete')
      TabOrder = 20
    end
    object cEscrituracao: TRadioGroup
      Left = 384
      Top = 106
      Width = 241
      Height = 60
      Caption = 'Escritura'#231#227'o'
      ItemIndex = 0
      Items.Strings = (
        'C - Obrigadas a entregar a ECD'
        'L - Livro Caixa ou n'#227'o obrig.entregar a ECD ')
      TabOrder = 21
      OnClick = cRetificadoraClick
    end
    object cDiferenca: TCheckBox
      Left = 638
      Top = 12
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Existe diferen'#231'as entre a contabilidade  e Fcont'
      TabOrder = 22
    end
    object cAliquota: TRadioGroup
      Left = 503
      Top = 11
      Width = 122
      Height = 92
      Caption = 'Sujeita Al'#237'quota CSLL'
      ItemIndex = 0
      Items.Strings = (
        '1 - 9%  '
        '2 - 17%  '
        '3 - 20% '#9)
      TabOrder = 23
      OnClick = cRetificadoraClick
    end
    object cAdmFundos: TCheckBox
      Left = 638
      Top = 32
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Administradora de Fundos e Clubes de Investimento'
      TabOrder = 24
    end
    object cPartConsorcio: TCheckBox
      Left = 638
      Top = 52
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Participa'#231#245'es em Cons'#243'rcios de Empresas'
      TabOrder = 25
    end
    object cOperExterior: TCheckBox
      Left = 638
      Top = 72
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Opera'#231#245'es com o Exterior'
      TabOrder = 26
    end
    object cOperPessoa: TCheckBox
      Left = 638
      Top = 92
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Opera'#231#245'es com Pessoa Vinculada/Interposta'
      TabOrder = 27
    end
    object cPJEnquad: TCheckBox
      Left = 638
      Top = 112
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'PJ Enquadrada nos artigos 48 ou 49 da IN RFB '
      TabOrder = 28
    end
    object cPartExt: TCheckBox
      Left = 638
      Top = 132
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Participa'#231#245'es no Exterior'
      TabOrder = 29
    end
    object cAtividadeRural: TCheckBox
      Left = 638
      Top = 152
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Atividade Rural'
      TabOrder = 30
    end
    object cLucroExploracao: TCheckBox
      Left = 638
      Top = 172
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Exist'#234'ncia de Lucro da Explora'#231#227'o'
      TabOrder = 31
    end
    object cInsencao: TCheckBox
      Left = 638
      Top = 192
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Isen'#231#227'o/Redu'#231#227'o Imposto p/Lucro Presumido'
      TabOrder = 32
    end
    object cFINOR: TCheckBox
      Left = 638
      Top = 212
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Indicativo da Exist'#234'ncia de FINOR/FINAM'
      TabOrder = 33
    end
    object cDoacoes: TCheckBox
      Left = 638
      Top = 232
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Doa'#231#245'es a Campanhas Eleitorais'
      TabOrder = 34
    end
    object cEquivalencia: TCheckBox
      Left = 638
      Top = 252
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Participa'#231#227'o Avaliada p/M'#233'todo Equiv.Patrim.'
      TabOrder = 35
    end
    object cVendas: TCheckBox
      Left = 638
      Top = 272
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'PJ Efetuou Vendas Empresa Comercial Exportadora'
      TabOrder = 36
    end
    object cReceb: TCheckBox
      Left = 638
      Top = 292
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Recebimentos do Exterior ou de N'#227'o Residentes:'
      TabOrder = 37
    end
    object cAtivos: TCheckBox
      Left = 638
      Top = 312
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ativos no Exterior'
      TabOrder = 38
    end
    object cExportadora: TCheckBox
      Left = 638
      Top = 332
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'PJ Comercial Exportadora'
      TabOrder = 39
    end
    object cPagamentos: TCheckBox
      Left = 638
      Top = 352
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Pagamentos ao Exterior ou a N'#227'o Residentes'
      TabOrder = 40
    end
    object cEletronico: TCheckBox
      Left = 638
      Top = 372
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Com'#233'rcio Eletr'#244'nico e Tecnologia da Informa'#231#227'o'
      TabOrder = 41
    end
    object cRoyaltiesRec: TCheckBox
      Left = 638
      Top = 392
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Royalties Recebidos'
      TabOrder = 42
    end
    object cRoyaltiesPag: TCheckBox
      Left = 638
      Top = 412
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Royalties Pagos a Benefici'#225'rios'
      TabOrder = 43
    end
    object cRendimentos: TCheckBox
      Left = 638
      Top = 432
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Rendimentos Rel.Serv.,Juros e Divid.Recebidos'
      TabOrder = 44
    end
    object cRemeExt: TCheckBox
      Left = 638
      Top = 452
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Pgto ou Rem.T'#237'tulo de Servi'#231'os (Exterior)'
      TabOrder = 45
    end
    object cInovacao: TCheckBox
      Left = 638
      Top = 472
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Inova'#231#227'o Tecnol'#243'gica/Desenvolvim.Tecnol'#243'gico'
      TabOrder = 46
    end
    object cCapacitacao: TCheckBox
      Left = 638
      Top = 492
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Capacita'#231#227'o de Inform'#225'tica e Inclus'#227'o Digital'
      TabOrder = 47
    end
    object cHabilitada: TCheckBox
      Left = 638
      Top = 512
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'PJ Habilitada no Repes, Recap, Padis, PATVD...'
      TabOrder = 48
    end
    object cPolo: TCheckBox
      Left = 638
      Top = 532
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'P'#243'lo Industrial de Manaus e Amaz'#244'nia Ocidental'
      TabOrder = 49
    end
    object cZonaExp: TCheckBox
      Left = 638
      Top = 552
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Zonas de Processamento de Exporta'#231#227'o'
      TabOrder = 50
    end
    object cAreaLivre: TCheckBox
      Left = 638
      Top = 572
      Width = 269
      Height = 17
      Alignment = taLeftJustify
      Caption = #193'reas de Livre Com'#233'rcio'
      TabOrder = 51
    end
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 185
  end
  object tContador: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 217
  end
  object tHistoricos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 249
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 281
  end
  object tLancamentos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 313
  end
  object tPartidas: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 345
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 377
  end
end
