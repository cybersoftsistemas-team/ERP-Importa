object Fiscal_REINF: TFiscal_REINF
  Left = 417
  Top = 151
  BorderStyle = bsDialog
  Caption = 'Fiscal_REINF'
  ClientHeight = 592
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Ambiente: TLabel
    Left = 192
    Top = 45
    Width = 47
    Height = 13
    Caption = 'Ambiente:'
  end
  object lbl1: TLabel
    Left = 11
    Top = 167
    Width = 55
    Height = 13
    Caption = 'Certificados'
  end
  object lbl2: TLabel
    Left = 370
    Top = 45
    Width = 74
    Height = 13
    Caption = 'Vers'#227'o Manual:'
  end
  object edtCnpjSH: TLabeledEdit
    Left = 11
    Top = 22
    Width = 257
    Height = 21
    EditLabel.Width = 143
    EditLabel.Height = 13
    EditLabel.Caption = 'CPF / CNPJ SoftWare House:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object edtTokenSH: TLabeledEdit
    Left = 274
    Top = 22
    Width = 266
    Height = 21
    EditLabel.Width = 116
    EditLabel.Height = 13
    EditLabel.Caption = 'Token SoftWare House:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = 'TOKEN'
  end
  object edtEmpregador: TLabeledEdit
    Left = 11
    Top = 62
    Width = 171
    Height = 21
    EditLabel.Width = 121
    EditLabel.Height = 13
    EditLabel.Caption = 'CPF / CNPJ Empregador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object cbAmbiente: TComboBox
    Left = 192
    Top = 62
    Width = 170
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
      '1 - Produ'#231#227'o'
      '2 - Homologa'#231#227'o')
  end
  object edtTemplates: TLabeledEdit
    Left = 11
    Top = 102
    Width = 529
    Height = 21
    EditLabel.Width = 96
    EditLabel.Height = 13
    EditLabel.Caption = 'Caminho Templates:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = 'C:\Program Files\TecnoSpeed\Reinf\Arquivos\Templates\'
  end
  object edtEsquemas: TLabeledEdit
    Left = 11
    Top = 142
    Width = 529
    Height = 21
    EditLabel.Width = 96
    EditLabel.Height = 13
    EditLabel.Caption = 'Caminho Esquemas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = 'C:\Program Files\TecnoSpeed\Reinf\Arquivos\Esquemas\'
  end
  object cbCertificado: TComboBox
    Left = 11
    Top = 182
    Width = 529
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 6
  end
  object btnConfigurar: TButton
    Left = 547
    Top = 7
    Width = 100
    Height = 36
    Caption = 'Configurar'
    TabOrder = 7
    OnClick = btnConfigurarClick
  end
  object btnTx2: TButton
    Left = 547
    Top = 47
    Width = 100
    Height = 36
    Caption = 'Gerar Tx2'
    TabOrder = 8
    OnClick = btnTx2Click
  end
  object btnXml: TButton
    Left = 547
    Top = 127
    Width = 100
    Height = 36
    Caption = 'Gerar Xml'
    TabOrder = 9
    OnClick = btnXmlClick
  end
  object btnAssinar: TButton
    Left = 547
    Top = 87
    Width = 100
    Height = 36
    Caption = 'Assinar'
    TabOrder = 10
    OnClick = btnAssinarClick
  end
  object btnEnviar: TButton
    Left = 547
    Top = 167
    Width = 100
    Height = 36
    Caption = 'Enviar'
    TabOrder = 11
    OnClick = btnEnviarClick
  end
  object btnConsultar: TButton
    Left = 547
    Top = 207
    Width = 100
    Height = 36
    Caption = 'Consultar'
    TabOrder = 12
    OnClick = btnConsultarClick
  end
  object edtIdLote: TLabeledEdit
    Left = 11
    Top = 259
    Width = 529
    Height = 21
    EditLabel.Width = 94
    EditLabel.Height = 13
    EditLabel.Caption = 'Identifiador do Lote:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object cbVersao: TComboBox
    Left = 370
    Top = 62
    Width = 170
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 14
  end
  object PageControl1: TPageControl
    Left = 11
    Top = 283
    Width = 529
    Height = 262
    ActivePage = tsRetorno
    TabHeight = 25
    TabOrder = 15
    object tsRetorno: TTabSheet
      Caption = 'Retorno'
      object mmoXml: TMemo
        Left = 0
        Top = 0
        Width = 521
        Height = 227
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Xml de Envio'
      ImageIndex = 1
      object mmoXmlEnvio: TMemo
        Left = 0
        Top = 0
        Width = 521
        Height = 227
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Xml de Retorno'
      ImageIndex = 2
      object mmoXmlRetorno: TMemo
        Left = 0
        Top = 0
        Width = 521
        Height = 227
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object rgTipoConsulta: TRadioGroup
    Left = 11
    Top = 208
    Width = 529
    Height = 47
    Caption = 'Tipo de Consulta:'
    Columns = 3
    Items.Strings = (
      'Id do Lote'
      'Id de Evento'
      'Nr. Recibo')
    TabOrder = 16
  end
  object Panel1: TPanel
    Left = 0
    Top = 560
    Width = 658
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 17
    DesignSize = (
      658
      32)
    object bSair: TButton
      Left = 578
      Top = 1
      Width = 79
      Height = 30
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Sair'
      TabOrder = 0
      OnClick = bSairClick
    end
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
    Left = 592
    Top = 272
  end
end
