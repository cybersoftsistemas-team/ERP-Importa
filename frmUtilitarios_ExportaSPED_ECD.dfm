object Utilitarios_ExportaSPED_ECD: TUtilitarios_ExportaSPED_ECD
  Left = 439
  Top = 105
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ExportaSPED_ECD'
  ClientHeight = 698
  ClientWidth = 794
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
    Width = 794
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
    Width = 353
    Height = 18
    Caption = 'Gera'#231#227'o do arquivo de envio para o SPED Cont'#225'bil (ECD).'
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
    Top = 668
    Width = 794
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
      794
      30)
    object bSair: TButton
      Left = 723
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
      Left = 575
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
      Left = 645
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
  object cPagina: TPageControl
    Left = 4
    Top = 48
    Width = 785
    Height = 612
    ActivePage = TabSheet1
    TabHeight = 28
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&Op'#231#245'es p/Gera'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 2
        Top = 1
        Width = 772
        Height = 571
        BevelOuter = bvLowered
        TabOrder = 0
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
          Text = 'CYBERSOFT_LECD_CONTABIL'
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
          TabOrder = 9
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
          TabOrder = 10
          Transparent = False
          StyleElements = []
        end
        object cFinalidade: TRadioGroup
          Left = 7
          Top = 101
          Width = 123
          Height = 84
          Caption = 'Finalidade do Arquivo'
          Items.Strings = (
            'Arquivo Original.'
            'Arquivo Substituto.')
          TabOrder = 6
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
          TabOrder = 11
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
        object cSituacao: TRadioGroup
          Left = 139
          Top = 101
          Width = 118
          Height = 174
          Caption = 'Situa'#231#227'o especial'
          ItemIndex = 0
          Items.Strings = (
            'Abertura'
            'Cis'#227'o'
            'Fus'#227'o'
            'Incorpora'#231#227'o'
            'Encerramento'
            'Nenhum')
          TabOrder = 7
        end
        object cEscrituracao: TRadioGroup
          Left = 7
          Top = 192
          Width = 123
          Height = 83
          Caption = 'Tipo de Escritura'#231#227'o'
          ItemIndex = 0
          Items.Strings = (
            'Centralizada'
            'Descentralizada')
          TabOrder = 8
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
          TabOrder = 12
          Text = '1.00'
        end
        object cForma: TRadioGroup
          Left = 7
          Top = 277
          Width = 410
          Height = 118
          Caption = 'Forma de Escritura'#231#227'o '
          ItemIndex = 0
          Items.Strings = (
            'A. Livro Di'#225'rio Auxiliar ao Di'#225'rio com Escritura'#231#227'o Resumida'
            'B. Livro Balancetes Di'#225'rios e Balan'#231'os'
            'G. Livro Di'#225'rio (Completo, sem escritura'#231#227'o auxiliar)'
            
              'R. Livro Di'#225'rio com Escritura'#231#227'o Resumida (com escritura'#231#227'o auxi' +
              'liar)'
            
              'Z. Raz'#227'o Auxiliar (Livro Cont'#225'bil Auxi.conf.leiaute def.registro' +
              's I500 a I555)')
          TabOrder = 13
        end
        object cSituacaoInicio: TRadioGroup
          Left = 7
          Top = 397
          Width = 410
          Height = 102
          Caption = 'Situa'#231#227'o in'#237'cio do per'#237'odo'
          ItemIndex = 0
          Items.Strings = (
            'Normal (In'#237'cio no primeiro dia do ano) '#9
            'Abertura '#9
            
              'Resultante de cis'#227'o/fus'#227'o ou remanescente de cis'#227'o, ou realizou ' +
              'incorpora'#231#227'o '#9
            
              'In'#237'cio de obrigatoriedade da entrega da ECD no curso do ano cale' +
              'nd'#225'rio '#9)
          TabOrder = 14
        end
        object cNIRE: TRadioGroup
          Left = 391
          Top = 101
          Width = 230
          Height = 65
          Caption = 'NIRE'
          ItemIndex = 0
          Items.Strings = (
            'Empresa n'#227'o possui reg.Junta Comercial.'
            'Empresa possui reg.Junta Comercial.')
          TabOrder = 15
        end
        object cFinalEscri: TRadioGroup
          Left = 391
          Top = 173
          Width = 230
          Height = 102
          Caption = 'Indicador de finalidade da escritura'#231#227'o'
          ItemIndex = 0
          Items.Strings = (
            'Original  '
            'Substituta com NIRE  '
            'Substituta sem NIRE  '
            'Substituta com troca '#9)
          TabOrder = 16
        end
        object cAuditoria: TRadioGroup
          Left = 7
          Top = 501
          Width = 410
          Height = 65
          Caption = 'Indicador de entidade sujeita a auditoria independente'
          ItemIndex = 0
          Items.Strings = (
            'Empresa n'#227'o '#233' entidade sujeita a auditoria independente.  '
            'Empresa '#233' entidade sujeita a auditoria independente')
          TabOrder = 17
        end
        object cECD: TRadioGroup
          Left = 424
          Top = 277
          Width = 341
          Height = 85
          Caption = 'Indicador do tipo de ECD'
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o participante de SCP como s'#243'cio ostensivo.'
            'Participante de SCP como s'#243'cio ostensivo. '#9)
          TabOrder = 18
        end
        object cResp: TRadioGroup
          Left = 424
          Top = 365
          Width = 341
          Height = 201
          Caption = 'Institui'#231#227'o Resp.p/Manut.Plano de Contas Referencial'
          ItemIndex = 0
          Items.Strings = (
            '1 - PJ em Geral (L100A + L300A da ECF) '#9
            '2 - PJ em Geral - Lucro Presumido (P100 + P150 da ECF) '#9
            '3 - Financeiras (L100B + L300B da ECF) '#9
            '4 - Seguradoras (L100C + L300C da ECF) '#9
            '5 - Imunes e Isentas em Geral (U100A + U150A da ECF) '#9
            '6 - Financeiras - Imunes e Isentas (U100B + U150B da ECF) '#9
            '7 - Seguradoras - Imunes e Isentas (U100C + U150C da ECF) '#9
            '8 - Entidades Fech.Previd'#234'ncia Compl.(U100D + U150D da ECF) '#9
            '9 - Partidos Pol'#237'ticos (U100E + U150E da ECF)')
          TabOrder = 19
        end
        object cConsolidada: TRadioGroup
          Left = 631
          Top = 101
          Width = 134
          Height = 65
          Caption = 'Escritura'#231#245'es Consol.'
          ItemIndex = 1
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 20
        end
        object cEventoSoc: TRadioGroup
          Left = 264
          Top = 101
          Width = 118
          Height = 174
          Caption = 'Eventos Societ'#225'rios'
          ItemIndex = 0
          Items.Strings = (
            'Aquisi'#231#227'o  '
            'Aliena'#231#227'o  '
            'Fus'#227'o  '
            'Cis'#227'o Parcial  '
            'Cis'#227'o Total  '
            'Incorpora'#231#227'o  '
            'Extin'#231#227'o  '
            'Constitui'#231#227'o ')
          TabOrder = 21
        end
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
        Width = 777
        Height = 574
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
      end
    end
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 409
    Top = 8
  end
  object tContador: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 441
    Top = 8
  end
  object tHistoricos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 473
    Top = 8
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 505
    Top = 8
  end
  object tLancamentos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 537
    Top = 8
  end
  object tPartidas: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 569
    Top = 8
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 601
    Top = 8
  end
  object tBalanco: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 633
    Top = 8
  end
  object tDRE: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 665
    Top = 8
  end
end
