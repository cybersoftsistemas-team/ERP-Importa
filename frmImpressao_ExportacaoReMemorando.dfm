object Impressao_ExportacaoReMemorando: TImpressao_ExportacaoReMemorando
  Left = 458
  Top = 249
  BorderStyle = bsDialog
  Caption = 'Impressao_ExportacaoReMemorando'
  ClientHeight = 365
  ClientWidth = 529
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
  DesignSize = (
    529
    365)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 529
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 225
    Height = 21
    Caption = 'MEMORANDO DE EXPORTA'#199'AO'
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
    Top = 21
    Width = 184
    Height = 18
    Caption = 'Reimpress'#227'o do Memorando.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = 4194304
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Image1: TImage
    Left = 492
    Top = 7
    Width = 31
    Height = 32
    Anchors = [akTop, akRight]
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000FFFFFFFFFFFFFFFFFFFFF00000000000F888888888888888888
      8F00000000000F8888888888888888888F00000000000FFFFFFFF8FFFFFFFFFF
      FF00000000000F8F8F8FF8F8888888888F00000000000FFFFFFFF8FFFFFFFFFF
      FF00000000000F888F8FF8F88F8888888F00000000000FFFFFFFF8FFFFFFFFFF
      FF00000000000FFFFFFFF8FFFFFFFFFFFF00000000000FFFFFFFF8FFFFFFFFFF
      FF00000000000F8888888888888888888F00000000000FFFFFFFFFFFFFFFFFFF
      FF00000000000F888888F8F8888888888F00000000000FFFFFFFFFFFFFFFFFFF
      FF00000000000FFFFFFFFFFFFFFFFFFFFF00000000000F888888888888888888
      8F00000000000F8888888888888888888F00000000000FFFFFFFFFFFFFFFFFFF
      FF00000000000FFFFFFFFFFFFFFFFFFFFF00000000000F888888888888888888
      8F00000000000F0777070007077707000F00000000000F070707077707070707
      0F00000000000F0007070007070707070F00000000000F007007077700700707
      0F00000000000F0777000007077707000F00000000000FFFFFFFFFFFFFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFF8000007F8000007F0000007F0000007F0000007F0000007
      F0000007F0000007F0000007F0000007F0000007F0000007F0000007F0000007
      F0000007F0000007F0000007F0000007F0000007F0000007F0000007F0000007
      F0000007F0000007F0000007F1000007F0000007F0100007F000001FF000001F
      FFFFFFFF}
  end
  object Panel1: TPanel
    Left = 0
    Top = 336
    Width = 529
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      529
      29)
    object bSair: TButton
      Left = 455
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
    object bImprimir: TButton
      Left = 381
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
    end
    object Progresso: TProgressBar
      Left = 5
      Top = 7
      Width = 220
      Height = 16
      TabOrder = 2
      Visible = False
    end
  end
  object Grade: TRxDBGrid
    Left = 5
    Top = 51
    Width = 516
    Height = 281
    DataSource = dstProcessos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
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
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'Memo N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DE_Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' DE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 131
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DE_Data'
        Title.Alignment = taCenter
        Title.Caption = 'Data DE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object tMemorando: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_R5'
      'SELECT ME.*'
      'FROM MemorandoExportacao ME'
      'WHERE Numero = 43'
      '')
    FetchRows = 1
    Left = 40
    Top = 243
  end
  object dstMemorando: TDataSource
    DataSet = tMemorando
    Left = 71
    Top = 243
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Quantidade, '
      '       NCM,'
      '       Descricao_Mercadoria,'
      '       Unidade_Medida,'
      '       CAST(Valor_Unitario AS DECIMAL (14,2)) AS Valor_Unitario,'
      
        '       CAST(ROUND(Valor_Unitario, 2) * Quantidade AS DECIMAL(14,' +
        '4)) AS Valor_Total'
      'FROM NotasItens'
      ' where nota = 339')
    FetchRows = 1
    Active = True
    Left = 104
    Top = 243
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 135
    Top = 243
  end
  object tEntradas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT NFe_cNF'
      '      ,Nota'
      '      ,Data_Emissao'
      '      ,NFe_cNF'
      'FROM NotasTerceiros'
      'WHERE Processo = '#39'PE: 01/2017'#39
      ''
      '')
    FetchRows = 1
    Active = True
    Left = 168
    Top = 243
  end
  object dstEntradas: TDataSource
    DataSet = tEntradas
    Left = 199
    Top = 243
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 312
    Top = 256
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 35
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
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 89
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 90
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 95
    end
    object pEmpresasppField97: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 96
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField98: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 99
    end
    object pEmpresasppField101: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 100
    end
    object pEmpresasppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 105
    end
    object pEmpresasppField107: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 106
    end
    object pEmpresasppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 121
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 123
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 124
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 128
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 129
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresasppField132: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 131
    end
    object pEmpresasppField133: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 133
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresasppField136: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 135
    end
    object pEmpresasppField137: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 136
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 137
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 138
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 139
    end
    object pEmpresasppField141: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 140
    end
    object pEmpresasppField142: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 141
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 142
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresasppField145: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 144
    end
    object pEmpresasppField146: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 145
    end
    object pEmpresasppField147: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 146
    end
    object pEmpresasppField148: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 148
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 149
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 150
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 151
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 152
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 153
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 154
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 155
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 156
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 157
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 158
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 159
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 160
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 161
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 162
    end
    object pEmpresasppField164: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresasppField165: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 164
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 165
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 166
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 168
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 170
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresasppField174: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 173
    end
  end
  object pEntradas: TppDBPipeline
    DataSource = dstEntradas
    CloseDataSource = True
    UserName = 'pEntradas'
    Left = 200
    Top = 272
    object pEntradasppField1: TppField
      FieldAlias = 'NFe_cNF'
      FieldName = 'NFe_cNF'
      FieldLength = 44
      DisplayWidth = 44
      Position = 0
    end
    object pEntradasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pEntradasppField3: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object pEntradasppField4: TppField
      FieldAlias = 'NFe_cNF_1'
      FieldName = 'NFe_cNF_1'
      FieldLength = 44
      DisplayWidth = 44
      Position = 3
    end
  end
  object pItens: TppDBPipeline
    DataSource = dstItens
    CloseDataSource = True
    UserName = 'pItens'
    Left = 136
    Top = 272
    object pItensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object pItensppField2: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object pItensppField3: TppField
      FieldAlias = 'Descricao_Mercadoria'
      FieldName = 'Descricao_Mercadoria'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pItensppField4: TppField
      FieldAlias = 'Unidade_Medida'
      FieldName = 'Unidade_Medida'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object pItensppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pItensppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
  end
  object pMemo: TppDBPipeline
    DataSource = dstMemorando
    CloseDataSource = True
    UserName = 'pMemo'
    Left = 70
    Top = 272
    object pMemoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pMemoppField2: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pMemoppField3: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object pMemoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'NFSaida_Numero'
      FieldName = 'NFSaida_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object pMemoppField5: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object pMemoppField6: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object pMemoppField7: TppField
      FieldAlias = 'NFSaida_Data'
      FieldName = 'NFSaida_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object pMemoppField8: TppField
      FieldAlias = 'DE_Numero'
      FieldName = 'DE_Numero'
      FieldLength = 12
      DisplayWidth = 12
      Position = 7
    end
    object pMemoppField9: TppField
      FieldAlias = 'DE_Data'
      FieldName = 'DE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object pMemoppField10: TppField
      FieldAlias = 'RE_Numero'
      FieldName = 'RE_Numero'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object pMemoppField11: TppField
      FieldAlias = 'RE_Data'
      FieldName = 'RE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object pMemoppField12: TppField
      FieldAlias = 'CE_Numero'
      FieldName = 'CE_Numero'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object pMemoppField13: TppField
      FieldAlias = 'CE_Data'
      FieldName = 'CE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object pMemoppField14: TppField
      FieldAlias = 'UF_Fabricante'
      FieldName = 'UF_Fabricante'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object pMemoppField15: TppField
      FieldAlias = 'Pais_Destino'
      FieldName = 'Pais_Destino'
      FieldLength = 4
      DisplayWidth = 4
      Position = 14
    end
    object pMemoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fornecedor_Codigo'
      FieldName = 'Fornecedor_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object pMemoppField17: TppField
      FieldAlias = 'Fornecedor_Nome'
      FieldName = 'Fornecedor_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pMemoppField18: TppField
      FieldAlias = 'Fornecedor_Endereco'
      FieldName = 'Fornecedor_Endereco'
      FieldLength = 80
      DisplayWidth = 80
      Position = 17
    end
    object pMemoppField19: TppField
      FieldAlias = 'Fornecedor_Inscricao'
      FieldName = 'Fornecedor_Inscricao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 18
    end
    object pMemoppField20: TppField
      FieldAlias = 'Fornecedor_CNPJ'
      FieldName = 'Fornecedor_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 19
    end
    object pMemoppField21: TppField
      FieldAlias = 'CT_Numero'
      FieldName = 'CT_Numero'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object pMemoppField22: TppField
      FieldAlias = 'CT_Modelo'
      FieldName = 'CT_Modelo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object pMemoppField23: TppField
      FieldAlias = 'CT_Serie'
      FieldName = 'CT_Serie'
      FieldLength = 10
      DisplayWidth = 10
      Position = 22
    end
    object pMemoppField24: TppField
      FieldAlias = 'CT_Data'
      FieldName = 'CT_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 23
    end
    object pMemoppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Transportador_Codigo'
      FieldName = 'Transportador_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pMemoppField26: TppField
      FieldAlias = 'Transportador_Nome'
      FieldName = 'Transportador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object pMemoppField27: TppField
      FieldAlias = 'Transportador_Endereco'
      FieldName = 'Transportador_Endereco'
      FieldLength = 80
      DisplayWidth = 80
      Position = 26
    end
    object pMemoppField28: TppField
      FieldAlias = 'Transportador_Inscricao'
      FieldName = 'Transportador_Inscricao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 27
    end
    object pMemoppField29: TppField
      FieldAlias = 'Transportador_CNPJ'
      FieldName = 'Transportador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 28
    end
    object pMemoppField30: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 40
      DisplayWidth = 40
      Position = 29
    end
    object pMemoppField31: TppField
      FieldAlias = 'Temp'
      FieldName = 'Temp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 30
    end
    object pMemoppField32: TppField
      FieldAlias = 'Fornecedor_Estado'
      FieldName = 'Fornecedor_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 31
    end
    object pMemoppField33: TppField
      FieldAlias = 'Pais_DestinoNome'
      FieldName = 'Pais_DestinoNome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object pMemoppField34: TppField
      FieldAlias = 'NFSaida_Chave'
      FieldName = 'NFSaida_Chave'
      FieldLength = 44
      DisplayWidth = 44
      Position = 33
    end
    object pMemoppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'Remetente_Codigo'
      FieldName = 'Remetente_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object pMemoppField36: TppField
      FieldAlias = 'Remetente_Nome'
      FieldName = 'Remetente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object pMemoppField37: TppField
      FieldAlias = 'Remetente_Endereco'
      FieldName = 'Remetente_Endereco'
      FieldLength = 80
      DisplayWidth = 80
      Position = 36
    end
    object pMemoppField38: TppField
      FieldAlias = 'Remetente_Inscricao'
      FieldName = 'Remetente_Inscricao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 37
    end
    object pMemoppField39: TppField
      FieldAlias = 'Remetente_CNPJ'
      FieldName = 'Remetente_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 38
    end
    object pMemoppField40: TppField
      FieldAlias = 'Remetente_Estado'
      FieldName = 'Remetente_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 39
    end
    object pMemoppField41: TppField
      FieldAlias = 'Exportador_Nome'
      FieldName = 'Exportador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object pMemoppField42: TppField
      FieldAlias = 'Exportador_Endereco'
      FieldName = 'Exportador_Endereco'
      FieldLength = 80
      DisplayWidth = 80
      Position = 41
    end
    object pMemoppField43: TppField
      FieldAlias = 'Exportador_Inscricao'
      FieldName = 'Exportador_Inscricao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 42
    end
    object pMemoppField44: TppField
      FieldAlias = 'Exportador_CNPJ'
      FieldName = 'Exportador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 43
    end
  end
  object rMemorando: TppReport
    AutoStop = False
    DataPipeline = pMemo
    OnStartPage = rMemorandoStartPage
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Memorando de Exporta'#231#227'o'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (8.2 x 11.7 in; 210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 209900
    PrinterSetup.PaperSize = 9
    PrinterSetup.DevMode = {
      A30D00005C5C5345525645522D43594245525C53616D73756E67205343582D34
      32300000010400049C00070D03DF010001000900CEFE85006400020007005802
      0200010058020300010041340074657200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      50524956E0100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020000000000000000000000000000000100000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010000000100000000009600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001000000001006F08EA0A0100CF150A00000000FF00000102000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7800360000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010000000000808080000100900100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001000000410064006D0069006E006900730074007200610064006F0072
      00000000000000000000000000000055006E007400690074006C006500640000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000006400050000000000000000
      000000000000000000000000000000FFFFFFFFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0064000100050000005802000032003200320032003200320032003200320000
      0000003200000000000000000000000000000000000100000000000000000000
      0000000100010001000100000004000000000000000000000000000000000000
      0000000000410064006D0069006E006900730074007200610064006F00720000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000007000000
      0100000700000001000007000000010000000007000000000000000000000000
      0000000000000000000000000000000001000000000000000000000000000000
      00000000000000}
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\MemorandoExporta' +
      'cao_Novo2.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = True
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.Author = 'Cybersoft Sistemas Ltda.'
    PDFSettings.Creator = 'ERP Importa'
    PDFSettings.EmbedFontOptions = [efUseSubset]
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
    PDFSettings.Title = 'Memorando de Exporta'#231#227'o'
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 344
    Top = 256
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pMemo'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 100013
      mmPrintPosition = 0
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape8'
        Anchors = [atLeft, atTop, atBottom]
        Pen.Width = 0
        mmHeight = 5821
        mmLeft = 0
        mmTop = 94192
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape6'
        Anchors = [atLeft, atTop, atBottom]
        Brush.Style = bsClear
        Pen.Width = 0
        mmHeight = 30427
        mmLeft = 0
        mmTop = 55827
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape4'
        Brush.Style = bsClear
        Pen.Width = 0
        mmHeight = 16669
        mmLeft = 0
        mmTop = 30956
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape2'
        Pen.Width = 0
        mmHeight = 6350
        mmLeft = 0
        mmTop = 19050
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 4995
        mmLeft = 28839
        mmTop = 0
        mmWidth = 166424
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3598
        mmLeft = 103717
        mmTop = 8731
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pEmpresas
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3598
        mmLeft = 39952
        mmTop = 8731
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground3
      end
      object lEndereco: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lEndereco2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 28840
        mmTop = 4763
        mmWidth = 166424
        BandType = 0
        LayerName = Foreground3
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'iLogo1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 17198
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 28840
        mmTop = 8731
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Inscri'#231#227'o Estadual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 74348
        mmTop = 8731
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText27'
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3598
        mmLeft = 39952
        mmTop = 13229
        mmWidth = 83344
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 28840
        mmTop = 13229
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'MEMORANDO DE EXPORTA'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 19844
        mmWidth = 68792
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText47'
        Border.mmPadding = 0
        DataField = 'Numero'
        DataPipeline = pMemo
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pMemo'
        mmHeight = 5027
        mmLeft = 70908
        mmTop = 19844
        mmWidth = 32015
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6085
        mmLeft = 152136
        mmTop = 19050
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object lVia: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '1'#170' VIA - REMETENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16737843
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 154252
        mmTop = 20373
        mmWidth = 39158
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape3'
        Brush.Color = 15724527
        Pen.Width = 0
        mmHeight = 5292
        mmLeft = 0
        mmTop = 25929
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'EXPORTADOR'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3810
        mmLeft = 529
        mmTop = 26723
        mmWidth = 193940
        BandType = 0
        LayerName = Foreground3
      end
      object lEndereco2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 30692
        mmTop = 37571
        mmWidth = 163513
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Inscri'#231#227'o Estadual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 1059
        mmTop = 43127
        mmWidth = 28310
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText48'
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3598
        mmLeft = 30956
        mmTop = 42863
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 105834
        mmTop = 42863
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText49'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pEmpresas
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3598
        mmLeft = 117475
        mmTop = 42598
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText50'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3598
        mmLeft = 30956
        mmTop = 32015
        mmWidth = 163513
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 1059
        mmTop = 32015
        mmWidth = 28310
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 16140
        mmLeft = 29898
        mmTop = 31221
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5556
        mmLeft = 103717
        mmTop = 41804
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 41804
        mmWidth = 194734
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 529
        mmTop = 36513
        mmWidth = 194469
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 1059
        mmTop = 37571
        mmWidth = 28310
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText51'
        Border.mmPadding = 0
        DataField = 'Site'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3598
        mmLeft = 133350
        mmTop = 13229
        mmWidth = 61648
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Site:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 124884
        mmTop = 13229
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line7'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5556
        mmLeft = 117475
        mmTop = 41804
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape5'
        Brush.Color = 15724527
        Pen.Width = 0
        mmHeight = 5292
        mmLeft = 0
        mmTop = 50006
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DADOS DE EXPORTA'#199#195'O'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3704
        mmLeft = 529
        mmTop = 50800
        mmWidth = 193940
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label20'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Declara'#231#227'o de Exporta'#231#227'o N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 1059
        mmTop = 62177
        mmWidth = 46830
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText53'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        DataField = 'DE_Numero'
        DataPipeline = pMemo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pMemo'
        mmHeight = 3598
        mmLeft = 50272
        mmTop = 62177
        mmWidth = 59796
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line8'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 24342
        mmLeft = 48683
        mmTop = 61383
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line11'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 529
        mmTop = 61119
        mmWidth = 194469
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label201'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Registro(s) de Exporta'#231#227'o N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 1059
        mmTop = 67733
        mmWidth = 46830
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line101'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 66675
        mmWidth = 194734
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer4
        UserName = 'DBMemo1'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'RE_Numero'
        DataPipeline = pMemo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'pMemo'
        mmHeight = 12171
        mmLeft = 50272
        mmTop = 67469
        mmWidth = 143404
        BandType = 0
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label24'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Conhecimento de embarque N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 1059
        mmTop = 81227
        mmWidth = 46830
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText52'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        DataField = 'CE_Numero'
        DataPipeline = pMemo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pMemo'
        mmHeight = 3598
        mmLeft = 50271
        mmTop = 81227
        mmWidth = 59796
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line15'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 111919
        mmTop = 80169
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label25'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data embarque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 114036
        mmTop = 81227
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line16'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 138907
        mmTop = 80169
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText57'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        DataField = 'CE_Data'
        DataPipeline = pMemo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pMemo'
        mmHeight = 3598
        mmLeft = 140759
        mmTop = 81227
        mmWidth = 52652
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape7'
        Anchors = [atLeft, atTop, atBottom]
        Brush.Color = 15724527
        Pen.Width = 0
        mmHeight = 11113
        mmLeft = 0
        mmTop = 88900
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label26'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DISCRIMINA'#199#195'O DOS PRODUTOS EXPORTADOS'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3704
        mmLeft = 529
        mmTop = 89694
        mmWidth = 193940
        BandType = 0
        LayerName = Foreground3
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pSaidas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 55827
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = pSaidas
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Memorando de Exporta'#231#227'o'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4 (8.2 x 11.7 in; 210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = True
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 209900
          PrinterSetup.PaperSize = 9
          PrinterSetup.DevMode = {
            A30D00005C5C5345525645522D43594245525C53616D73756E67205343582D34
            32300000010400049C00070D03DF010001000900CEFE85006400020007005802
            0200010058020300010041340074657200000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            50524956E0100000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000020000000000000000000000000000000100000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000010000000100000000009600000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00001000000001006F08EA0A0100CF150A00000000FF00000102000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000001000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            7800360000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000010000000000808080000100900100000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000001000000410064006D0069006E006900730074007200610064006F0072
            00000000000000000000000000000055006E007400690074006C006500640000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000006400050000000000000000
            000000000000000000000000000000FFFFFFFFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0064000100050000005802000032003200320032003200320032003200320000
            0000003200000000000000000000000000000000000100000000000000000000
            0000000100010001000100000004000000000000000000000000000000000000
            0000000000410064006D0069006E006900730074007200610064006F00720000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000007000000
            0100000700000001000007000000010000000007000000000000000000000000
            0000000000000000000000000000000001000000000000000000000000000000
            00000000000000}
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pSaidas'
          object ppTitleBand3: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppShape11: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape1'
              Anchors = [atLeft, atTop, atBottom]
              Brush.Color = 15724527
              Pen.Width = 0
              mmHeight = 5027
              mmLeft = 0
              mmTop = 0
              mmWidth = 194998
              BandType = 1
              LayerName = Foreground
            end
            object ppShape14: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape14'
              Brush.Style = bsClear
              Pen.Width = 0
              mmHeight = 5027
              mmLeft = 0
              mmTop = 0
              mmWidth = 194998
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CHAVE DE ACESSO DA NOTA FISCAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 795
              mmTop = 529
              mmWidth = 112977
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel38: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label38'
              Anchors = [atLeft, atBottom]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'NOTA FISCAL N'#186
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 156898
              mmTop = 529
              mmWidth = 37306
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel41: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label41'
              Anchors = [atLeft, atBottom]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DATA DE EMISS'#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 114829
              mmTop = 529
              mmWidth = 41010
              BandType = 1
              LayerName = Foreground
            end
            object ppLine43: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line43'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5027
              mmLeft = 114300
              mmTop = 0
              mmWidth = 2646
              BandType = 1
              LayerName = Foreground
            end
            object ppLine45: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line45'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4763
              mmLeft = 156369
              mmTop = 265
              mmWidth = 2646
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'NFe_cNF'
              DataPipeline = pSaidas
              DisplayFormat = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pSaidas'
              mmHeight = 3598
              mmLeft = 795
              mmTop = 529
              mmWidth = 113242
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'Numero'
              DataPipeline = pSaidas
              DisplayFormat = '000000000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pSaidas'
              mmHeight = 3704
              mmLeft = 156898
              mmTop = 529
              mmWidth = 37306
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'Data_Emissao'
              DataPipeline = pSaidas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pSaidas'
              mmHeight = 3598
              mmLeft = 117740
              mmTop = 529
              mmWidth = 38100
              BandType = 4
              LayerName = Foreground
            end
            object ppLine42: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line42'
              Border.mmPadding = 0
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 114300
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine44: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line44'
              Border.mmPadding = 0
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 156369
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 194734
              mmTop = 0
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
          end
          object raCodeModule4: TraCodeModule
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
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line46'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 80169
        mmWidth = 194734
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label27'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 95250
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line17'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5556
        mmLeft = 24606
        mmTop = 94192
        mmWidth = 794
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line18'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5556
        mmLeft = 34396
        mmTop = 94192
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label28'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 95250
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line19'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5556
        mmLeft = 56886
        mmTop = 94192
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label29'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 35190
        mmTop = 95250
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label30'
        Anchors = [atLeft, atTop, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 57679
        mmTop = 95250
        mmWidth = 136525
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line10'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 93927
        mmWidth = 194734
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppSubReport3: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport3'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197200
        BandType = 4
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = pItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Memorando de Exporta'#231#227'o'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4 (8.2 x 11.7 in; 210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = True
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 209900
          PrinterSetup.PaperSize = 9
          PrinterSetup.DevMode = {
            A30D00005C5C5345525645522D43594245525C53616D73756E67205343582D34
            32300000010400049C00070D03DF010001000900CEFE85006400020007005802
            0200010058020300010041340074657200000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            50524956E0100000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000020000000000000000000000000000000100000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000010000000100000000009600000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00001000000001006F08EA0A0100CF150A00000000FF00000102000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000001000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            7800360000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000010000000000808080000100900100000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000001000000410064006D0069006E006900730074007200610064006F0072
            00000000000000000000000000000055006E007400690074006C006500640000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000006400050000000000000000
            000000000000000000000000000000FFFFFFFFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0064000100050000005802000032003200320032003200320032003200320000
            0000003200000000000000000000000000000000000100000000000000000000
            0000000100010001000100000004000000000000000000000000000000000000
            0000000000410064006D0069006E006900730074007200610064006F00720000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000007000000
            0100000700000001000007000000010000000007000000000000000000000000
            0000000000000000000000000000000001000000000000000000000000000000
            00000000000000}
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pItens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand5: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText58: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText58'
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3260
              mmLeft = 1058
              mmTop = 529
              mmWidth = 22753
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line20'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 5027
              mmLeft = 24606
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText59: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText59'
              Border.mmPadding = 0
              DataField = 'Unidade_Medida'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3260
              mmLeft = 25665
              mmTop = 529
              mmWidth = 7938
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line201'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 5027
              mmLeft = 34396
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText60: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText60'
              Border.mmPadding = 0
              DataField = 'NCM'
              DataPipeline = pItens
              DisplayFormat = '9999.99.99;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3260
              mmLeft = 35454
              mmTop = 529
              mmWidth = 20638
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line22'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 5027
              mmLeft = 56886
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line23'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 5027
              mmLeft = 0
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBMemo2: TppDBMemo
              DesignLayer = ppDesignLayer2
              UserName = 'DBMemo2'
              Border.mmPadding = 0
              CharWrap = False
              DataField = 'Descricao_Mercadoria'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              RemoveEmptyLines = False
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 4233
              mmLeft = 57679
              mmTop = 529
              mmWidth = 134144
              BandType = 4
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line24'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 5027
              mmLeft = 194998
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line25'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 265
              mmLeft = 0
              mmTop = 4763
              mmWidth = 194998
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 24077
            mmPrintPosition = 0
            object ppShape10: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape10'
              Brush.Style = bsClear
              Pen.Width = 0
              mmHeight = 15610
              mmLeft = 0
              mmTop = 8467
              mmWidth = 194998
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape9: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape9'
              Brush.Color = 15724527
              Pen.Width = 0
              mmHeight = 5292
              mmLeft = 0
              mmTop = 3440
              mmWidth = 194998
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label31'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'REMETENTE COM FIM ESPEC'#205'FICO DE EXPORTA'#199#195'O'
              Color = 15724527
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3704
              mmLeft = 529
              mmTop = 4233
              mmWidth = 193940
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label33'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Inscri'#231#227'o Estadual:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 19315
              mmWidth = 28310
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText61: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText61'
              Border.mmPadding = 0
              DataField = 'Fornecedor_Inscricao'
              DataPipeline = pMemo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pMemo'
              mmHeight = 3704
              mmLeft = 30956
              mmTop = 19315
              mmWidth = 71967
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label34'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CNPJ:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 105834
              mmTop = 19315
              mmWidth = 10583
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText62: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText62'
              Border.mmPadding = 0
              DataField = 'Fornecedor_CNPJ'
              DataPipeline = pMemo
              DisplayFormat = '99.999.999/9999-99;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pMemo'
              mmHeight = 3704
              mmLeft = 117475
              mmTop = 19315
              mmWidth = 30163
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText63: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText502'
              Border.mmPadding = 0
              DataField = 'Fornecedor_Nome'
              DataPipeline = pMemo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pMemo'
              mmHeight = 3704
              mmLeft = 30956
              mmTop = 8996
              mmWidth = 163513
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label35'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Raz'#227'o Social:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 8731
              mmWidth = 28310
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line26'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 15610
              mmLeft = 29898
              mmTop = 8467
              mmWidth = 3704
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line27'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 5556
              mmLeft = 103717
              mmTop = 18521
              mmWidth = 3704
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line28'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              mmHeight = 1852
              mmLeft = 0
              mmTop = 18521
              mmWidth = 194734
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine29: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line29'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              mmHeight = 1058
              mmLeft = 0
              mmTop = 13229
              mmWidth = 194734
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel36: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label36'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Endere'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 14288
              mmWidth = 28310
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine30: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line30'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 5556
              mmLeft = 117475
              mmTop = 18521
              mmWidth = 3704
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText64: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText64'
              Border.mmPadding = 0
              DataField = 'Fornecedor_Endereco'
              DataPipeline = pMemo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pMemo'
              mmHeight = 3704
              mmLeft = 30956
              mmTop = 14288
              mmWidth = 163513
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
        end
      end
      object ppSubReport4: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport4'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport3
        TraverseAllData = False
        DataPipelineName = 'pEntradas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 11113
        mmWidth = 197200
        BandType = 4
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = pEntradas
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Memorando de Exporta'#231#227'o'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4 (8.2 x 11.7 in; 210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = True
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 209900
          PrinterSetup.PaperSize = 9
          PrinterSetup.DevMode = {
            A30D00005C5C5345525645522D43594245525C53616D73756E67205343582D34
            32300000010400049C00070D03DF010001000900CEFE85006400020007005802
            0200010058020300010041340074657200000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            50524956E0100000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000020000000000000000000000000000000100000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000010000000100000000009600000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00001000000001006F08EA0A0100CF150A00000000FF00000102000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000001000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            7800360000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000010000000000808080000100900100000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000001000000410064006D0069006E006900730074007200610064006F0072
            00000000000000000000000000000055006E007400690074006C006500640000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000006400050000000000000000
            000000000000000000000000000000FFFFFFFFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0064000100050000005802000032003200320032003200320032003200320000
            0000003200000000000000000000000000000000000100000000000000000000
            0000000100010001000100000004000000000000000000000000000000000000
            0000000000410064006D0069006E006900730074007200610064006F00720000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000007000000
            0100000700000001000007000000010000000007000000000000000000000000
            0000000000000000000000000000000001000000000000000000000000000000
            00000000000000}
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pEntradas'
          object ppTitleBand4: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 14288
            mmPrintPosition = 0
            object ppShape15: TppShape
              DesignLayer = ppDesignLayer3
              UserName = 'Shape11'
              Brush.Color = 15724527
              Pen.Width = 0
              mmHeight = 11377
              mmLeft = 0
              mmTop = 2646
              mmWidth = 194998
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DADOS DO DOCUMENTOS FISCAIS DE REMESSA'
              Color = 15724527
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3704
              mmLeft = 529
              mmTop = 3440
              mmWidth = 193940
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel23: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label37'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CHAVE DE ACESSO DA NOTA FISCAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 1059
              mmTop = 9525
              mmWidth = 103980
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line37'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 5556
              mmLeft = 105834
              mmTop = 8467
              mmWidth = 3704
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line38'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 5556
              mmLeft = 147902
              mmTop = 8467
              mmWidth = 3704
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel42: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label39'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'NOTA FISCAL N'#186
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 107155
              mmTop = 9525
              mmWidth = 39952
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel43: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label301'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DATA DE EMISS'#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 149489
              mmTop = 9525
              mmWidth = 44186
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine31: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line1'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 1852
              mmLeft = 0
              mmTop = 8202
              mmWidth = 194998
              BandType = 1
              LayerName = Foreground2
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'NFe_cNF'
              DataPipeline = pEntradas
              DisplayFormat = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pEntradas'
              mmHeight = 3598
              mmLeft = 1059
              mmTop = 0
              mmWidth = 103980
              BandType = 4
              LayerName = Foreground2
            end
            object ppLine47: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line202'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 105834
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'Nota'
              DataPipeline = pEntradas
              DisplayFormat = '000000000;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pEntradas'
              mmHeight = 3704
              mmLeft = 107155
              mmTop = 0
              mmWidth = 39952
              BandType = 4
              LayerName = Foreground2
            end
            object ppLine48: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line32'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 147902
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText601'
              Border.mmPadding = 0
              DataField = 'Data_Emissao'
              DataPipeline = pEntradas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pEntradas'
              mmHeight = 3704
              mmLeft = 149489
              mmTop = 0
              mmWidth = 44186
              BandType = 4
              LayerName = Foreground2
            end
            object ppLine49: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line34'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 0
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground2
            end
            object ppLine50: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line35'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 194734
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppSummaryBand4: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 1852
            mmPrintPosition = 0
            object ppLine51: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line33'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 265
              mmLeft = 0
              mmTop = 0
              mmWidth = 194734
              BandType = 7
              LayerName = Foreground2
            end
          end
          object raCodeModule5: TraCodeModule
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
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
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas Ltda.'
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
        mmWidth = 27263
        BandType = 8
        LayerName = Foreground3
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 174625
        mmTop = 528
        mmWidth = 8467
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 184150
        mmTop = 528
        mmWidth = 4064
        BandType = 8
        LayerName = Foreground3
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 188384
        mmTop = 528
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageCount
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 190765
        mmTop = 528
        mmWidth = 4064
        BandType = 8
        LayerName = Foreground3
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 194734
        BandType = 8
        LayerName = Foreground3
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape13'
        Pen.Width = 0
        mmHeight = 13758
        mmLeft = 0
        mmTop = 5819
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground3
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape1'
        Brush.Color = 15724527
        Pen.Width = 0
        mmHeight = 11642
        mmLeft = 0
        mmTop = 0
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REPRESENTANTE LEGAL DO EXPORTADOR/RESPONS'#193'VEL'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3704
        mmLeft = 529
        mmTop = 794
        mmWidth = 193940
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1059
        mmTop = 6879
        mmWidth = 94722
        BandType = 7
        LayerName = Foreground3
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line36'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 13494
        mmLeft = 96838
        mmTop = 5819
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground3
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line39'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 13494
        mmLeft = 130969
        mmTop = 5819
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA DA EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 98161
        mmTop = 6879
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label32'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ASSINATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 132027
        mmTop = 6879
        mmWidth = 61913
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Responsavel'
        DataPipeline = pMemo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pMemo'
        mmHeight = 3598
        mmLeft = 1059
        mmTop = 13494
        mmWidth = 94722
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Data_Emissao'
        DataPipeline = pMemo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pMemo'
        mmHeight = 3598
        mmLeft = 98161
        mmTop = 13494
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground3
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line102'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 11377
        mmWidth = 194734
        BandType = 7
        LayerName = Foreground3
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 0
        mmTop = 5556
        mmWidth = 194734
        BandType = 7
        LayerName = Foreground3
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object tSaidas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Numero'
      '      ,NFe_cNF'
      '      ,Data_Emissao'
      'FROM NotasFiscais'
      'WHERE Processo = '#39'PE: 01/2017'#39)
    FetchRows = 1
    Active = True
    Left = 232
    Top = 243
  end
  object dstSaidas: TDataSource
    DataSet = tSaidas
    Left = 263
    Top = 243
  end
  object pSaidas: TppDBPipeline
    DataSource = dstSaidas
    OpenDataSource = False
    UserName = 'pSaidas'
    Left = 264
    Top = 272
    object pSaidasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pSaidasppField2: TppField
      FieldAlias = 'NFe_cNF'
      FieldName = 'NFe_cNF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object pSaidasppField3: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Numero'
      '      ,Data_Emissao'
      '      ,Processo'
      '      ,DE_Numero'
      '      ,DE_Data'
      '      ,RE_Numero'
      '      ,RE_Data'
      'FROM  MemorandoExportacao')
    FetchRows = 1
    Active = True
    Left = 40
    Top = 203
  end
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 71
    Top = 203
  end
end
