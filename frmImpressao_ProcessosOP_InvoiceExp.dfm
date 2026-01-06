object Impressao_ProcessosOP_InvoiceExp: TImpressao_ProcessosOP_InvoiceExp
  Left = 695
  Top = 367
  BorderStyle = bsDialog
  Caption = 'Impressao_ProcessosOP_InvoiceExp'
  ClientHeight = 490
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 616
    Height = 40
    Align = alTop
    Stretch = True
    ExplicitWidth = 608
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 0
    Width = 76
    Height = 21
    Caption = 'PROCESSO'
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
    Top = 15
    Width = 340
    Height = 18
    Caption = 'Impress'#227'o da Fatura Exporta'#231#227'o (Commercial Invoice).'
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
    Top = 460
    Width = 616
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      616
      30)
    object bSair: TButton
      Left = 542
      Top = 1
      Width = 74
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
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 256
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsInvoice
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
      ShowHint = True
      TabOrder = 1
    end
    object bImprimir: TButton
      Left = 458
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bImprimirClick
    end
  end
  object Grade: TDBGrid
    Left = 8
    Top = 46
    Width = 600
    Height = 348
    DataSource = Dados.dsInvoice
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Proposta'
        Title.Alignment = taCenter
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 130
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'INCOTERMS'
        Title.Alignment = taCenter
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Local_Embarque'
        Title.Alignment = taCenter
        Title.Caption = 'Local Embarque'
        Width = 168
        Visible = True
      end>
  end
  object StaticText5: TStaticText
    Left = 8
    Top = 397
    Width = 54
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisar'
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
  object cPesquisa: TEdit
    Left = 64
    Top = 397
    Width = 544
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object cExcel: TCheckBox
    Left = 8
    Top = 430
    Width = 153
    Height = 17
    Caption = 'Gerar em sa'#237'da em EXCEL.'
    TabOrder = 4
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 375
    Top = 217
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
      Position = 1
    end
    object pEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object pEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object pEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object pEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object pEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object pEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object pEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object pEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object pEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object pEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object pEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object pEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object pEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object pEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object pEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object pEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object pEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object pEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object pEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object pEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object pEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object pEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object pEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object pEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresasppField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresasppField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object pEmpresasppField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object pEmpresasppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresasppField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object pEmpresasppField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresasppField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresasppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresasppField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object pEmpresasppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pEmpresasppField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object pEmpresasppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresasppField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pEmpresasppField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresasppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresasppField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object pEmpresasppField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object pEmpresasppField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pEmpresasppField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object pEmpresasppField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object pEmpresasppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresasppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresasppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pEmpresasppField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresasppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pEmpresasppField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object pEmpresasppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object pEmpresasppField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresasppField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object pEmpresasppField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object pEmpresasppField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object pEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresasppField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object pEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresasppField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object pEmpresasppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object pEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresasppField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresasppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresasppField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object pEmpresasppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object pEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresasppField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresasppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object pEmpresasppField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object pEmpresasppField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object pEmpresasppField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresasppField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresasppField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object pEmpresasppField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object pEmpresasppField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
    object pEmpresasppField212: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ultimo_NSU'
      FieldName = 'Ultimo_NSU'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 211
    end
    object pEmpresasppField213: TppField
      FieldAlias = 'UF_WEBServiceEPEC'
      FieldName = 'UF_WEBServiceEPEC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 212
    end
    object pEmpresasppField214: TppField
      FieldAlias = 'Licensa_CTE_Util'
      FieldName = 'Licensa_CTE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 213
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField215: TppField
      FieldAlias = 'UF_WebServiceCTe'
      FieldName = 'UF_WebServiceCTe'
      FieldLength = 10
      DisplayWidth = 10
      Position = 214
    end
    object pEmpresasppField216: TppField
      FieldAlias = 'Email_Criptografia'
      FieldName = 'Email_Criptografia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 215
    end
    object pEmpresasppField217: TppField
      FieldAlias = 'Email_MsgFollowUp'
      FieldName = 'Email_MsgFollowUp'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 216
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField218: TppField
      FieldAlias = 'FCP_Interno'
      FieldName = 'FCP_Interno'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 217
    end
    object pEmpresasppField219: TppField
      FieldAlias = 'ImportarPlanPed_Bloqueado'
      FieldName = 'ImportarPlanPed_Bloqueado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 218
    end
  end
  object pInvoice: TppDBPipeline
    DataSource = dstInvoice
    CloseDataSource = True
    UserName = 'pInvoice'
    Left = 375
    Top = 113
    object pInvoiceppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 40
      DisplayWidth = 40
      Position = 0
    end
    object pInvoiceppField2: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pInvoiceppField3: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object pInvoiceppField4: TppField
      FieldAlias = 'Moeda'
      FieldName = 'Moeda'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object pInvoiceppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cotacao'
      FieldName = 'Cotacao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pInvoiceppField6: TppField
      FieldAlias = 'INCOTERMS'
      FieldName = 'INCOTERMS'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object pInvoiceppField7: TppField
      FieldAlias = 'INCOTERMS_Desc'
      FieldName = 'INCOTERMS_Desc'
      FieldLength = 70
      DisplayWidth = 70
      Position = 6
    end
    object pInvoiceppField8: TppField
      FieldAlias = 'Condicao_Cambial'
      FieldName = 'Condicao_Cambial'
      FieldLength = 100
      DisplayWidth = 100
      Position = 7
    end
    object pInvoiceppField9: TppField
      FieldAlias = 'Condicao_Venda'
      FieldName = 'Condicao_Venda'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pInvoiceppField10: TppField
      FieldAlias = 'Exportador'
      FieldName = 'Exportador'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object pInvoiceppField11: TppField
      FieldAlias = 'Exportador_End1'
      FieldName = 'Exportador_End1'
      FieldLength = 105
      DisplayWidth = 105
      Position = 10
    end
    object pInvoiceppField12: TppField
      FieldAlias = 'Exportador_End2'
      FieldName = 'Exportador_End2'
      FieldLength = 104
      DisplayWidth = 104
      Position = 11
    end
    object pInvoiceppField13: TppField
      FieldAlias = 'Exportador_CNPJ'
      FieldName = 'Exportador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 12
    end
    object pInvoiceppField14: TppField
      FieldAlias = 'Importador_Nome'
      FieldName = 'Importador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object pInvoiceppField15: TppField
      FieldAlias = 'Importador_Ender'
      FieldName = 'Importador_Ender'
      FieldLength = 55
      DisplayWidth = 55
      Position = 14
    end
    object pInvoiceppField16: TppField
      FieldAlias = 'Importador_Cida'
      FieldName = 'Importador_Cida'
      FieldLength = 91
      DisplayWidth = 91
      Position = 15
    end
    object pInvoiceppField17: TppField
      FieldAlias = 'Importador_Contato'
      FieldName = 'Importador_Contato'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pInvoiceppField18: TppField
      FieldAlias = 'Importador_Telefone'
      FieldName = 'Importador_Telefone'
      FieldLength = 41
      DisplayWidth = 41
      Position = 17
    end
    object pInvoiceppField19: TppField
      FieldAlias = 'Importador_Email'
      FieldName = 'Importador_Email'
      FieldLength = 67
      DisplayWidth = 67
      Position = 18
    end
    object pInvoiceppField20: TppField
      FieldAlias = 'Pais_OrigemNome'
      FieldName = 'Pais_OrigemNome'
      FieldLength = 40
      DisplayWidth = 40
      Position = 19
    end
    object pInvoiceppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Liquido'
      FieldName = 'Peso_Liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object pInvoiceppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Bruto'
      FieldName = 'Peso_Bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object pInvoiceppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volumes_Quantidade'
      FieldName = 'Volumes_Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object pInvoiceppField24: TppField
      FieldAlias = 'Local_Embarque'
      FieldName = 'Local_Embarque'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object pInvoiceppField25: TppField
      FieldAlias = 'Local_Entrega'
      FieldName = 'Local_Entrega'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object pInvoiceppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicao_Frete'
      FieldName = 'Condicao_Frete'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object pInvoiceppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Seguradora'
      FieldName = 'Seguradora'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object pInvoiceppField28: TppField
      FieldAlias = 'Pais_Fornecedor'
      FieldName = 'Pais_Fornecedor'
      FieldLength = 40
      DisplayWidth = 40
      Position = 27
    end
    object pInvoiceppField29: TppField
      FieldAlias = 'Pais_Destino'
      FieldName = 'Pais_Destino'
      FieldLength = 40
      DisplayWidth = 40
      Position = 28
    end
    object pInvoiceppField30: TppField
      FieldAlias = 'Pais_Origem'
      FieldName = 'Pais_Origem'
      FieldLength = 40
      DisplayWidth = 40
      Position = 29
    end
    object pInvoiceppField31: TppField
      FieldAlias = 'Notificar_Nome'
      FieldName = 'Notificar_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 30
    end
    object pInvoiceppField32: TppField
      FieldAlias = 'Notificar_Ender'
      FieldName = 'Notificar_Ender'
      FieldLength = 55
      DisplayWidth = 55
      Position = 31
    end
    object pInvoiceppField33: TppField
      FieldAlias = 'Notificar_Cida'
      FieldName = 'Notificar_Cida'
      FieldLength = 91
      DisplayWidth = 91
      Position = 32
    end
    object pInvoiceppField34: TppField
      FieldAlias = 'Via_Transporte'
      FieldName = 'Via_Transporte'
      FieldLength = 30
      DisplayWidth = 30
      Position = 33
    end
  end
  object rInvoice: TppReport
    AutoStop = False
    DataPipeline = pInvoice
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Commercial Invoice'
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
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\Invoice_Exportac' +
      'ao.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rInvoiceBeforePrint
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
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = []
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 374
    Top = 271
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pInvoice'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 47096
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 6900
        mmLeft = 33073
        mmTop = 0
        mmWidth = 163830
        BandType = 0
        LayerName = Foreground1
      end
      object lEndereco: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 33073
        mmTop = 6350
        mmWidth = 163830
        BandType = 0
        LayerName = Foreground1
      end
      object lEndereco2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 33073
        mmTop = 9525
        mmWidth = 163830
        BandType = 0
        LayerName = Foreground1
      end
      object lEndereco3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 33073
        mmTop = 12700
        mmWidth = 163830
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3006
        mmLeft = 33073
        mmTop = 15875
        mmWidth = 163830
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Hyperlink = 'www.abrasil.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Site'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 2910
        mmLeft = 35190
        mmTop = 45244
        mmWidth = 163777
        BandType = 0
        LayerName = Foreground1
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12851
        mmLeft = 950
        mmTop = 1140
        mmWidth = 26647
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COMMERCIAL INVOICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7451
        mmLeft = 61119
        mmTop = 28840
        mmWidth = 75142
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line32'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 27781
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line33'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 3969
        mmLeft = 0
        mmTop = 37042
        mmWidth = 197380
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
      mmHeight = 83079
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Pen.Width = 0
        mmHeight = 20222
        mmLeft = 99219
        mmTop = 0
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Pen.Width = 0
        mmHeight = 16318
        mmLeft = 0
        mmTop = 52507
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Width = 0
        mmHeight = 16669
        mmLeft = 0
        mmTop = 20902
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Pen.Width = 0
        mmHeight = 20108
        mmLeft = 0
        mmTop = 0
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Exporter/Shipper:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 264
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground1
      end
      object lNomeExp: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lNomeExp'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Exportador'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 1058
        mmTop = 4763
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Contact:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1054
        mmTop = 52686
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Sold to/Consignee:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 21166
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Invoice:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 100203
        mmTop = 264
        mmWidth = 12095
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 151607
        mmTop = 264
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Numero'
        DataPipeline = pInvoice
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pInvoice'
        mmHeight = 4801
        mmLeft = 103937
        mmTop = 4763
        mmWidth = 20789
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pInvoice'
        mmHeight = 4801
        mmLeft = 151607
        mmTop = 4763
        mmWidth = 26857
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lNomeExp1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Exportador_End1'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 1058
        mmTop = 8467
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lNomeExp2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Exportador_End2'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 1058
        mmTop = 12171
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 1058
        mmTop = 15875
        mmWidth = 6265
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Exportador_CNPJ'
        DataPipeline = pInvoice
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 8202
        mmTop = 15875
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lNomeExp3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Nome'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 25664
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Ender'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 29368
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText31'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Cida'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 33073
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Contato'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 1054
        mmTop = 57005
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText301'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Telefone'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 1054
        mmTop = 60709
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText33'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Email'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 1054
        mmTop = 64413
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape13'
        Pen.Width = 0
        mmHeight = 13229
        mmLeft = 99219
        mmTop = 38364
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Commercial Terms:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 100013
        mmTop = 38628
        mmWidth = 21545
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INCOTERMS'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 2910
        mmLeft = 100277
        mmTop = 42333
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape17'
        Pen.Width = 0
        mmHeight = 16669
        mmLeft = 99219
        mmTop = 20902
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Notify:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 100277
        mmTop = 21166
        mmWidth = 10772
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Notificar_Nome'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 100277
        mmTop = 25664
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText302'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Notificar_Ender'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 100277
        mmTop = 29368
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText37'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Notificar_Cida'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 100277
        mmTop = 33073
        mmWidth = 95250
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4647
        mmLeft = 100236
        mmTop = 4763
        mmWidth = 3447
        BandType = 4
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pInvoiceItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 72496
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pInvoiceItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Cybersoft - Commercial Invoice'
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
          DataPipelineName = 'pInvoiceItens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape6: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape6'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 118016
              mmTop = 0
              mmWidth = 20373
              BandType = 1
              LayerName = Foreground
            end
            object ppShape5: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape5'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 86266
              mmTop = 0
              mmWidth = 15875
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'QTY/PKT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 86794
              mmTop = 529
              mmWidth = 14817
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'DESCRIPTION OF GOODS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 1085
              mmTop = 529
              mmWidth = 84930
              BandType = 1
              LayerName = Foreground
            end
            object ppShape8: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape8'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 101876
              mmTop = 0
              mmWidth = 16404
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label18'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'QTY UNIT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 102405
              mmTop = 529
              mmWidth = 15347
              BandType = 1
              LayerName = Foreground
            end
            object ppShape10: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape10'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 155575
              mmTop = 0
              mmWidth = 19844
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label20'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'UNIT VALUE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 156104
              mmTop = 529
              mmWidth = 18785
              BandType = 1
              LayerName = Foreground
            end
            object ppShape11: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape101'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 175155
              mmTop = 0
              mmWidth = 22225
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label201'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'TOTAL VALUE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 175684
              mmTop = 529
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label16'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'NET WEIGHT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 118545
              mmTop = 529
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground
            end
            object ppShape9: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape102'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 138113
              mmTop = 0
              mmWidth = 17727
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label202'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 138641
              mmTop = 529
              mmWidth = 16670
              BandType = 1
              LayerName = Foreground
            end
            object ppShape7: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape7'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = -197
              mmTop = 49
              mmWidth = 86519
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
            mmHeight = 23020
            mmPrintPosition = 0
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 23020
              mmLeft = -176
              mmTop = 0
              mmWidth = 1701
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText17'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade_MT'
              DataPipeline = pInvoiceItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3471
              mmLeft = 118545
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 23020
              mmLeft = 101876
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade_Vol'
              DataPipeline = pInvoiceItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3440
              mmLeft = 102405
              mmTop = 0
              mmWidth = 15347
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 23020
              mmLeft = 86256
              mmTop = 0
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 23020
              mmLeft = 155575
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 23020
              mmLeft = 175155
              mmTop = 0
              mmWidth = 2457
              BandType = 4
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line19'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpRight
              StretchWithParent = True
              mmHeight = 23020
              mmLeft = 194734
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText20'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_Unitario'
              DataPipeline = pInvoiceItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3440
              mmLeft = 156104
              mmTop = 0
              mmWidth = 18786
              BandType = 4
              LayerName = Foreground
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 23020
              mmLeft = 117927
              mmTop = 0
              mmWidth = 1890
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText201'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pInvoiceItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3440
              mmLeft = 175685
              mmTop = 0
              mmWidth = 21166
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText202'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'NCM'
              DataPipeline = pInvoiceItens
              DisplayFormat = '####.##.##;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3471
              mmLeft = 138641
              mmTop = 0
              mmWidth = 16670
              BandType = 4
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 23020
              mmLeft = 138110
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText16'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pInvoiceItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3471
              mmLeft = 86795
              mmTop = 0
              mmWidth = 14817
              BandType = 4
              LayerName = Foreground
            end
            object ppDBMemo1: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo1'
              KeepTogether = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              CharWrap = True
              DataField = 'Descricao'
              DataPipeline = pInvoiceItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              RemoveEmptyLines = False
              Stretch = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3402
              mmLeft = 1085
              mmTop = 0
              mmWidth = 84930
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7673
            mmPrintPosition = 0
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line21'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 4233
              mmLeft = 175155
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label22'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 156104
              mmTop = 528
              mmWidth = 18786
              BandType = 7
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line22'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 4233
              mmLeft = 155575
              mmTop = 89
              mmWidth = 2910
              BandType = 7
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 265
              mmLeft = 0
              mmTop = 0
              mmWidth = 197380
              BandType = 7
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 4233
              mmLeft = 195792
              mmTop = 0
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 3440
              mmLeft = 155575
              mmTop = 4233
              mmWidth = 41804
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pInvoiceItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3471
              mmLeft = 175685
              mmTop = 528
              mmWidth = 21166
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
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape18'
        Pen.Width = 0
        mmHeight = 13229
        mmLeft = 0
        mmTop = 38364
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label32'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Terms of Sale:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 794
        mmTop = 38628
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText38'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Condicao_Venda'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 8467
        mmLeft = 1059
        mmTop = 42333
        mmWidth = 95779
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText39'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INCOTERMS_Desc'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 2910
        mmLeft = 113771
        mmTop = 42333
        mmWidth = 81756
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel63: TppLabel
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
        mmHeight = 3175
        mmLeft = 224
        mmTop = 529
        mmWidth = 45508
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
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
        mmLeft = 79375
        mmTop = 529
        mmWidth = 38894
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
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
        mmLeft = 118534
        mmTop = 529
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 265
        mmWidth = 3213
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
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
        mmLeft = 181769
        mmTop = 265
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 178859
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 71967
      mmPrintPosition = 0
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape12'
        Pen.Width = 0
        mmHeight = 21431
        mmLeft = 0
        mmTop = 5292
        mmWidth = 52388
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line25'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 9525
        mmWidth = 52388
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Net Weight (KG)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 794
        mmTop = 5821
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 13758
        mmWidth = 52388
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Gross Weight (KG)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 794
        mmTop = 10054
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 21431
        mmLeft = 28046
        mmTop = 5292
        mmWidth = 5821
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total of Volumes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 794
        mmTop = 14288
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 17992
        mmWidth = 52388
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INCOTERM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 794
        mmTop = 18521
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 22225
        mmWidth = 52388
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Peso_Liquido'
        DataPipeline = pInvoice
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 28575
        mmTop = 5821
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Peso_Bruto'
        DataPipeline = pInvoice
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 28575
        mmTop = 10054
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Volumes_Quantidade'
        DataPipeline = pInvoice
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 28575
        mmTop = 14288
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INCOTERMS'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 28575
        mmTop = 18521
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape15'
        Pen.Width = 0
        mmHeight = 21431
        mmLeft = 53181
        mmTop = 5292
        mmWidth = 86519
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 53181
        mmTop = 9525
        mmWidth = 86519
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Port or Airport of Origin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 53975
        mmTop = 5821
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 53181
        mmTop = 13758
        mmWidth = 86519
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Port or Airport of Destination'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 53975
        mmTop = 10054
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 21431
        mmLeft = 91546
        mmTop = 5292
        mmWidth = 1058
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Freight Condition'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 53975
        mmTop = 14288
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 53181
        mmTop = 17992
        mmWidth = 86519
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Insurance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 53975
        mmTop = 18521
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 53181
        mmTop = 22225
        mmWidth = 86519
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Local_Embarque'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 92340
        mmTop = 5821
        mmWidth = 47361
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Local_Entrega'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 92340
        mmTop = 10054
        mmWidth = 47361
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Condicao_Frete'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 92340
        mmTop = 14288
        mmWidth = 47361
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Seguradora'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 92340
        mmTop = 18521
        mmWidth = 47361
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape16'
        Pen.Width = 0
        mmHeight = 21431
        mmLeft = 140759
        mmTop = 5292
        mmWidth = 56621
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 140759
        mmTop = 9525
        mmWidth = 56621
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Country of Supply'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 5821
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 140759
        mmTop = 13758
        mmWidth = 56621
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Country of Shipment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 10054
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 21431
        mmLeft = 168805
        mmTop = 5292
        mmWidth = 5821
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Country of Origin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 14288
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 140759
        mmTop = 17992
        mmWidth = 56621
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line31'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 140759
        mmTop = 22225
        mmWidth = 56621
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Pais_Fornecedor'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 169334
        mmTop = 5821
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText34'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Pais_Destino'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 169334
        mmTop = 10054
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText35'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Pais_Origem'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 169334
        mmTop = 14288
        mmWidth = 26988
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Way of Shipment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 53975
        mmTop = 22754
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Via_Transporte'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 92340
        mmTop = 22754
        mmWidth = 47361
        BandType = 7
        LayerName = Foreground1
      end
      object iAssinatura: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iAssinatura'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 19844
        mmLeft = 140759
        mmTop = 37835
        mmWidth = 48154
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
  object tInvoice: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_ROTTA'
      'SET LANGUAGE English'
      'SELECT Inv.Numero'
      '      ,Inv.Data'
      '      ,Inv.Processo'
      
        '      ,Moeda               = (SELECT Simbolo FROM Cybersoft_Cada' +
        'stros.dbo.Moedas WHERE Codigo = Inv.Moeda_Exp)'
      
        '      ,Cotacao             = ISNULL((SELECT Valor FROM Cybersoft' +
        '_Cadastros.dbo.Cotacao WHERE Moeda = Inv.Moeda_Exp AND Data = In' +
        'v.Data),0)'
      '      ,Inv.INCOTERMS'
      
        '      ,INCOTERMS_Desc      = (SELECT Descricao FROM Cybersoft_Ca' +
        'dastros.dbo.INCOTERMS where Codigo = Inv.INCOTERMS)'
      
        '      ,Condicao_Cambial    = (SELECT Descricao FROM CondicaoCamb' +
        'ial WHERE Codigo = Inv.Condicao_Cambio)'
      '      ,Condicao_Venda      = Inv.Condicao_Venda'
      
        '      ,Exportador          = (SELECT Razao_Social FROM Cybersoft' +
        '_Cadastros.dbo.Empresas WHERE Codigo = 1)'
      
        '      ,Exportador_End1     = (SELECT Rua+'#39', '#39'+CAST(Rua_Numero AS' +
        ' varchar(10))+'#39' - '#39'+Bairro FROM Cybersoft_Cadastros.dbo.Empresas' +
        ' WHERE Codigo = 1)'
      
        '      ,Exportador_End2     = (SELECT CEP+'#39' - '#39'+(SELECT Nome FROM' +
        ' Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = Municipio_Cod' +
        'igo) +'#39' - '#39'+'
      
        '                             (SELECT Nome_Ingles FROM Cybersoft_' +
        'Cadastros.dbo.Paises WHERE Codigo = 1058) FROM Cybersoft_Cadastr' +
        'os.dbo.Empresas Emp WHERE Emp.Codigo = 1)'
      
        '      ,Exportador_CNPJ     = (SELECT CNPJ FROM Cybersoft_Cadastr' +
        'os.dbo.Empresas WHERE Codigo = 1)'
      
        '      ,Importador_Nome     = (SELECT Nome FROM Clientes WHERE Co' +
        'digo = Inv.Cliente)'
      
        '      ,Importador_Ender    = (SELECT ISNULL(Rua, '#39#39')+ISNULL('#39', N' +
        #186' '#39'+Rua_Numero, '#39#39') FROM Clientes WHERE Codigo = Inv.Cliente)'
      
        '      ,Importador_Cida     = (SELECT CEP + '#39' '#39' + Bairro + '#39', '#39' +' +
        ' (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE C' +
        'odigo = Inv.Pais_Destino) FROM Clientes WHERE Codigo = Inv.Clien' +
        'te)'
      
        '      ,Importador_Contato  = (SELECT Contato FROM Clientes WHERE' +
        ' Codigo = Inv.Cliente)'
      
        '      ,Importador_Telefone = '#39'Telephone:'#39'+(SELECT Telefone1 + '#39'/' +
        #39'+Telefone2 FROM Clientes WHERE Codigo = Inv.Cliente)'
      
        '      ,Importador_Email    = '#39'E-Mail:'#39'+(SELECT Email FROM Client' +
        'es WHERE Codigo = Inv.Cliente)'
      
        '      ,Pais_OrigemNome     = (SELECT Nome_Ingles FROM Cybersoft_' +
        'Cadastros.dbo.Paises WHERE Codigo = 1058)'
      '      ,Peso_Liquido'
      '      ,Peso_Bruto'
      '      ,Volumes_Quantidade'
      '      ,Local_Embarque'
      '      ,Local_Entrega'
      '      ,Condicao_Frete      = NULL'
      '      ,Seguradora          = NULL'
      
        '      ,Pais_Fornecedor     = (SELECT Nome_Ingles FROM Cybersoft_' +
        'Cadastros.dbo.Paises WHERE Codigo = (SELECT Pais FROM Fornecedor' +
        'es WHERE Codigo = Inv.Exportador) )'
      
        '      ,Pais_Destino        = (SELECT Nome_Ingles FROM Cybersoft_' +
        'Cadastros.dbo.Paises WHERE Codigo = Pais_Origem )'
      
        '      ,Pais_Origem         = (SELECT Nome_Ingles FROM Cybersoft_' +
        'Cadastros.dbo.Paises WHERE Codigo = 1058 )'
      
        '      ,Notificar_Nome      = (SELECT Nome FROM Clientes WHERE Co' +
        'digo = Inv.Cliente)'
      
        '      ,Notificar_Ender     = (SELECT ISNULL(Rua, '#39#39')+ISNULL('#39', N' +
        #186' '#39'+Rua_Numero, '#39#39') FROM Clientes WHERE Codigo = Inv.Cliente)'
      
        '      ,Notificar_Cida      = (SELECT CEP + '#39' '#39' + Bairro + '#39', '#39' +' +
        ' (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE C' +
        'odigo = Inv.Pais_Destino) FROM Clientes WHERE Codigo = Inv.Clien' +
        'te)'
      
        '      ,Via_Transporte      = (SELECT Descricao_Ingles FROM Cyber' +
        'soft_Cadastros.dbo.ViaTransporte WHERE Codigo = Via_Transporte) '
      'FROM  Invoice Inv'
      'WHERE Inv.Numero = '#39'1'#39)
    Active = True
    Left = 148
    Top = 108
  end
  object dstInvoice: TDataSource
    DataSet = tInvoice
    Left = 148
    Top = 156
  end
  object tInvoiceItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_Rotta'
      'SELECT Codigo_Mercadoria'
      '      ,Quantidade'
      
        '      ,Quantidade_MT  = Quantidade * (SELECT Quantidade_Unidade ' +
        'FROM Produtos WHERE Codigo = Codigo_Mercadoria)'
      
        '      ,Quantidade_Uni = (SELECT Quantidade_Unidade FROM Produtos' +
        ' WHERE Codigo = Codigo_Mercadoria)'
      
        '      ,Quantidade_Vol = (SELECT Quantidade_Volumes FROM Produtos' +
        ' WHERE Codigo = Codigo_Mercadoria)'
      
        '      ,Unidade        = (SELECT Unidade FROM Produtos WHERE Codi' +
        'go = Codigo_Mercadoria)'
      
        '      ,Unidade_Vol    = (SELECT Unidade_Origem FROM Produtos WHE' +
        'RE Codigo = Codigo_Mercadoria)'
      '      ,Valor_Unitario'
      
        '      ,Valor_Total = Valor_Unitario * (Quantidade * (SELECT Quan' +
        'tidade_Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria))'
      
        '      ,Descricao = (SELECT Descricao_Ingles FROM Produtos WHERE ' +
        'Codigo = Codigo_Mercadoria)'
      '      ,NCM'
      'FROM  InvoiceItens '
      'WHERE Invoice = '#39'1'#39
      'ORDER BY Codigo_Mercadoria')
    FetchRows = 1
    Active = True
    Left = 220
    Top = 108
  end
  object dstInvoiceItens: TDataSource
    DataSet = tInvoiceItens
    Left = 220
    Top = 156
  end
  object pInvoiceItens: TppDBPipeline
    DataSource = dstInvoiceItens
    CloseDataSource = True
    UserName = 'pInvoiceItens'
    Left = 375
    Top = 161
    object pInvoiceItensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Mercadoria'
      FieldName = 'Codigo_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pInvoiceItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object pInvoiceItensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_MT'
      FieldName = 'Quantidade_MT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object pInvoiceItensppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Uni'
      FieldName = 'Quantidade_Uni'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object pInvoiceItensppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Vol'
      FieldName = 'Quantidade_Vol'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pInvoiceItensppField6: TppField
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object pInvoiceItensppField7: TppField
      FieldAlias = 'Unidade_Vol'
      FieldName = 'Unidade_Vol'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object pInvoiceItensppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pInvoiceItensppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pInvoiceItensppField10: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 5000
      DisplayWidth = 5000
      Position = 9
    end
    object pInvoiceItensppField11: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 140
    Top = 244
  end
  object mPlan: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 140
    Top = 300
  end
end
