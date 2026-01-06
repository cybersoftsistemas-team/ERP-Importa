object Utilitarios_ExportaSPED_Fiscal: TUtilitarios_ExportaSPED_Fiscal
  Left = 696
  Top = 167
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ExportaSPED_Fiscal'
  ClientHeight = 645
  ClientWidth = 515
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
    Width = 515
    Height = 40
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 3
    Top = 0
    Width = 99
    Height = 23
    Caption = 'SPED FISCAL'
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
    Left = 3
    Top = 17
    Width = 298
    Height = 18
    Caption = 'Gera'#231#227'o do arquivo de envio para o SPED Fiscal.'
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
    Top = 615
    Width = 515
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
    object bSair: TButton
      Left = 444
      Top = 1
      Width = 70
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bGerar: TButton
      Left = 296
      Top = 1
      Width = 70
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Align = alRight
      Caption = '&Gerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bGerarClick
    end
    object bSintegra: TButton
      Left = 366
      Top = 1
      Width = 78
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Align = alRight
      Caption = '&Validador'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSintegraClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 509
    Height = 569
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
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
      TabOrder = 1
      Transparent = False
      StyleElements = []
    end
    object cNomeArquivo: TEdit
      Left = 100
      Top = 28
      Width = 309
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'SPED.TXT'
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
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
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
    object cVersao: TCurrencyEdit
      Left = 100
      Top = 51
      Width = 61
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
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
      Caption = 'C'#243'digo da Vers'#227'o'
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
    object cFinalidade: TRadioGroup
      Left = 265
      Top = 79
      Width = 120
      Height = 95
      Caption = 'Finalidade do Arquivo'
      Items.Strings = (
        'Arquivo Original.'
        'Arquivo Substituto.')
      TabOrder = 7
    end
    object cInventario: TRadioGroup
      Left = 6
      Top = 79
      Width = 122
      Height = 95
      Caption = 'Inventario'
      Items.Strings = (
        'Mensal'
        'Trimestral'
        'Anual'
        'N'#227'o Gerar')
      TabOrder = 8
    end
    object cMotivo: TRadioGroup
      Left = 6
      Top = 452
      Width = 496
      Height = 111
      Caption = 'Motivo do Invent'#225'rio'
      Items.Strings = (
        '01. No final no per'#237'odo'
        '02. Na mudan'#231'a de forma de tributa'#231#227'o da mercadoria (ICMS)'
        
          '03. Na solicita'#231#227'o da baixa cadastral, paralisa'#231#227'o tempor'#225'ria e ' +
          'outras situa'#231#245'es'
        '04. Na altera'#231#227'o de regime de pagamento condi'#231#227'o do contribuinte'
        '05. Por determina'#231#227'o dos fiscos')
      TabOrder = 9
    end
    object cBloco1: TRadioGroup
      Left = 391
      Top = 79
      Width = 110
      Height = 95
      Caption = 'Registro do Bloco 1'
      Items.Strings = (
        'Obrigado'
        'Dispensado')
      TabOrder = 10
    end
    object cGrupo1: TGroupBox
      Left = 6
      Top = 182
      Width = 496
      Height = 263
      Caption = 'Informa'#231#245'es do Bloco 1'
      TabOrder = 11
      object cReg1100: TCheckBox
        Left = 8
        Top = 20
        Width = 485
        Height = 17
        Caption = '1100 - Ocorreu averba'#231#227'o (conclus'#227'o) de exporta'#231#227'o no per'#237'odo'
        TabOrder = 0
      end
      object cReg1200: TCheckBox
        Left = 8
        Top = 38
        Width = 485
        Height = 17
        Caption = 
          '1200 - Existem informa'#231#245'es acerca de cr'#233'ditos de ICMS a serem co' +
          'ntrolados, definidos pela Sefaz'
        TabOrder = 1
      end
      object cReg1300: TCheckBox
        Left = 8
        Top = 56
        Width = 485
        Height = 17
        Caption = '1300 - '#201' comercio varejista de combust'#237'veis'
        TabOrder = 2
      end
      object cReg1390: TCheckBox
        Left = 8
        Top = 74
        Width = 485
        Height = 17
        Caption = 
          '1390 - O estabelecimento '#233' produtor de a'#231#250'car e/ou '#225'lcool carbur' +
          'ante'
        TabOrder = 3
      end
      object cReg1400: TCheckBox
        Left = 8
        Top = 92
        Width = 485
        Height = 17
        Caption = '1400 - O registro '#233' obrigat'#243'rio em sua Unidade da Federa'#231#227'o'
        TabOrder = 4
      end
      object cReg1500: TCheckBox
        Left = 8
        Top = 110
        Width = 485
        Height = 17
        Caption = '1500 - A empresa '#233' distribuidora de energia'
        TabOrder = 5
      end
      object cReg1601: TCheckBox
        Left = 8
        Top = 128
        Width = 485
        Height = 17
        Caption = '1601 - Realizou vendas com Cart'#227'o de Cr'#233'dito ou de d'#233'bito'
        TabOrder = 6
      end
      object cReg1700: TCheckBox
        Left = 8
        Top = 146
        Width = 485
        Height = 17
        Caption = 
          '1700 - '#201' obrigat'#243'rio em seu estado o controle de utiliza'#231#227'o de d' +
          'ocumentos fiscais em papel'
        TabOrder = 7
      end
      object cReg1800: TCheckBox
        Left = 8
        Top = 164
        Width = 485
        Height = 17
        Caption = 
          '1800 - A empresa prestou servi'#231'os de transporte a'#233'reo de cargas ' +
          'e de passageiros'
        TabOrder = 8
      end
      object cReg1960: TCheckBox
        Left = 8
        Top = 182
        Width = 485
        Height = 17
        Caption = '1960 - Possui informa'#231#245'es GIAF1?'
        TabOrder = 9
      end
      object cReg1970: TCheckBox
        Left = 8
        Top = 200
        Width = 485
        Height = 17
        Caption = '1970 - Possui informa'#231#245'es GIAF3?'
        TabOrder = 10
      end
      object cReg1980: TCheckBox
        Left = 8
        Top = 218
        Width = 485
        Height = 17
        Caption = '1980 - Possui informa'#231#245'es GIAF4?'
        TabOrder = 11
      end
      object cReg1250: TCheckBox
        Left = 8
        Top = 236
        Width = 485
        Height = 17
        Caption = 
          '1250 - Possui informa'#231#245'es consolidadas de saldos de restitui'#231#227'o,' +
          ' ressarcimento e compl.do ICMS?'
        TabOrder = 12
      end
    end
    object cEstoque: TRadioGroup
      Left = 134
      Top = 79
      Width = 125
      Height = 95
      Caption = 'Estoque'
      Items.Strings = (
        'Mensal'
        'Trimestral'
        'Anual'
        'N'#227'o Gerar')
      TabOrder = 12
    end
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 174
    Top = 410
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 211
    Top = 410
  end
  object tDescricaoItem: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 264
    Top = 410
  end
  object tFatura: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 325
    Top = 410
  end
  object tDuplicatas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 378
    Top = 410
  end
  object tAjustes: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 431
    Top = 410
  end
  object tSaldoICMS: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 38
    Top = 231
  end
  object tOutros: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 131
    Top = 255
  end
  object tNotasTerceirosItens: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 280
    Top = 255
  end
  object tInventario: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 333
    Top = 223
  end
  object tNotas2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 378
    Top = 255
  end
  object tItens2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 399
    Top = 215
  end
  object tProdutos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 436
    Top = 255
  end
  object tExporta: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 465
    Top = 215
  end
  object tCIAP: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 248
    Top = 308
  end
  object tTotalInventario: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 186
    Top = 308
  end
  object tContas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 298
    Top = 356
  end
  object tNotas3: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 125
    Top = 308
  end
  object tEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 40
    Top = 284
  end
  object tFichaInventario: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 378
    Top = 316
  end
  object tFichaEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 426
    Top = 364
  end
  object tTotalEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 458
    Top = 316
  end
  object tInfComp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 395
    Top = 485
  end
  object tBeneficios: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 175
    Top = 458
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 299
    Top = 494
  end
end
