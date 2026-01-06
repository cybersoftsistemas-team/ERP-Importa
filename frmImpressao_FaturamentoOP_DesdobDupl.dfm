object Impressao_FaturamentoOP_DesdobDupl: TImpressao_FaturamentoOP_DesdobDupl
  Left = 457
  Top = 252
  BorderStyle = bsDialog
  Caption = 'Impressao_FaturamentoOP_DesdobDupl'
  ClientHeight = 220
  ClientWidth = 337
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 337
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 5
    Top = 3
    Width = 207
    Height = 21
    Caption = 'IMPRESS'#195'O - FATURAMENTO'
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
    Left = 5
    Top = 22
    Width = 277
    Height = 18
    Caption = 'Desdobramento de duplicatas da nota fiscal.'
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
  object StaticText4: TStaticText
    Left = 10
    Top = 56
    Width = 84
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Processo N'#186
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
  object cProcesso: TRxDBLookupCombo
    Left = 96
    Top = 56
    Width = 153
    Height = 21
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsProcessosDOC
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 190
    Width = 337
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      337
      30)
    object bSair: TButton
      Left = 270
      Top = 1
      Width = 66
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
    object bImprimir: TButton
      Left = 204
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = bImprimirClick
    end
    object bLimpar: TBitBtn
      Left = 128
      Top = 1
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Limpar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = bLimparClick
    end
  end
  object cExcel: TCheckBox
    Left = 10
    Top = 116
    Width = 157
    Height = 17
    Caption = 'Enviar dados para o EXCEL.'
    Enabled = False
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 10
    Top = 79
    Width = 84
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Nota N'#186
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
  object cNota: TCurrencyEdit
    Left = 96
    Top = 79
    Width = 105
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 40
    Top = 160
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 40
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
      FieldLength = 30
      DisplayWidth = 30
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
      DisplayWidth = 3
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
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresasppField57: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 58
    end
    object pEmpresasppField60: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 59
    end
    object pEmpresasppField61: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 60
    end
    object pEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresasppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object pEmpresasppField64: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 64
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresasppField67: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresasppField68: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 67
    end
    object pEmpresasppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 68
    end
    object pEmpresasppField70: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 69
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 70
    end
    object pEmpresasppField72: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 71
    end
    object pEmpresasppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 72
    end
    object pEmpresasppField74: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 73
    end
    object pEmpresasppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 74
    end
    object pEmpresasppField76: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 75
    end
    object pEmpresasppField77: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresasppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object pEmpresasppField79: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 78
    end
    object pEmpresasppField80: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 79
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 80
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 81
    end
    object pEmpresasppField83: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField84: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 83
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object pEmpresasppField86: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 85
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 86
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 87
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 89
    end
    object pEmpresasppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 91
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 95
    end
    object pEmpresasppField97: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 96
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 97
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 99
    end
    object pEmpresasppField101: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 100
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresasppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresasppField107: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 106
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 107
    end
    object pEmpresasppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 121
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 122
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 123
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 124
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 126
    end
  end
  object pDespesas: TppDBPipeline
    DataSource = dstNotasDespesas
    CloseDataSource = True
    UserName = 'pDespesas'
    Left = 72
    Top = 160
    object pDespesasppField1: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object pDespesasppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object pDespesasppField3: TppField
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pDespesasppField4: TppField
      FieldAlias = 'Valor_Nota'
      FieldName = 'Valor_Nota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pDespesasppField5: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
  end
  object rDesdobraDupl: TppReport
    AutoStop = False
    DataPipeline = pProcesso
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Dedobramento de Duplicatas do Processo'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Faturamento_Desd' +
      'obDupl.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 168
    Top = 160
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pProcesso'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Desdobramento de Duplicatas do Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 28310
        mmTop = 6879
        mmWidth = 168805
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 5027
        mmLeft = 28311
        mmTop = 265
        mmWidth = 168806
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 1323
        mmLeft = 0
        mmTop = 17198
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground1
      end
      object lNotasEntrada: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Notas de Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 23019
        mmTop = 19315
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground1
      end
      object lNotasSaida: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lNotasSaida'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          '(SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Codigo = ' +
          'Moeda_FOB)) AS Nome_Moeda,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 23019
        mmTop = 22754
        mmWidth = 144992
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Notas de Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 19315
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Notas de Sa'#237'da:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 22754
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground1
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16404
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
      mmHeight = 4233
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pDespesas'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pDespesas
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Dedobramento de Duplicatas do Processo'
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
          DataPipelineName = 'pDespesas'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 10054
            mmPrintPosition = 0
            object ppLabel1: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CUSTO DE NACIONALIZA'#199#195'O.'
              Color = 10079487
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              mmHeight = 4276
              mmLeft = 0
              mmTop = 1323
              mmWidth = 196850
              BandType = 1
              LayerName = Foreground
            end
            object ppShape11: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape11'
              Brush.Color = 8404992
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 7938
              mmTop = 6614
              mmWidth = 139171
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label13'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'DESCRI'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2921
              mmLeft = 7938
              mmTop = 6879
              mmWidth = 139171
              BandType = 1
              LayerName = Foreground
            end
            object ppShape12: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape12'
              Brush.Color = 8404992
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 173038
              mmTop = 6614
              mmWidth = 24077
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label14'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'NOTA FISCAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2921
              mmLeft = 173038
              mmTop = 6879
              mmWidth = 24077
              BandType = 1
              LayerName = Foreground
            end
            object ppShape13: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape13'
              Brush.Color = 8404992
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 148167
              mmTop = 6614
              mmWidth = 24077
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'PROCESSO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2921
              mmLeft = 150019
              mmTop = 6879
              mmWidth = 24077
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Classificacao'
              DataPipeline = pDespesas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3471
              mmLeft = 8202
              mmTop = 264
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'Descricao'
              DataPipeline = pDespesas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3471
              mmLeft = 30163
              mmTop = 264
              mmWidth = 116947
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'Valor_Nota'
              DataPipeline = pDespesas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 264
              mmWidth = 24077
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pDespesas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3471
              mmLeft = 148167
              mmTop = 264
              mmWidth = 24077
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel2: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label2'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 27517
              mmTop = 0
              mmWidth = 2159
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 83608
            mmPrintPosition = 0
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 1058
              mmLeft = 7938
              mmTop = 794
              mmWidth = 188913
              BandType = 7
              LayerName = Foreground
            end
            object lTotalDespNF: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'lTotalDespNF'
              Border.mmPadding = 0
              DataField = 'Valor_Nota'
              DataPipeline = pDespesas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 1323
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object lTotalDespProc: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'lTotalDespProc'
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pDespesas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pDespesas'
              mmHeight = 3471
              mmLeft = 148167
              mmTop = 1323
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label3'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL DAS DESPESAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 105569
              mmTop = 1323
              mmWidth = 41010
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label4'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'FRETE INTERNACIONAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 30163
              mmTop = 6615
              mmWidth = 116946
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel5: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label5'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 27516
              mmTop = 6350
              mmWidth = 2159
              BandType = 7
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 1588
              mmLeft = 27516
              mmTop = 20108
              mmWidth = 169334
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'Frete'
              DataPipeline = pProcesso
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3471
              mmLeft = 148167
              mmTop = 6615
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'Frete_Imp'
              DataPipeline = pSoma
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSoma'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 6615
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label6'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SEGURO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 30163
              mmTop = 9790
              mmWidth = 116947
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'Seguro'
              DataPipeline = pProcesso
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3471
              mmLeft = 148167
              mmTop = 9790
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'Seguro_Imp'
              DataPipeline = pSoma
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSoma'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 9790
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'PIS IMPORTA'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 30163
              mmTop = 12965
              mmWidth = 116946
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText11'
              Border.mmPadding = 0
              DataField = 'Valor_PIS'
              DataPipeline = pProcesso
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3471
              mmLeft = 148167
              mmTop = 12965
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
              Border.mmPadding = 0
              DataField = 'PIS_Imp'
              DataPipeline = pSoma
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSoma'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 12965
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label10'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'COFINS IMPORTA'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 30163
              mmTop = 16140
              mmWidth = 116946
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText13'
              Border.mmPadding = 0
              DataField = 'Valor_COFINS'
              DataPipeline = pProcesso
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3471
              mmLeft = 148166
              mmTop = 16140
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText101'
              Border.mmPadding = 0
              DataField = 'COFINS_Imp'
              DataPipeline = pSoma
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSoma'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 16140
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label16'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CUSTO NACIONALIZA'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 105569
              mmTop = 20638
              mmWidth = 41010
              BandType = 7
              LayerName = Foreground
            end
            object lTotalCustoProc: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'lTotalCustoProc'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              OnCalc = lTotalCustoProcCalc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3471
              mmLeft = 148167
              mmTop = 20638
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object lTotalCustoNF: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'lTotalCustoNF'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              OnCalc = lTotalCustoNFCalc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 20638
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'ICMS.'
              Color = 10079487
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              mmHeight = 4276
              mmLeft = 0
              mmTop = 25135
              mmWidth = 196850
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label101'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'ICMS SUBSTITUTIVO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 30163
              mmTop = 30427
              mmWidth = 116946
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText16'
              Border.mmPadding = 0
              DataField = 'ICMS_Sub'
              DataPipeline = pSaidas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSaidas'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 30427
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label20'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DIFEREN'#199'A DE IPI.'
              Color = 10079487
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              mmHeight = 4276
              mmLeft = 0
              mmTop = 38629
              mmWidth = 196850
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label21'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'IPI NA SA'#205'DA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 30163
              mmTop = 47096
              mmWidth = 116946
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText15'
              Border.mmPadding = 0
              DataField = 'IPI_Imp'
              DataPipeline = pSoma
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSoma'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 43921
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel23: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label23'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'IPI NA ENTRADA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 30163
              mmTop = 43921
              mmWidth = 116946
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText17'
              Border.mmPadding = 0
              DataField = 'IPI_Saida'
              DataPipeline = pSaidas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSaidas'
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 47096
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label25'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DIFEREN'#199'A'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 105569
              mmTop = 51329
              mmWidth = 41010
              BandType = 7
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 1588
              mmLeft = 27517
              mmTop = 50800
              mmWidth = 169334
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label7'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 27516
              mmTop = 9525
              mmWidth = 2159
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label9'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 27516
              mmTop = 12700
              mmWidth = 2159
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label11'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 27516
              mmTop = 15875
              mmWidth = 2159
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label19'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 27517
              mmTop = 43656
              mmWidth = 2159
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label22'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 27517
              mmTop = 46831
              mmWidth = 2159
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel24: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label24'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3471
              mmLeft = 27517
              mmTop = 30163
              mmWidth = 2159
              BandType = 7
              LayerName = Foreground
            end
            object ppVariable1: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'Variable1'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 2
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              OnCalc = ppVariable1Calc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 173038
              mmTop = 51329
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label201'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'PIS E COFINS SA'#205'DA'
              Color = 10079487
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              mmHeight = 4233
              mmLeft = 0
              mmTop = 55563
              mmWidth = 196850
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label29'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'COFINS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 30163
              mmTop = 63765
              mmWidth = 116946
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'PIS_Saida'
              DataPipeline = pSaidas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSaidas'
              mmHeight = 3440
              mmLeft = 173038
              mmTop = 60590
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label30'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'PIS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 30163
              mmTop = 60590
              mmWidth = 116946
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Border.mmPadding = 0
              DataField = 'COFINS_Saida'
              DataPipeline = pSaidas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pSaidas'
              mmHeight = 3440
              mmLeft = 173038
              mmTop = 63765
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label31'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 105569
              mmTop = 67998
              mmWidth = 41540
              BandType = 7
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 1588
              mmLeft = 28310
              mmTop = 67469
              mmWidth = 169334
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label32'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 27517
              mmTop = 60590
              mmWidth = 2117
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label33'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 27517
              mmTop = 63765
              mmWidth = 2117
              BandType = 7
              LayerName = Foreground
            end
            object ppVariable2: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'Variable2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 3
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              OnCalc = ppVariable2Calc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 173038
              mmTop = 67998
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label34'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CUSTO DE AQUISI'#199#195'O (C'#194'MBIO)'
              Color = 10079487
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              mmHeight = 4233
              mmLeft = 0
              mmTop = 74877
              mmWidth = 196850
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText19'
              Border.mmPadding = 0
              DataField = 'FOB'
              DataPipeline = pProcesso
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3440
              mmLeft = 173038
              mmTop = 80168
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label301'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL DO FOB'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 31485
              mmTop = 80168
              mmWidth = 24871
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel36: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label36'
              Border.mmPadding = 0
              Caption = #168
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Symbol'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 28840
              mmTop = 80168
              mmWidth = 2117
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText20'
              Border.mmPadding = 0
              DataField = 'Moeda_FOB'
              DataPipeline = pProcesso
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3440
              mmLeft = 57150
              mmTop = 80168
              mmWidth = 7673
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText21'
              Border.mmPadding = 0
              DataField = 'Nome_Moeda'
              DataPipeline = pProcesso
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3440
              mmLeft = 65352
              mmTop = 80168
              mmWidth = 54504
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText22'
              Border.mmPadding = 0
              DataField = 'Taxa_FOB'
              DataPipeline = pProcesso
              DisplayFormat = ',##0.0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3440
              mmLeft = 132292
              mmTop = 80168
              mmWidth = 14288
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText23'
              Border.mmPadding = 0
              DataField = 'Simbolo_Moeda'
              DataPipeline = pProcesso
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3440
              mmLeft = 124619
              mmTop = 80168
              mmWidth = 7938
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText24'
              Border.mmPadding = 0
              DataField = 'FOB_ME'
              DataPipeline = pProcesso
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProcesso'
              mmHeight = 3440
              mmLeft = 148167
              mmTop = 80168
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
          end
          object raCodeModule1: TraCodeModule
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
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
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
        mmHeight = 2879
        mmLeft = 0
        mmTop = 265
        mmWidth = 43688
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
        mmLeft = 74613
        mmTop = 265
        mmWidth = 27781
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
        mmLeft = 117211
        mmTop = 265
        mmWidth = 23813
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
        mmLeft = 46831
        mmTop = 264
        mmWidth = 5027
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
        mmLeft = 181505
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
        Pen.Width = 0
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 197115
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
        mmLeft = 179388
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground1
      end
    end
    object raCodeModule2: TraCodeModule
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
  object tEntradas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Valor_Frete*Quantidade)    AS Frete_Imp, '
      '       SUM(Valor_Seguro*Quantidade)   AS Seguro_Imp,'
      '       SUM(Valor_PIS * Quantidade)    AS PIS_Imp,'
      '       SUM(Valor_COFINS * Quantidade) AS COFINS_Imp,'
      '       SUM(Valor_IPI * Quantidade)    AS IPI_Imp'
      'FROM NotasItens '
      'WHERE Processo = '#39'11/0980'#39
      '')
    FetchRows = 1
    Active = True
    Left = 8
    Top = 133
  end
  object pSoma: TppDBPipeline
    DataSource = dstEntradas
    CloseDataSource = True
    UserName = 'pSoma'
    Left = 104
    Top = 160
    object pSomappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Frete_Imp'
      FieldName = 'Frete_Imp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object pSomappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Seguro_Imp'
      FieldName = 'Seguro_Imp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object pSomappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_Imp'
      FieldName = 'PIS_Imp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object pSomappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_Imp'
      FieldName = 'COFINS_Imp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object pSomappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_Imp'
      FieldName = 'IPI_Imp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object dstEntradas: TDataSource
    DataSet = tEntradas
    Left = 40
    Top = 133
  end
  object pProcesso: TppDBPipeline
    DataSource = dstProcesso
    CloseDataSource = True
    UserName = 'pProcesso'
    Left = 136
    Top = 160
    object pProcessoppField1: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object pProcessoppField2: TppField
      FieldAlias = 'Frete'
      FieldName = 'Frete'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 1
    end
    object pProcessoppField3: TppField
      FieldAlias = 'Seguro'
      FieldName = 'Seguro'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pProcessoppField4: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pProcessoppField5: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object pProcessoppField6: TppField
      FieldAlias = 'Valor_IPI'
      FieldName = 'Valor_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object pProcessoppField7: TppField
      FieldAlias = 'FOB'
      FieldName = 'FOB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object pProcessoppField8: TppField
      FieldAlias = 'FOB_ME'
      FieldName = 'FOB_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pProcessoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_FOB'
      FieldName = 'Taxa_FOB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pProcessoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_FOB'
      FieldName = 'Moeda_FOB'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object pProcessoppField11: TppField
      FieldAlias = 'Nome_Moeda'
      FieldName = 'Nome_Moeda'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object pProcessoppField12: TppField
      FieldAlias = 'Simbolo_Moeda'
      FieldName = 'Simbolo_Moeda'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
  end
  object tSaidas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Valor_IPI * Quantidade) AS IPI_Saida,'
      '       SUM(Valor_ICMSSub) AS ICMS_Sub,'
      '       SUM(Valor_PIS    * Quantidade) AS PIS_Saida,'
      '       SUM(Valor_COFINS * Quantidade) AS COFINS_Saida'
      'FROM   NotasItens'
      'WHERE (Processo = '#39'11/0980'#39') AND (Saida_Entrada = 1)')
    FetchRows = 1
    Active = True
    Left = 232
    Top = 133
  end
  object tNotasDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Classificacao, '
      '       Descricao, '
      '       SUM(Valor_Total) AS Valor_Total, '
      '       SUM(Valor_Nota) AS Valor_Nota, '
      '       Processo'
      'FROM NotasDespesas '
      'WHERE Processo = '#39'11/0980'#39
      'GROUP BY Classificacao, Descricao, Processo'
      'ORDER BY Classificacao')
    FetchRows = 1
    Active = True
    Left = 168
    Top = 133
  end
  object dstNotasDespesas: TDataSource
    DataSet = tNotasDespesas
    Left = 200
    Top = 133
  end
  object tProcesso: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Processo,'
      '       Frete,'
      '       Seguro,'
      '       Valor_PIS,'
      '       Valor_COFINS,'
      '       Valor_IPI,'
      '       FOB,'
      '       FOB_ME,'
      '       Taxa_FOB,'
      '       Moeda_FOB,'
      
        '       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Co' +
        'digo = Moeda_FOB)) AS Nome_Moeda,'
      
        '       (SELECT Simbolo FROM Cybersoft_Cadastros.dbo.Moedas WHERE' +
        '(Codigo = Moeda_FOB)) AS Simbolo_Moeda'
      'FROM   ProcessosDocumentos'
      'WHERE  Processo = '#39'11/0980'#39)
    FetchRows = 1
    Active = True
    Left = 72
    Top = 133
  end
  object dstProcesso: TDataSource
    DataSet = tProcesso
    Left = 104
    Top = 133
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Valor_Frete*Quantidade)    AS Frete_Inter, '
      '       SUM(Valor_Seguro*Quantidade)   AS Seguro_Inter,'
      '       SUM(Valor_PIS * Quantidade)    AS PIS_Imp,'
      '       SUM(Valor_COFINS * Quantidade) AS COFINS_Imp'
      'FROM NotasItens '
      'WHERE Nota = 2812')
    FetchRows = 1
    Active = True
    Left = 136
    Top = 133
  end
  object pSaidas: TppDBPipeline
    DataSource = dstSaidas
    CloseDataSource = True
    UserName = 'pSaidas'
    Left = 8
    Top = 160
    object pSaidasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_Saida'
      FieldName = 'IPI_Saida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object pSaidasppField2: TppField
      FieldAlias = 'ICMS_Sub'
      FieldName = 'ICMS_Sub'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 1
    end
    object pSaidasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_Saida'
      FieldName = 'PIS_Saida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object pSaidasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_Saida'
      FieldName = 'COFINS_Saida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
  end
  object dstSaidas: TDataSource
    DataSet = tSaidas
    Left = 264
    Top = 133
  end
end
