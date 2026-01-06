object Utilitarios_ExportaREINF: TUtilitarios_ExportaREINF
  Left = 628
  Top = 228
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ExportaREINF'
  ClientHeight = 493
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cMensagens: TMemo
    Left = 8
    Top = 176
    Width = 569
    Height = 273
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object cPessoa: TRadioGroup
    Left = 8
    Top = 40
    Width = 161
    Height = 129
    Caption = 'Situa'#231#227'o da Pessoa Jur'#237'dica:'
    ItemIndex = 0
    Items.Strings = (
      'Situa'#231#227'o Normal'
      'Extin'#231#227'o'
      'Fus'#227'o'
      'Cis'#227'o'
      'Incorpora'#231#227'o')
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 455
    Width = 586
    Height = 38
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      586
      38)
    object bGerar: TButton
      Left = 390
      Top = 2
      Width = 97
      Height = 35
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Gerar XML'
      TabOrder = 0
      OnClick = bGerarClick
    end
    object bSair: TButton
      Left = 487
      Top = 2
      Width = 97
      Height = 35
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
  end
  object cEvento: TComboBox
    Left = 87
    Top = 11
    Width = 490
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    Items.Strings = (
      'R-1000 - Informa'#231#245'es do Contribuinte'
      'R-1070 - Tabela de Processos Administrativos/Judiciais'
      'R-2010 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria - Servi'#231'os Tomados'
        'R-2020 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria - Servi'#231'os Prestad' +
        'os'
      'R-2030 - Recursos Recebidos por Associa'#231#227'o Desportiva'
      'R-2040 - Recursos Repassados para Associa'#231#227'o Desportiva'
        'R-2050 - Comercializa'#231#227'o da Produ'#231#227'o por Produtor Rural PJ/Agroi' +
        'nd'#250'stria'
        'R-2060 - Contribui'#231#227'o Previdenci'#225'ria sobre a Receita Bruta - CPR' +
        'B'
      'R-2098 - Reabertura dos Eventos Peri'#243'dicos'
      'R-2099 - Fechamento dos Eventos Peri'#243'dicos'
      'R-3010 - Receita de Espet'#225'culo Desportivo'
      'R-4010 - Reten'#231#245'es na Fonte - Pessoa F'#237'sica'
      'R-4020 - Reten'#231#245'es na Fonte - Pessoa Jur'#237'dica'
      'R-4040 - Reten'#231#245'es na Fonte - Benefici'#225'rios n'#227'o identificados'
      'R-4098 - Reabertura dos Eventos Peri'#243'dicos S'#233'rie R-4000'
      'R-4099 - Fechamento dos Eventos Peri'#243'dicos S'#233'rie R-4000'
      'R-9000 - Exclus'#227'o de Eventos'
        'R-9001 - Informa'#231#245'es de bases e tributos por evento - Contrib. P' +
        'revidenc.'
        'R-9002 - Informa'#231#245'es de bases e tributos por evento - Reten'#231#245'es ' +
        'na fonte'
        'R-9011 - Informa'#231#245'es consolidadas de bases e tributos - Contrib.' +
        ' Previdenci'#225'ria'
        'R-9012 - Informa'#231#245'es consolidadas de bases e tributos - Reten'#231#245'e' +
        's na fonte')
  end
  object StaticText26: TStaticText
    Left = 8
    Top = 11
    Width = 77
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Eventos'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object ACBrReinf1: TACBrReinf
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 208
    Top = 64
  end
end
