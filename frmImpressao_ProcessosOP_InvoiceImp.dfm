object Impressao_ProcessosOP_InvoiceImp: TImpressao_ProcessosOP_InvoiceImp
  Left = 489
  Top = 216
  BorderStyle = bsDialog
  Caption = 'Impressao_ProcessosOP_InvoiceImp'
  ClientHeight = 461
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 610
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = 8
    ExplicitTop = 128
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
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
    Top = 22
    Width = 342
    Height = 18
    Caption = 'Impress'#227'o da Fatura Importa'#231#227'o (Commercial Invoice).'
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
    Top = 429
    Width = 610
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 534
      Top = 2
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 204
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = Dados.dsInvoice
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
      ShowHint = True
      TabOrder = 1
    end
    object bImprimir: TButton
      AlignWithMargins = True
      Left = 458
      Top = 2
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bImprimirClick
    end
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 604
    Height = 348
    Align = alTop
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
        Title.Caption = 'N'#186' Fatura'
        Width = 139
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Fatura'
        Title.Alignment = taCenter
        Title.Caption = 'Total (R$)'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_FaturaME'
        Title.Alignment = taCenter
        Title.Caption = 'Total (ME)'
        Width = 120
        Visible = True
      end>
  end
  object StaticText5: TStaticText
    Left = 4
    Top = 399
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
    Left = 60
    Top = 399
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
    OnChange = cPesquisaChange
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 344
    Top = 266
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
  end
  object pInvoice: TppDBPipeline
    DataSource = dstInvoice
    UserName = 'pInvoice'
    Left = 344
    Top = 168
    object pInvoiceppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Registro'
      FieldName = 'Registro'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pInvoiceppField2: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object pInvoiceppField3: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object pInvoiceppField4: TppField
      FieldAlias = 'Imp_Exp'
      FieldName = 'Imp_Exp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object pInvoiceppField5: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object pInvoiceppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Importador'
      FieldName = 'Importador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object pInvoiceppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Exportador'
      FieldName = 'Exportador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object pInvoiceppField8: TppField
      FieldAlias = 'INCOTERMS'
      FieldName = 'INCOTERMS'
      FieldLength = 3
      DisplayWidth = 3
      Position = 7
    end
    object pInvoiceppField9: TppField
      FieldAlias = 'Pais_Origem'
      FieldName = 'Pais_Origem'
      FieldLength = 4
      DisplayWidth = 4
      Position = 8
    end
    object pInvoiceppField10: TppField
      FieldAlias = 'Pais_Destino'
      FieldName = 'Pais_Destino'
      FieldLength = 4
      DisplayWidth = 4
      Position = 9
    end
    object pInvoiceppField11: TppField
      FieldAlias = 'Destino'
      FieldName = 'Destino'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object pInvoiceppField12: TppField
      FieldAlias = 'Condicao_Venda'
      FieldName = 'Condicao_Venda'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pInvoiceppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicao_Cambio'
      FieldName = 'Condicao_Cambio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object pInvoiceppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda'
      FieldName = 'Moeda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object pInvoiceppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_Cambio'
      FieldName = 'Taxa_Cambio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object pInvoiceppField16: TppField
      FieldAlias = 'Local_Embarque'
      FieldName = 'Local_Embarque'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object pInvoiceppField17: TppField
      FieldAlias = 'Data_Embarque'
      FieldName = 'Data_Embarque'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object pInvoiceppField18: TppField
      FieldAlias = 'Local_Chegada'
      FieldName = 'Local_Chegada'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object pInvoiceppField19: TppField
      FieldAlias = 'Partida'
      FieldName = 'Partida'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object pInvoiceppField20: TppField
      FieldAlias = 'Dados_Bancarios'
      FieldName = 'Dados_Bancarios'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 19
      Searchable = False
      Sortable = False
    end
    object pInvoiceppField21: TppField
      FieldAlias = 'Notificar'
      FieldName = 'Notificar'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 20
      Searchable = False
      Sortable = False
    end
    object pInvoiceppField22: TppField
      FieldAlias = 'Destinatario'
      FieldName = 'Destinatario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 21
      Searchable = False
      Sortable = False
    end
    object pInvoiceppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Liquido'
      FieldName = 'Peso_Liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object pInvoiceppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Bruto'
      FieldName = 'Peso_Bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object pInvoiceppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volumes_Quantidade'
      FieldName = 'Volumes_Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object pInvoiceppField26: TppField
      FieldAlias = 'Volumes_Numero'
      FieldName = 'Volumes_Numero'
      FieldLength = 30
      DisplayWidth = 30
      Position = 25
    end
    object pInvoiceppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Metro_Cubico'
      FieldName = 'Metro_Cubico'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object pInvoiceppField28: TppField
      FieldAlias = 'Total_Fatura'
      FieldName = 'Total_Fatura'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object pInvoiceppField29: TppField
      FieldAlias = 'Total_FaturaME'
      FieldName = 'Total_FaturaME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 28
    end
    object pInvoiceppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Total'
      FieldName = 'Quantidade_Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object pInvoiceppField31: TppField
      FieldAlias = 'Observacoes'
      FieldName = 'Observacoes'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 30
      Searchable = False
      Sortable = False
    end
    object pInvoiceppField32: TppField
      FieldAlias = 'Data_Vencimento'
      FieldName = 'Data_Vencimento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pInvoiceppField33: TppField
      FieldAlias = 'Data_BL'
      FieldName = 'Data_BL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 32
    end
    object pInvoiceppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object pInvoiceppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'Banco_Exportador'
      FieldName = 'Banco_Exportador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object pInvoiceppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'Banco_Importador'
      FieldName = 'Banco_Importador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object pInvoiceppField37: TppField
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 36
    end
    object pInvoiceppField38: TppField
      FieldAlias = 'BL'
      FieldName = 'BL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 37
    end
    object pInvoiceppField39: TppField
      FieldAlias = 'Especie'
      FieldName = 'Especie'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object pInvoiceppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Via_Transporte'
      FieldName = 'Via_Transporte'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object pInvoiceppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'Proposta'
      FieldName = 'Proposta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 40
    end
    object pInvoiceppField42: TppField
      FieldAlias = 'Transbordo'
      FieldName = 'Transbordo'
      FieldLength = 60
      DisplayWidth = 60
      Position = 41
    end
    object pInvoiceppField43: TppField
      FieldAlias = 'Transit_Time'
      FieldName = 'Transit_Time'
      FieldLength = 30
      DisplayWidth = 30
      Position = 42
    end
    object pInvoiceppField44: TppField
      FieldAlias = 'Frequencia'
      FieldName = 'Frequencia'
      FieldLength = 30
      DisplayWidth = 30
      Position = 43
    end
    object pInvoiceppField45: TppField
      FieldAlias = 'Armador'
      FieldName = 'Armador'
      FieldLength = 60
      DisplayWidth = 60
      Position = 44
    end
    object pInvoiceppField46: TppField
      FieldAlias = 'Container'
      FieldName = 'Container'
      FieldLength = 60
      DisplayWidth = 60
      Position = 45
    end
    object pInvoiceppField47: TppField
      FieldAlias = 'Produto'
      FieldName = 'Produto'
      FieldLength = 60
      DisplayWidth = 60
      Position = 46
    end
    object pInvoiceppField48: TppField
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 47
    end
    object pInvoiceppField49: TppField
      FieldAlias = 'Tipo_Embalagem'
      FieldName = 'Tipo_Embalagem'
      FieldLength = 30
      DisplayWidth = 30
      Position = 48
    end
    object pInvoiceppField50: TppField
      FieldAlias = 'Volume'
      FieldName = 'Volume'
      FieldLength = 60
      DisplayWidth = 60
      Position = 49
    end
    object pInvoiceppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pallets'
      FieldName = 'Pallets'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 50
    end
    object pInvoiceppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_Recebida'
      FieldName = 'Comissao_Recebida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 51
    end
    object pInvoiceppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_Paga'
      FieldName = 'Comissao_Paga'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 52
    end
    object pInvoiceppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Unidade'
      FieldName = 'Quantidade_Unidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 53
    end
    object pInvoiceppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator'
      FieldName = 'Fator'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 54
    end
    object pInvoiceppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Exp'
      FieldName = 'Moeda_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object pInvoiceppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cotacao_Exp'
      FieldName = 'Cotacao_Exp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 56
    end
    object pInvoiceppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Imp'
      FieldName = 'Moeda_Imp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object pInvoiceppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cotacao_Imp'
      FieldName = 'Cotacao_Imp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 58
    end
    object pInvoiceppField60: TppField
      FieldAlias = 'Frete_PrePaid'
      FieldName = 'Frete_PrePaid'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 59
    end
    object pInvoiceppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Frete'
      FieldName = 'Moeda_Frete'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pInvoiceppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cotacao_Frete'
      FieldName = 'Cotacao_Frete'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 61
    end
    object pInvoiceppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'IRPJ'
      FieldName = 'IRPJ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 62
    end
    object pInvoiceppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'CSLL'
      FieldName = 'CSLL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 63
    end
    object pInvoiceppField65: TppField
      FieldAlias = 'Base_Comissao'
      FieldName = 'Base_Comissao'
      FieldLength = 1
      DisplayWidth = 1
      Position = 64
    end
    object pInvoiceppField66: TppField
      FieldAlias = 'Local_Entrega'
      FieldName = 'Local_Entrega'
      FieldLength = 60
      DisplayWidth = 60
      Position = 65
    end
    object pInvoiceppField67: TppField
      FieldAlias = 'Recinto_Aduaneiro'
      FieldName = 'Recinto_Aduaneiro'
      FieldLength = 7
      DisplayWidth = 7
      Position = 66
    end
    object pInvoiceppField68: TppField
      FieldAlias = 'DI'
      FieldName = 'DI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 67
    end
    object pInvoiceppField69: TppField
      FieldAlias = 'Local_Condicao'
      FieldName = 'Local_Condicao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 68
    end
    object pInvoiceppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'Metodo_Valoracao'
      FieldName = 'Metodo_Valoracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 69
    end
    object pInvoiceppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cobertura_Cambial'
      FieldName = 'Cobertura_Cambial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 70
    end
    object pInvoiceppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Financiadora'
      FieldName = 'Financiadora'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pInvoiceppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'Motivo_SemCobertura'
      FieldName = 'Motivo_SemCobertura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 72
    end
    object pInvoiceppField74: TppField
      FieldAlias = 'Aplicacao'
      FieldName = 'Aplicacao'
      FieldLength = 7
      DisplayWidth = 7
      Position = 73
    end
    object pInvoiceppField75: TppField
      FieldAlias = 'Condicao_Mercadoria'
      FieldName = 'Condicao_Mercadoria'
      FieldLength = 5
      DisplayWidth = 5
      Position = 74
    end
    object pInvoiceppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'Seguro'
      FieldName = 'Seguro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 75
    end
    object pInvoiceppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Seguro'
      FieldName = 'Moeda_Seguro'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pInvoiceppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pais_Aquisicao'
      FieldName = 'Pais_Aquisicao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object pInvoiceppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'Modalidade_Importacao'
      FieldName = 'Modalidade_Importacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 78
    end
    object pInvoiceppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'Transportador'
      FieldName = 'Transportador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 79
    end
    object pInvoiceppField81: TppField
      FieldAlias = 'Frete_Collect'
      FieldName = 'Frete_Collect'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 80
    end
    object pInvoiceppField82: TppField
      FieldAlias = 'Condicao_Frete'
      FieldName = 'Condicao_Frete'
      FieldLength = 60
      DisplayWidth = 60
      Position = 81
    end
    object pInvoiceppField83: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 82
    end
    object pInvoiceppField84: TppField
      FieldAlias = 'Cliente_End1'
      FieldName = 'Cliente_End1'
      FieldLength = 121
      DisplayWidth = 121
      Position = 83
    end
    object pInvoiceppField85: TppField
      FieldAlias = 'Cliente_End2'
      FieldName = 'Cliente_End2'
      FieldLength = 13
      DisplayWidth = 13
      Position = 84
    end
    object pInvoiceppField86: TppField
      FieldAlias = 'Cliente_Pais'
      FieldName = 'Cliente_Pais'
      FieldLength = 50
      DisplayWidth = 50
      Position = 85
    end
    object pInvoiceppField87: TppField
      FieldAlias = 'Telefones'
      FieldName = 'Telefones'
      FieldLength = 45
      DisplayWidth = 45
      Position = 86
    end
    object pInvoiceppField88: TppField
      FieldAlias = 'Data_Extenso'
      FieldName = 'Data_Extenso'
      FieldLength = 38
      DisplayWidth = 38
      Position = 87
    end
    object pInvoiceppField89: TppField
      FieldAlias = 'Moeda_Nome'
      FieldName = 'Moeda_Nome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 88
    end
    object pInvoiceppField90: TppField
      FieldAlias = 'PaisOrigem_Nome'
      FieldName = 'PaisOrigem_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 89
    end
    object pInvoiceppField91: TppField
      FieldAlias = 'Nome_Exportador'
      FieldName = 'Nome_Exportador'
      FieldLength = 60
      DisplayWidth = 60
      Position = 90
    end
    object pInvoiceppField92: TppField
      FieldAlias = 'Endereco_Exportador'
      FieldName = 'Endereco_Exportador'
      FieldLength = 75
      DisplayWidth = 75
      Position = 91
    end
    object pInvoiceppField93: TppField
      FieldAlias = 'Endereco2_Exportador'
      FieldName = 'Endereco2_Exportador'
      FieldLength = 50
      DisplayWidth = 50
      Position = 92
    end
    object pInvoiceppField94: TppField
      FieldAlias = 'ROF_Numero'
      FieldName = 'ROF_Numero'
      FieldLength = 8
      DisplayWidth = 8
      Position = 93
    end
    object pInvoiceppField95: TppField
      FieldAlias = 'ROF_Vencimento'
      FieldName = 'ROF_Vencimento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 94
    end
  end
  object rInvoice: TppReport
    AutoStop = False
    DataPipeline = pInvoice
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Commercial Invoice'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\ProcessosInvoice' +
      '.rtm'
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
    ThumbnailSettings.Visible = False
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
    Left = 344
    Top = 120
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pInvoice'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 40217
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
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 5165
        mmLeft = 33073
        mmTop = 0
        mmWidth = 152929
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
        mmTop = 5555
        mmWidth = 152929
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
        mmTop = 8730
        mmWidth = 152929
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
        mmTop = 11905
        mmWidth = 152929
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
        mmTop = 15080
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INVOICE'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 91282
        mmTop = 30427
        mmWidth = 27517
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
        mmHeight = 3006
        mmLeft = 33073
        mmTop = 18255
        mmWidth = 152929
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
        mmHeight = 16669
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
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
      mmHeight = 87842
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Pen.Width = 0
        mmHeight = 19315
        mmLeft = 0
        mmTop = 62706
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Width = 0
        mmHeight = 20109
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
        mmHeight = 20109
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
        Caption = 'Importer:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 1059
        mmTop = 529
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3471
        mmLeft = 1059
        mmTop = 4763
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object lEnderecoImp1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco2'
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
        mmHeight = 3006
        mmLeft = 1059
        mmTop = 8466
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object lEnderecoImp2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEnderecoImp2'
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
        mmHeight = 3006
        mmLeft = 1059
        mmTop = 11641
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object lEnderecoImp3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEnderecoImp3'
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
        mmHeight = 3006
        mmLeft = 1059
        mmTop = 14816
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Exporter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1059
        mmTop = 21431
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
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
        mmLeft = 1059
        mmTop = 63236
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Notificar'
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
        mmLeft = 1059
        mmTop = 67469
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Pen.Width = 0
        mmHeight = 82021
        mmLeft = 99219
        mmTop = 0
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Invoice N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 265
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 99219
        mmTop = 16140
        mmWidth = 98161
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
        mmLeft = 156898
        mmTop = 265
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 3970
        mmWidth = 38629
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data_Extenso'
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
        mmLeft = 156898
        mmTop = 3970
        mmWidth = 38629
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Customer Reference N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 16140
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo'
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
        mmLeft = 100277
        mmTop = 20108
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 99484
        mmTop = 24077
        mmWidth = 97896
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
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
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 24077
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
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
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 28046
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 99484
        mmTop = 32015
        mmWidth = 97896
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Currency of Settlement:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 32015
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
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
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 43921
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 99484
        mmTop = 39952
        mmWidth = 97896
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Mode of Shipment:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 39952
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Moeda_Nome'
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
        mmLeft = 100277
        mmTop = 35983
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 99219
        mmTop = 47890
        mmWidth = 97896
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Country of Origin:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 47890
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText102'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PaisOrigem_Nome'
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
        mmLeft = 100277
        mmTop = 51858
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 99219
        mmTop = 55827
        mmWidth = 97896
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Place of Shipment:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 55827
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Local_Embarque'
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
        mmLeft = 100277
        mmTop = 59796
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 99219
        mmTop = 63765
        mmWidth = 97896
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Destination:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 100277
        mmTop = 63765
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Destino'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3429
        mmLeft = 100277
        mmTop = 67733
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 99219
        mmTop = 71438
        mmWidth = 97896
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
        mmTop = 82815
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
          PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
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
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape5: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape5'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 13229
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'UNIT WT'
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
              mmLeft = 528
              mmTop = 529
              mmWidth = 12172
              BandType = 1
              LayerName = Foreground
            end
            object ppShape6: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape6'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 12965
              mmTop = 0
              mmWidth = 27517
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label16'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'CODE'
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
              mmLeft = 13495
              mmTop = 529
              mmWidth = 26459
              BandType = 1
              LayerName = Foreground
            end
            object ppShape7: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape7'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 40217
              mmTop = 0
              mmWidth = 77523
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
              mmHeight = 3471
              mmLeft = 40747
              mmTop = 529
              mmWidth = 76464
              BandType = 1
              LayerName = Foreground
            end
            object ppShape8: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape8'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 117475
              mmTop = 0
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label18'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'QTY'
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
              mmLeft = 118004
              mmTop = 529
              mmWidth = 17991
              BandType = 1
              LayerName = Foreground
            end
            object ppShape9: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape9'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 136261
              mmTop = 0
              mmWidth = 14288
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label19'
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
              mmHeight = 3471
              mmLeft = 136789
              mmTop = 529
              mmWidth = 13228
              BandType = 1
              LayerName = Foreground
            end
            object ppShape10: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape10'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 150284
              mmTop = 0
              mmWidth = 22490
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
              mmLeft = 150813
              mmTop = 529
              mmWidth = 21430
              BandType = 1
              LayerName = Foreground
            end
            object ppShape11: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape101'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 172509
              mmTop = 0
              mmWidth = 24871
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
              mmLeft = 173038
              mmTop = 529
              mmWidth = 23813
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
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText16'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Unidade_Peso'
              DataPipeline = pInvoiceItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3440
              mmLeft = 528
              mmTop = 0
              mmWidth = 12172
              BandType = 4
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3440
              mmLeft = 12965
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText17'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Codigo_Mercadoria'
              DataPipeline = pInvoiceItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3439
              mmLeft = 13495
              mmTop = 0
              mmWidth = 26459
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
              mmHeight = 3440
              mmLeft = 40217
              mmTop = 0
              mmWidth = 3175
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
              Transparent = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3440
              mmLeft = 40747
              mmTop = 0
              mmWidth = 76464
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade'
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
              mmLeft = 118004
              mmTop = 0
              mmWidth = 17991
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
              mmHeight = 3440
              mmLeft = 117475
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3440
              mmLeft = 136261
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText19'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Unidade'
              DataPipeline = pInvoiceItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3440
              mmLeft = 136789
              mmTop = 0
              mmWidth = 13228
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
              mmHeight = 3440
              mmLeft = 150284
              mmTop = 0
              mmWidth = 3175
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
              mmHeight = 3440
              mmLeft = 172510
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object pValorTotal: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pValorTotal'
              Anchors = [atLeft, atBottom]
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              OnCalc = pValorTotalCalc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 0
              mmWidth = 23283
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
              mmHeight = 3440
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
              DataField = 'Valor_UnitarioME'
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
              DataPipelineName = 'pInvoiceItens'
              mmHeight = 3440
              mmLeft = 150813
              mmTop = 0
              mmWidth = 21430
              BandType = 4
              LayerName = Foreground
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
              mmLeft = 172509
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppVariable2: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'Variable2'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              OnCalc = ppVariable2Calc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 529
              mmWidth = 23283
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label22'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'Total Commercial Value'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 118534
              mmTop = 529
              mmWidth = 53446
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
              mmLeft = 117475
              mmTop = 265
              mmWidth = 2381
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
              mmHeight = 265
              mmLeft = 117475
              mmTop = 4233
              mmWidth = 79904
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
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape13'
        Pen.Width = 0
        mmHeight = 20109
        mmLeft = 0
        mmTop = 41804
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Consignee to:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1059
        mmTop = 42333
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Nome_Exportador'
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
        mmLeft = 1059
        mmTop = 25665
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Endereco_Exportador'
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
        mmLeft = 1059
        mmTop = 29369
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Endereco2_Exportador'
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
        mmLeft = 1059
        mmTop = 33073
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line32'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 99219
        mmTop = 8202
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ROF N'#186':'
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
        mmTop = 8467
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
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
        mmHeight = 3440
        mmLeft = 157163
        mmTop = 8467
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText31'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ROF_Vencimento'
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
        mmLeft = 156898
        mmTop = 12171
        mmWidth = 38629
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ROF_Numero'
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
        mmTop = 12171
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText32'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente_End1'
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
        mmLeft = 1059
        mmTop = 50272
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText33'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente_End2'
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
        mmLeft = 1059
        mmTop = 53977
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText34'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente_Pais'
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
        mmLeft = 1059
        mmTop = 57678
        mmWidth = 96045
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Cliente_Nome'
        DataPipeline = pInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3471
        mmLeft = 1059
        mmTop = 46568
        mmWidth = 96045
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2911
        mmLeft = 794
        mmTop = 529
        mmWidth = 45773
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
        mmWidth = 5821
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
      mmHeight = 40481
      mmPrintPosition = 0
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape12'
        Pen.Width = 0
        mmHeight = 21431
        mmLeft = 0
        mmTop = 0
        mmWidth = 57679
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
        mmTop = 4233
        mmWidth = 57679
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
        mmTop = 529
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
        mmTop = 8467
        mmWidth = 57679
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
        mmTop = 4763
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
        mmTop = 0
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
        Caption = 'Number of Carton'
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
        mmTop = 8996
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
        mmTop = 12700
        mmWidth = 57679
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cubic Meter (M3)'
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
        mmTop = 13229
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
        mmTop = 16933
        mmWidth = 57679
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Box Numbers'
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
        mmTop = 17463
        mmWidth = 26988
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
        mmTop = 529
        mmWidth = 28046
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
        mmTop = 4763
        mmWidth = 28046
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
        mmTop = 8996
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Metro_Cubico'
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
        mmTop = 13229
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Volumes_Numero'
        DataPipeline = pInvoice
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pInvoice'
        mmHeight = 3440
        mmLeft = 28575
        mmTop = 17463
        mmWidth = 28046
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
        mmLeft = 93980
        mmTop = 32808
        mmWidth = 76200
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Diretor'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3440
        mmLeft = 93980
        mmTop = 33338
        mmWidth = 76200
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Diretor'
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
        mmLeft = 93980
        mmTop = 37010
        mmWidth = 76200
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule1: TraCodeModule
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
      'SELECT iv.*'
      
        '      ,Cliente_Nome = (select Nome from Clientes cl where cl.Cod' +
        'igo = (select Cliente from ProcessosDocumentos pd where pd.Proce' +
        'sso = iv.Processo))'
      
        '      ,Cliente_End1 = (select isnull(Rua, '#39#39')+'#39',N'#186' '#39'+isnull(Rua_' +
        'Numero, '#39#39')+'#39' - '#39'+isnull(Municipio, '#39#39')+'#39'('#39'+Estado+'#39')'#39' from Clie' +
        'ntes cl where cl.Codigo = (select Cliente from ProcessosDocument' +
        'os pd where pd.Processo = iv.Processo))'
      
        '      ,Cliente_End2 = (select '#39'CEP: '#39'+CEP from Clientes cl where' +
        ' CL.Codigo = (select Cliente from ProcessosDocumentos pd where p' +
        'd.Processo = iv.Processo))'
      
        '      ,Cliente_Pais = (select Nome from Cybersoft_Cadastros.dbo.' +
        'Paises pai where pai.Codigo = Pais_Destino)'
      
        '      ,Telefones            = (SELECT ISNULL('#39'PHONE: '#39'+Telefone1' +
        ', '#39#39') + ISNULL('#39' / FAX: '#39'+Fax, '#39#39') FROM Clientes WHERE(Codigo = ' +
        'Importador))'
      
        '      ,Data_Extenso         = UPPER(DATENAME(MONTH, Data))+'#39' '#39'+C' +
        'AST(DAY(Data) AS VARCHAR(2))+'#39'/'#39'+CAST(YEAR(Data) AS VARCHAR(4))'
      
        '      ,Moeda_Nome           = (SELECT Nome FROM Cybersoft_Cadast' +
        'ros.dbo.Moedas WHERE(Codigo = Moeda))'
      
        '      ,PaisOrigem_Nome      = (SELECT Nome FROM Cybersoft_Cadast' +
        'ros.dbo.Paises WHERE(Codigo = Pais_Origem))'
      
        '      ,Nome_Exportador      = (SELECT Nome FROM Fornecedores WHE' +
        'RE Codigo = Exportador)'
      
        '      ,Endereco_Exportador  = (SELECT (ISNULL(Rua, '#39#39')+ISNULL(+'#39 +
        ' N'#186' '#39'+Rua_Numero, '#39#39') + '#39' '#39' + ISNULL(Complemento, '#39#39')) FROM Forn' +
        'ecedores WHERE Codigo = Exportador)'
      
        '      ,Endereco2_Exportador = LTRIM(RTRIM((SELECT (SELECT Nome F' +
        'ROM Cybersoft_Cadastros.dbo.Paises WHERE(Codigo = Pais)) FROM Fo' +
        'rnecedores WHERE Codigo = Exportador)))'
      
        '      ,ROF_Numero           = (SELECT ROF_Numero FROM ProcessosD' +
        'ocumentos WHERE Processo = iv.Processo)'
      
        '      ,ROF_Vencimento       = (SELECT (ROF_Emissao+ROF_Dias) FRO' +
        'M ProcessosDocumentos WHERE Processo = iv.Processo)'
      'FROM  Invoice iv'
      '')
    Active = True
    Left = 144
    Top = 112
  end
  object dstInvoice: TDataSource
    DataSet = tInvoice
    Left = 144
    Top = 159
  end
  object tInvoiceItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM InvoiceItens')
    FetchRows = 1
    Active = True
    Left = 226
    Top = 112
  end
  object dstInvoiceItens: TDataSource
    DataSet = tInvoiceItens
    Left = 226
    Top = 159
  end
  object pInvoiceItens: TppDBPipeline
    DataSource = dstInvoiceItens
    UserName = 'pInvoiceItens'
    Left = 344
    Top = 218
    object pInvoiceItensppField1: TppField
      FieldAlias = 'Registro'
      FieldName = 'Registro'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object pInvoiceItensppField2: TppField
      FieldAlias = 'Invoice'
      FieldName = 'Invoice'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object pInvoiceItensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Mercadoria'
      FieldName = 'Codigo_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pInvoiceItensppField4: TppField
      FieldAlias = 'Unidade_Quantidade'
      FieldName = 'Unidade_Quantidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object pInvoiceItensppField5: TppField
      FieldAlias = 'Unidade_Peso'
      FieldName = 'Unidade_Peso'
      FieldLength = 3
      DisplayWidth = 3
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
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
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
      FieldAlias = 'Valor_UnitarioME'
      FieldName = 'Valor_UnitarioME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pInvoiceItensppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Liquido'
      FieldName = 'Peso_Liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object pInvoiceItensppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Bruto'
      FieldName = 'Peso_Bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object pInvoiceItensppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item'
      FieldName = 'Item'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object pInvoiceItensppField13: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 8
      DisplayWidth = 8
      Position = 12
    end
    object pInvoiceItensppField14: TppField
      FieldAlias = 'Imp_Exp'
      FieldName = 'Imp_Exp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object pInvoiceItensppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fabricante'
      FieldName = 'Fabricante'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object pInvoiceItensppField16: TppField
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 15
    end
  end
end
