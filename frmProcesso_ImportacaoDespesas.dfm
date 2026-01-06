object Processo_ImportacaoDespesas: TProcesso_ImportacaoDespesas
  Left = 426
  Top = 221
  Anchors = [akTop, akRight]
  BorderStyle = bsDialog
  Caption = 'Processo_ImportacaoDespesas'
  ClientHeight = 532
  ClientWidth = 1243
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1237
    Height = 439
    Align = alTop
    DataSource = dstDespesas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Classificacao'
        ImeMode = imHanguel
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Classifica'#231#227'o Financeira'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 295
        Visible = True
      end
      item
        DropDownRows = 15
        Expanded = False
        FieldName = 'NomeBenef'
        ImeMode = imHanguel
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 322
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_Doc'
        Title.Alignment = taCenter
        Title.Caption = 'Documento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 230
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'DT DOC'
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
        FieldName = 'Data_Venc'
        Title.Alignment = taCenter
        Title.Caption = 'DT Vencto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 502
    Width = 1243
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1243
      30)
    object bSair: TButton
      Left = 1164
      Top = 1
      Width = 79
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bLancamentos: TButton
      Left = 1048
      Top = 1
      Width = 115
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Gerar Lan'#231'amentos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bLancamentosClick
    end
  end
  object cPesquisa: TEdit
    Left = 95
    Top = 463
    Width = 450
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = cPesquisaChange
  end
  object StaticText8: TStaticText
    Left = 5
    Top = 463
    Width = 88
    Height = 21
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisa'
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
  object cMostrar: TRadioGroup
    Left = 845
    Top = 447
    Width = 390
    Height = 48
    Caption = 'Mostrar Classifica'#231#245'es'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Movimentadas'
      'N'#227'o Movimentadas'
      'Todas')
    TabOrder = 4
    OnClick = cMostrarClick
  end
  object tClass: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo'
      '      ,Descricao'
      '      ,Documento  = CAST('#39#39' AS VARCHAR(10))'
      '      ,Data       = CAST(NULL AS datetime)'
      '      ,Vencimento = CAST(NULL AS datetime)'
      '      ,Valor      = CAST(0 AS money)'
      
        '      ,Uso = (SELECT COUNT(*) FROM PagarReceber WHERE Classifica' +
        'cao = Codigo)'
      'FROM   ClassificacaoFinanceira '
      'WHERE  Modalidade_Importacao = 2'
      'AND    Tipo = '#39'P'#39
      'AND    Desativada <> 1'
      
        'AND   (SELECT COUNT(*) FROM PagarReceber WHERE Classificacao = C' +
        'odigo) > 0'
      'ORDER BY Uso Desc')
    FetchRows = 1
    Left = 244
    Top = 304
    object tClassCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'ClassificacaoFinanceira.Codigo'
      Size = 15
    end
    object tClassDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'ClassificacaoFinanceira.Descricao'
      Size = 60
    end
    object tClassDocumento: TStringField
      FieldName = 'Documento'
      Origin = '.'
      ReadOnly = True
      Size = 10
    end
    object tClassData: TDateTimeField
      FieldName = 'Data'
      Origin = '.'
      ReadOnly = True
    end
    object tClassVencimento: TDateTimeField
      FieldName = 'Vencimento'
      Origin = '.'
      ReadOnly = True
    end
    object tClassValor: TCurrencyField
      FieldName = 'Valor'
      Origin = '.'
      ReadOnly = True
    end
    object tClassUso: TIntegerField
      FieldName = 'Uso'
      Origin = '.'
      ReadOnly = True
    end
  end
  object dstDespesas: TDataSource
    DataSet = tDesp
    Left = 306
    Top = 352
  end
  object tDesp: TClientDataSet
    PersistDataPacket.Data = {
      F20000009619E0BD010000001800000007000000000003000000F2000D436C61
      7373696669636163616F0100490000000100055749445448020002000F000C42
      656E65666963696172696F040001000000000009446F63756D656E746F010049
      0000000100055749445448020002000A0008446174615F444F43040006000000
      000009446174615F56656E6304000600000000000556616C6F72080004000000
      010007535542545950450200490006004D6F6E6579000B556C74696D6F5F5061
      676F080004000000010007535542545950450200490006004D6F6E6579000100
      0D44454641554C545F4F524445520200820000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Classificacao'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Beneficiario'
        DataType = ftInteger
      end
      item
        Name = 'Documento'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Data_DOC'
        DataType = ftDate
      end
      item
        Name = 'Data_Venc'
        DataType = ftDate
      end
      item
        Name = 'Valor'
        DataType = ftCurrency
      end
      item
        Name = 'Ultimo_Pago'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 304
    Top = 304
    object tDespClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 15
    end
    object tDespDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Dados.ClassificacaoFinanceira
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Classificacao'
      Size = 60
      Lookup = True
    end
    object tDespBeneficiario: TIntegerField
      FieldName = 'Beneficiario'
    end
    object tDespNomeBene: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeBenef'
      LookupDataSet = Dados.Fornecedores
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Beneficiario'
      Size = 50
      Lookup = True
    end
    object tDespDocumento: TStringField
      FieldName = 'Documento'
      Size = 10
    end
    object tDespDescricao_Doc: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Doc'
      LookupDataSet = Dados.TiposDocumentos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Documento'
      Size = 30
      Lookup = True
    end
    object tDespData_DOC: TDateField
      FieldName = 'Data_DOC'
    end
    object tDespData_Venc: TDateField
      FieldName = 'Data_Venc'
      EditMask = '!99/99/00;1; '
    end
    object tDespValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 180
    Top = 304
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 209
    object PesquisarClassificaoFinanceira1: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF656A6D6D6B6D6C67696E6F71717375726C6F161D21777C7DC7CACBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBEC5C6362326FCD9DAFFE9E9FFFFFFFFFFFFFF
        FFFFFFFFFFFCD9DA9A7274261E1E62686AEEEEEFFFFFFFFFFFFFC7CECF886164
        FACECFF8D7D7AA9A9C5C585B67686A696A6D565458FFE0E0E4ADAFF0B2B22822
        2265696CE9E9E9FFFFFF523A3EFDC5C645363B6D7578BCC2C3FFFFFFF2F5F5E3
        E7E8E4E8E843494C464044986D70FAB8B8131A1A8D8E90FFFFFF6D51564E474C
        FFFFFF67757E544049513F474F3C424D3B3F513B3F465559869292758083A673
        732329295F6163E8E7E824292EFFFFFF404754FFAFBCFFB1C4FFB3C5FFAAB2FF
        A8ACFFA5A8FFA8AABE6C70808D8F767C7C252627656667AEAEAF8E8F926A757C
        FFBAC5F0C0D4FDC9DAFFADC6FFA7BDFFA1A8FFA2A6FFACAFDDA0A00B0000BCC0
        C11E1D1E47494AFFFFFF737577D3DBDEB66A83FFBAD1FFFFFFEED2E6CA9AB5BE
        8C92B48685945E5875362C322B32C3C4C6000000F0F0F0FFFFFFC2C2C4C1C2C2
        D5E3F1764D7BD6B1D1F0A9C5D07C9CB46166A2544D612E2E37262BCFD2D44A4A
        4AFFFFFFFFFFFFFFFFFFFFFFFFBCBDBF61626CFFFFFFCBD0DE7C84A6757B9583
        978A5B6A72A1A6AF8E99A03743462A2E2CEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6263706E6F7A696A72636468575B616363685D6B78B7C1C5CDCDCB545B
        56212522EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC3C6CC6A716F5D5B5C353835000C0D242222F3F3F3FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C8C73E4741666F
        6A30373B000000343434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC9CCCF3A3D3F5A5858242425000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACA
        CA343434464746050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD767676DBDBDB}
      Caption = 'Pesquisar Classifica'#231#227'o Financeira'
      OnClick = PesquisarClassificaoFinanceira1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Pesquisar1: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF656A6D6D6B6D6C67696E6F71717375726C6F161D21777C7DC7CACBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBEC5C6362326FCD9DAFFE9E9FFFFFFFFFFFFFF
        FFFFFFFFFFFCD9DA9A7274261E1E62686AEEEEEFFFFFFFFFFFFFC7CECF886164
        FACECFF8D7D7AA9A9C5C585B67686A696A6D565458FFE0E0E4ADAFF0B2B22822
        2265696CE9E9E9FFFFFF523A3EFDC5C645363B6D7578BCC2C3FFFFFFF2F5F5E3
        E7E8E4E8E843494C464044986D70FAB8B8131A1A8D8E90FFFFFF6D51564E474C
        FFFFFF67757E544049513F474F3C424D3B3F513B3F465559869292758083A673
        732329295F6163E8E7E824292EFFFFFF404754FFAFBCFFB1C4FFB3C5FFAAB2FF
        A8ACFFA5A8FFA8AABE6C70808D8F767C7C252627656667AEAEAF8E8F926A757C
        FFBAC5F0C0D4FDC9DAFFADC6FFA7BDFFA1A8FFA2A6FFACAFDDA0A00B0000BCC0
        C11E1D1E47494AFFFFFF737577D3DBDEB66A83FFBAD1FFFFFFEED2E6CA9AB5BE
        8C92B48685945E5875362C322B32C3C4C6000000F0F0F0FFFFFFC2C2C4C1C2C2
        D5E3F1764D7BD6B1D1F0A9C5D07C9CB46166A2544D612E2E37262BCFD2D44A4A
        4AFFFFFFFFFFFFFFFFFFFFFFFFBCBDBF61626CFFFFFFCBD0DE7C84A6757B9583
        978A5B6A72A1A6AF8E99A03743462A2E2CEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6263706E6F7A696A72636468575B616363685D6B78B7C1C5CDCDCB545B
        56212522EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC3C6CC6A716F5D5B5C353835000C0D242222F3F3F3FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C8C73E4741666F
        6A30373B000000343434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC9CCCF3A3D3F5A5858242425000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACA
        CA343434464746050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD767676DBDBDB}
      Caption = 'Pesquisar Beneficiario'
      OnClick = Pesquisar1Click
    end
  end
end
