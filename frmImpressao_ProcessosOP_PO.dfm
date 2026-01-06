object Impressao_ProcessosOP_PO: TImpressao_ProcessosOP_PO
  Left = 572
  Top = 273
  BorderStyle = bsDialog
  Caption = 'Impressao_ProcessosOP_PO'
  ClientHeight = 473
  ClientWidth = 721
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
    Width = 721
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 710
  end
  object bLimpaFiltro: TSpeedButton
    Left = 464
    Top = 54
    Width = 23
    Height = 24
    Hint = '  Limpar todos os filtros.  '
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      20000000000000040000C40E0000C40E00000000000000000000040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400000099FF0404040004040400040404000404040004040400040404000404
      04000404040004040400040404000000FFFF0404040004040400040404003333
      CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404003333
      CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
      040004040400040404000000FFFF040404000404040004040400040404000404
      04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
      0400040404000000FFFF04040400040404000404040004040400040404000404
      0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
      04000000FFFF000099FF04040400040404000404040004040400040404000404
      040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
      FFFF000099FF0404040004040400040404000404040004040400040404000404
      04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
      99FF040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
      0400040404000404040004040400040404000404040004040400040404000404
      04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
      99FF040404000404040004040400040404000404040004040400040404000404
      040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
      CCFF000099FF0404040004040400040404000404040004040400040404000404
      04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
      04000000CCFF000099FF04040400040404000404040004040400040404000000
      CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
      0400040404000000CCFF000099FF040404000404040004040400040404006666
      99FF0000CCFF666699FF04040400040404000404040004040400040404000404
      04000404040004040400040404000000CCFF0404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400}
    ParentShowHint = False
    ShowHint = True
    OnClick = bLimpaFiltroClick
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
    Width = 217
    Height = 18
    Caption = 'Impress'#227'o da Purchase Order (PO).'
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
    Top = 443
    Width = 721
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      721
      30)
    object bSair: TButton
      Left = 645
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
      DataSource = Dados.dsProcessosDOC
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
    object bPesquisa: TButton
      Left = 257
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bImprimir: TButton
      Left = 331
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImprimirClick
    end
  end
  object Grade: TDBGrid
    Left = 5
    Top = 84
    Width = 710
    Height = 326
    DataSource = dmDespacho.dsPO
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
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'PO #'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Caption = 'DATA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Requisitante'
        Title.Alignment = taCenter
        Title.Caption = 'REQUISITANTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Exportador_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'EXPORTADOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 254
        Visible = True
      end>
  end
  object StaticText26: TStaticText
    Left = 5
    Top = 56
    Width = 72
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Respons'#225'vel'
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
  object cResponsavel: TRxDBLookupCombo
    Left = 79
    Top = 56
    Width = 385
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Matricula'
    LookupDisplay = 'Matricula;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsUsuarios
    ParentFont = False
    TabOrder = 3
    OnChange = cResponsavelChange
  end
  object cExcel: TCheckBox
    Left = 497
    Top = 57
    Width = 150
    Height = 17
    Caption = 'Gerar em sa'#237'da em EXCEL.'
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 0
    Top = 410
    Width = 721
    Height = 33
    Align = alBottom
    TabOrder = 5
    object cPesquisa: TEdit
      Left = 61
      Top = 6
      Width = 268
      Height = 21
      TabOrder = 0
      OnChange = cPesquisaChange
    end
    object StaticText28: TStaticText
      Left = 6
      Top = 6
      Width = 53
      Height = 21
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
      TabOrder = 1
      Transparent = False
      StyleElements = []
    end
  end
  object tOrdem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Processo'
      '      ,Numero'
      '      ,Data'
      
        '      ,Vendor       = (SELECT Nome FROM Fornecedores WHERE Codig' +
        'o = Exportador)'
      
        '      ,Vendor_End   = (SELECT Rua+'#39', '#39'+Rua_Numero FROM Fornecedo' +
        'res WHERE Codigo = Exportador)'
      
        #9' ,Vendor_Cid   = (SELECT Complemento+'#39' - '#39'+ISNULL(CEP, '#39#39') FROM' +
        ' Fornecedores WHERE Codigo = Exportador)'
      
        #9' ,Vendor_Tel   = '#39'PHONE: '#39'+ISNULL((SELECT Telefone1 FROM Fornec' +
        'edores WHERE Codigo = Exportador), '#39#39')'
      
        #9' ,Vendor_Email = '#39'EMAIL: '#39'+ISNULL((SELECT Email FROM Fornecedor' +
        'es WHERE Codigo = Exportador), '#39#39')'
      
        #9' ,Empresa      = (SELECT Razao_Social FROM Cybersoft_Cadastros.' +
        'dbo.Empresas WHERE Codigo = Empresa)'
      
        #9' ,Endereco     = (SELECT Rua+'#39' '#39'+CAST(Rua_Numero AS VARCHAR(15)' +
        ')+ISNULL(Complemento, '#39#39')+'#39' - '#39'+Bairro FROM Cybersoft_Cadastros.' +
        'dbo.Empresas WHERE Codigo = Empresa)'
      
        #9' ,Endereco2    = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Muni' +
        'cipios WHERE Codigo = (SELECT Municipio_Codigo FROM Cybersoft_Ca' +
        'dastros.dbo.Empresas WHERE Codigo = Empresa))+'
      
        #9'                 '#39' ('#39'+(SELECT Estado FROM Cybersoft_Cadastros.d' +
        'bo.Empresas WHERE Codigo = Empresa)+'#39')'#39' '
      
        #9' ,CEP          = (SELECT CEP FROM Cybersoft_Cadastros.dbo.Empre' +
        'sas WHERE Codigo = Empresa)'
      
        #9' ,Telefones    = '#39'PHONE :'#39'+ISNULL((SELECT Telefone1+'#39'/'#39'+Telefon' +
        'e2 FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)' +
        ', '#39#39')'
      
        #9' ,Cliente      = (SELECT Nome FROM Clientes WHERE Codigo = Clie' +
        'nte)'
      
        #9' ,Cliente_End  = (SELECT Rua+'#39', '#39'+Rua_Numero FROM Clientes WHER' +
        'E Codigo = Cliente)'
      
        #9' ,Cliente_Cid  = (SELECT Complemento+'#39' - '#39'+ISNULL(CEP, '#39#39') FROM' +
        ' Clientes WHERE Codigo = Cliente)'
      
        #9' ,Cliente_Tel  = '#39'PHONE: '#39'+ISNULL((SELECT Telefone1 FROM Client' +
        'es WHERE Codigo = Cliente), '#39#39')'
      
        #9' ,Cliente_Email= '#39'EMAIL: '#39'+ISNULL((SELECT Email FROM Clientes W' +
        'HERE Codigo = Cliente), '#39#39')'
      #9' ,Responsavel  = Requisitante'
      
        '      ,Via_Transporte = (SELECT Descricao FROM Cybersoft_Cadastr' +
        'os.dbo.ViaTransporte WHERE Codigo = PO.Via_Transporte)'
      #9' ,Local_Embarque'
      #9' ,Incoterms'
      #9' ,Observacao'
      
        #9' ,Condicao_Pgto= (SELECT Descricao FROM CondicaoCambial WHERE C' +
        'odigo = Condicao_Cambial)'
      
        #9' ,SubTotal     = (SELECT SUM(Valor*Quantidade) FROM POItens WHE' +
        'RE PO = Numero)'
      #9' ,Tax          = 0'
      #9' ,Shipping     = 0'
      #9' ,Other        = 0'
      
        #9' ,Total        = (SELECT SUM(Valor*Quantidade) FROM POItens WHE' +
        'RE PO = Numero)'
      
        '      ,Moeda_Simbol = (SELECT Simbolo FROM Cybersoft_Cadastros.d' +
        'bo.Moedas WHERE Codigo = Moeda)'
      'FROM  PO'
      
        'WHERE (SELECT COUNT(*) FROM POItens WHERE POItens.PO = PO.Numero' +
        ') > 0'
      'ORDER BY Numero')
    FetchRows = 1
    Active = True
    Left = 136
    Top = 170
  end
  object dstOrdem: TDataSource
    DataSet = tOrdem
    Left = 136
    Top = 218
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 310
    Top = 170
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
      DisplayWidth = 25
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
      DisplayWidth = 14
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
    object pEmpresasppField175: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 174
    end
    object pEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresasppField180: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresasppField181: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresasppField184: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 183
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 184
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 185
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 189
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 190
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 191
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 192
    end
    object pEmpresasppField194: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 193
    end
    object pEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresasppField196: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 195
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 196
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresasppField199: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 198
    end
    object pEmpresasppField200: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 199
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 200
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 201
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 202
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 203
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
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
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresasppField208: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresasppField209: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 208
    end
  end
  object pOrdem: TppDBPipeline
    DataSource = dstOrdem
    UserName = 'pOrdem'
    Left = 366
    Top = 170
    object pOrdemppField1: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object pOrdemppField2: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object pOrdemppField3: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object pOrdemppField4: TppField
      FieldAlias = 'Vendor'
      FieldName = 'Vendor'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pOrdemppField5: TppField
      FieldAlias = 'Vendor_End'
      FieldName = 'Vendor_End'
      FieldLength = 52
      DisplayWidth = 52
      Position = 4
    end
    object pOrdemppField6: TppField
      FieldAlias = 'Vendor_Cid'
      FieldName = 'Vendor_Cid'
      FieldLength = 31
      DisplayWidth = 31
      Position = 5
    end
    object pOrdemppField7: TppField
      FieldAlias = 'Vendor_Tel'
      FieldName = 'Vendor_Tel'
      FieldLength = 22
      DisplayWidth = 22
      Position = 6
    end
    object pOrdemppField8: TppField
      FieldAlias = 'Vendor_Email'
      FieldName = 'Vendor_Email'
      FieldLength = 67
      DisplayWidth = 67
      Position = 7
    end
    object pOrdemppField9: TppField
      FieldAlias = 'Empresa'
      FieldName = 'Empresa'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object pOrdemppField10: TppField
      FieldAlias = 'Endereco'
      FieldName = 'Endereco'
      FieldLength = 124
      DisplayWidth = 124
      Position = 9
    end
    object pOrdemppField11: TppField
      FieldAlias = 'Endereco2'
      FieldName = 'Endereco2'
      FieldLength = 55
      DisplayWidth = 55
      Position = 10
    end
    object pOrdemppField12: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 11
    end
    object pOrdemppField13: TppField
      FieldAlias = 'Telefones'
      FieldName = 'Telefones'
      FieldLength = 30
      DisplayWidth = 30
      Position = 12
    end
    object pOrdemppField14: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object pOrdemppField15: TppField
      FieldAlias = 'Cliente_End'
      FieldName = 'Cliente_End'
      FieldLength = 52
      DisplayWidth = 52
      Position = 14
    end
    object pOrdemppField16: TppField
      FieldAlias = 'Cliente_Cid'
      FieldName = 'Cliente_Cid'
      FieldLength = 31
      DisplayWidth = 31
      Position = 15
    end
    object pOrdemppField17: TppField
      FieldAlias = 'Cliente_Tel'
      FieldName = 'Cliente_Tel'
      FieldLength = 22
      DisplayWidth = 22
      Position = 16
    end
    object pOrdemppField18: TppField
      FieldAlias = 'Cliente_Email'
      FieldName = 'Cliente_Email'
      FieldLength = 67
      DisplayWidth = 67
      Position = 17
    end
    object pOrdemppField19: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pOrdemppField20: TppField
      FieldAlias = 'Via_Transporte'
      FieldName = 'Via_Transporte'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
    object pOrdemppField21: TppField
      FieldAlias = 'Local_Embarque'
      FieldName = 'Local_Embarque'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object pOrdemppField22: TppField
      FieldAlias = 'Incoterms'
      FieldName = 'Incoterms'
      FieldLength = 3
      DisplayWidth = 3
      Position = 21
    end
    object pOrdemppField23: TppField
      FieldAlias = 'Observacao'
      FieldName = 'Observacao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 22
      Searchable = False
      Sortable = False
    end
    object pOrdemppField24: TppField
      FieldAlias = 'Condicao_Pgto'
      FieldName = 'Condicao_Pgto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 23
    end
    object pOrdemppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object pOrdemppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tax'
      FieldName = 'Tax'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object pOrdemppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Shipping'
      FieldName = 'Shipping'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object pOrdemppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Other'
      FieldName = 'Other'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object pOrdemppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object pOrdemppField30: TppField
      FieldAlias = 'Moeda_Simbol'
      FieldName = 'Moeda_Simbol'
      FieldLength = 10
      DisplayWidth = 10
      Position = 29
    end
  end
  object pProcessos: TppDBPipeline
    DataSource = Dados.dsProcessosDOC
    UserName = 'pProcessos'
    Left = 246
    Top = 170
    object pProcessosppField1: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object pProcessosppField2: TppField
      FieldAlias = 'Processo_Mestre'
      FieldName = 'Processo_Mestre'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object pProcessosppField3: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 15
      DisplayWidth = 8
      Position = 2
    end
    object pProcessosppField4: TppField
      FieldAlias = 'Entreposto'
      FieldName = 'Entreposto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 3
    end
    object pProcessosppField5: TppField
      FieldAlias = 'Incoterms'
      FieldName = 'Incoterms'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object pProcessosppField6: TppField
      FieldAlias = 'Numero_Declaracao'
      FieldName = 'Numero_Declaracao'
      FieldLength = 15
      DisplayWidth = 12
      Position = 5
    end
    object pProcessosppField7: TppField
      FieldAlias = 'Data_RegistroDeclaracao'
      FieldName = 'Data_RegistroDeclaracao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object pProcessosppField8: TppField
      FieldAlias = 'Data_DesembaracoDeclaracao'
      FieldName = 'Data_DesembaracoDeclaracao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object pProcessosppField9: TppField
      FieldAlias = 'FOB'
      FieldName = 'FOB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pProcessosppField10: TppField
      FieldAlias = 'Frete'
      FieldName = 'Frete'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pProcessosppField11: TppField
      FieldAlias = 'Seguro'
      FieldName = 'Seguro'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pProcessosppField12: TppField
      FieldAlias = 'II'
      FieldName = 'II'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object pProcessosppField13: TppField
      FieldAlias = 'ICMS_DIferido'
      FieldName = 'ICMS_DIferido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 12
    end
    object pProcessosppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMS'
      FieldName = 'Aliquota_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object pProcessosppField15: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object pProcessosppField16: TppField
      FieldAlias = 'Recinto_Alfandegario'
      FieldName = 'Recinto_Alfandegario'
      FieldLength = 70
      DisplayWidth = 70
      Position = 15
    end
    object pProcessosppField17: TppField
      FieldAlias = 'UF_Desembaraco'
      FieldName = 'UF_Desembaraco'
      FieldLength = 2
      DisplayWidth = 2
      Position = 16
    end
    object pProcessosppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object pProcessosppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volumes'
      FieldName = 'Volumes'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object pProcessosppField20: TppField
      FieldAlias = 'Especie'
      FieldName = 'Especie'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object pProcessosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Liberada'
      FieldName = 'Quantidade_Liberada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object pProcessosppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Digitada'
      FieldName = 'Quantidade_Digitada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object pProcessosppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Bruto'
      FieldName = 'Peso_Bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object pProcessosppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Liquido'
      FieldName = 'Peso_Liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object pProcessosppField25: TppField
      FieldAlias = 'Numero_Fatura'
      FieldName = 'Numero_Fatura'
      FieldLength = 40
      DisplayWidth = 40
      Position = 24
    end
    object pProcessosppField26: TppField
      FieldAlias = 'FOB_ME'
      FieldName = 'FOB_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object pProcessosppField27: TppField
      FieldAlias = 'Frete_ME'
      FieldName = 'Frete_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 26
    end
    object pProcessosppField28: TppField
      FieldAlias = 'Seguro_ME'
      FieldName = 'Seguro_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object pProcessosppField29: TppField
      FieldAlias = 'Condicao_Pgto'
      FieldName = 'Condicao_Pgto'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pProcessosppField30: TppField
      FieldAlias = 'Nome_Transporte'
      FieldName = 'Nome_Transporte'
      FieldLength = 30
      DisplayWidth = 30
      Position = 29
    end
    object pProcessosppField31: TppField
      FieldAlias = 'Origem'
      FieldName = 'Origem'
      FieldLength = 30
      DisplayWidth = 30
      Position = 30
    end
    object pProcessosppField32: TppField
      FieldAlias = 'Local_Embarque'
      FieldName = 'Local_Embarque'
      FieldLength = 30
      DisplayWidth = 30
      Position = 31
    end
    object pProcessosppField33: TppField
      FieldAlias = 'Local_Desembarque'
      FieldName = 'Local_Desembarque'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object pProcessosppField34: TppField
      FieldAlias = 'Agencia_Maritima'
      FieldName = 'Agencia_Maritima'
      FieldLength = 40
      DisplayWidth = 40
      Position = 33
    end
    object pProcessosppField35: TppField
      FieldAlias = 'Navio_DataPrevista'
      FieldName = 'Navio_DataPrevista'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 34
    end
    object pProcessosppField36: TppField
      FieldAlias = 'Navio_DataChegada'
      FieldName = 'Navio_DataChegada'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 35
    end
    object pProcessosppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object pProcessosppField38: TppField
      FieldAlias = 'Processo_Abertura'
      FieldName = 'Processo_Abertura'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 37
    end
    object pProcessosppField39: TppField
      FieldAlias = 'Processo_Fechamento'
      FieldName = 'Processo_Fechamento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 38
    end
    object pProcessosppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Mercadoria'
      FieldName = 'Tipo_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object pProcessosppField41: TppField
      FieldAlias = 'Data_Fatura'
      FieldName = 'Data_Fatura'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 40
    end
    object pProcessosppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_FOB'
      FieldName = 'Taxa_FOB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object pProcessosppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_Frete'
      FieldName = 'Taxa_Frete'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object pProcessosppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_Seguro'
      FieldName = 'Taxa_Seguro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object pProcessosppField45: TppField
      FieldAlias = 'Bloqueado'
      FieldName = 'Bloqueado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 44
    end
    object pProcessosppField46: TppField
      FieldAlias = 'Data_DOC'
      FieldName = 'Data_DOC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 45
    end
    object pProcessosppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fornecedor'
      FieldName = 'Fornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 46
    end
    object pProcessosppField48: TppField
      FieldAlias = 'RE_DataAverbacao'
      FieldName = 'RE_DataAverbacao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 47
    end
    object pProcessosppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'Despachante'
      FieldName = 'Despachante'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
    object pProcessosppField50: TppField
      FieldAlias = 'Canal_SISCOMEX'
      FieldName = 'Canal_SISCOMEX'
      FieldLength = 2
      DisplayWidth = 2
      Position = 49
    end
    object pProcessosppField51: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 50
    end
    object pProcessosppField52: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 51
    end
    object pProcessosppField53: TppField
      FieldAlias = 'Conta_Impostos'
      FieldName = 'Conta_Impostos'
      FieldLength = 11
      DisplayWidth = 11
      Position = 52
    end
    object pProcessosppField54: TppField
      FieldAlias = 'Conta_Despesas'
      FieldName = 'Conta_Despesas'
      FieldLength = 11
      DisplayWidth = 11
      Position = 53
    end
    object pProcessosppField55: TppField
      FieldAlias = 'Conta_Adiantamento'
      FieldName = 'Conta_Adiantamento'
      FieldLength = 11
      DisplayWidth = 11
      Position = 54
    end
    object pProcessosppField56: TppField
      FieldAlias = 'Valor_IPI'
      FieldName = 'Valor_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 55
    end
    object pProcessosppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'Vencimento_Cambio'
      FieldName = 'Vencimento_Cambio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object pProcessosppField58: TppField
      FieldAlias = 'Courrier'
      FieldName = 'Courrier'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 57
    end
    object pProcessosppField59: TppField
      FieldAlias = 'Documento_Carga'
      FieldName = 'Documento_Carga'
      FieldLength = 30
      DisplayWidth = 30
      Position = 58
    end
    object pProcessosppField60: TppField
      FieldAlias = 'Ad_Valorem'
      FieldName = 'Ad_Valorem'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 59
    end
    object pProcessosppField61: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 15
      DisplayWidth = 15
      Position = 60
    end
    object pProcessosppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Declaracao'
      FieldName = 'Tipo_Declaracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pProcessosppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Natureza_Exportacao'
      FieldName = 'Natureza_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object pProcessosppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Conhecimento'
      FieldName = 'Tipo_Conhecimento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object pProcessosppField65: TppField
      FieldAlias = 'Pais'
      FieldName = 'Pais'
      FieldLength = 4
      DisplayWidth = 4
      Position = 64
    end
    object pProcessosppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'Modalidade_Importacao'
      FieldName = 'Modalidade_Importacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 65
    end
    object pProcessosppField67: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 15
      DisplayWidth = 15
      Position = 66
    end
    object pProcessosppField68: TppField
      FieldAlias = 'Container_Numero'
      FieldName = 'Container_Numero'
      FieldLength = 15
      DisplayWidth = 15
      Position = 67
    end
    object pProcessosppField69: TppField
      FieldAlias = 'CNPJ_Importado'
      FieldName = 'CNPJ_Importado'
      FieldLength = 14
      DisplayWidth = 14
      Position = 68
    end
    object pProcessosppField70: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 60
      DisplayWidth = 48
      Position = 69
    end
    object pProcessosppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'Margem_Lucro'
      FieldName = 'Margem_Lucro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 70
    end
    object pProcessosppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_Operacional'
      FieldName = 'Desconto_Operacional'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 71
    end
    object pProcessosppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_Adicional'
      FieldName = 'Desconto_Adicional'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 72
    end
    object pProcessosppField74: TppField
      FieldAlias = 'Data_Encerramento'
      FieldName = 'Data_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 73
    end
    object pProcessosppField75: TppField
      FieldAlias = 'Data_BL'
      FieldName = 'Data_BL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pProcessosppField76: TppField
      FieldAlias = 'Valor_FaturaME'
      FieldName = 'Valor_FaturaME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 75
    end
    object pProcessosppField77: TppField
      FieldAlias = 'Data_PrevFaturamento'
      FieldName = 'Data_PrevFaturamento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 76
    end
    object pProcessosppField78: TppField
      FieldAlias = 'Data_PrevRegistro'
      FieldName = 'Data_PrevRegistro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 77
    end
    object pProcessosppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'Local_DesembaracoCodigo'
      FieldName = 'Local_DesembaracoCodigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 78
    end
    object pProcessosppField80: TppField
      FieldAlias = 'Desativado'
      FieldName = 'Desativado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 79
    end
    object pProcessosppField81: TppField
      FieldAlias = 'Numero_DOC'
      FieldName = 'Numero_DOC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pProcessosppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_FaturamentoValor'
      FieldName = 'Fator_FaturamentoValor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 81
    end
    object pProcessosppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_SISCOMEXValor'
      FieldName = 'Fator_SISCOMEXValor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 82
    end
    object pProcessosppField84: TppField
      FieldAlias = 'Margem_LucroValor'
      FieldName = 'Margem_LucroValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 83
    end
    object pProcessosppField85: TppField
      FieldAlias = 'Desconto_AdicionalValor'
      FieldName = 'Desconto_AdicionalValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 84
    end
    object pProcessosppField86: TppField
      FieldAlias = 'Desconto_OperacionalValor'
      FieldName = 'Desconto_OperacionalValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 85
    end
    object pProcessosppField87: TppField
      FieldAlias = 'Valor_Dumping'
      FieldName = 'Valor_Dumping'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 86
    end
    object pProcessosppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicao_Cambio'
      FieldName = 'Condicao_Cambio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 87
    end
    object pProcessosppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_FOB'
      FieldName = 'Moeda_FOB'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object pProcessosppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Frete'
      FieldName = 'Moeda_Frete'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 89
    end
    object pProcessosppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Seguro'
      FieldName = 'Moeda_Seguro'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 90
    end
    object pProcessosppField92: TppField
      FieldAlias = 'Codigo_PaisOrigem'
      FieldName = 'Codigo_PaisOrigem'
      FieldLength = 4
      DisplayWidth = 4
      Position = 91
    end
    object pProcessosppField93: TppField
      FieldAlias = 'Taxa_SISCOMEX'
      FieldName = 'Taxa_SISCOMEX'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 92
    end
    object pProcessosppField94: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_ICMS'
      FieldName = 'Reducao_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 93
    end
    object pProcessosppField95: TppField
      FieldAlias = 'Observacao'
      FieldName = 'Observacao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 94
      Searchable = False
      Sortable = False
    end
    object pProcessosppField96: TppField
      FieldAlias = 'FOB_MEAdicoes'
      FieldName = 'FOB_MEAdicoes'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 95
    end
    object pProcessosppField97: TppField
      FieldAlias = 'FOB_Adicoes'
      FieldName = 'FOB_Adicoes'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 96
    end
    object pProcessosppField98: TppField
      FieldAlias = 'DA'
      FieldName = 'DA'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 97
    end
    object pProcessosppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_BC'
      FieldName = 'Reducao_BC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 98
    end
    object pProcessosppField100: TppField
      FieldAlias = 'Valor_PIS2'
      FieldName = 'Valor_PIS2'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 99
    end
    object pProcessosppField101: TppField
      FieldAlias = 'Valor_COFINS2'
      FieldName = 'Valor_COFINS2'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 100
    end
    object pProcessosppField102: TppField
      FieldAlias = 'Exportador_Nome'
      FieldName = 'Exportador_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 101
    end
    object pProcessosppField103: TppField
      FieldAlias = 'Modalidade_Nome'
      FieldName = 'Modalidade_Nome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 102
    end
    object pProcessosppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 103
    end
    object pProcessosppField105: TppField
      FieldAlias = 'CT_Numero'
      FieldName = 'CT_Numero'
      FieldLength = 20
      DisplayWidth = 20
      Position = 104
    end
    object pProcessosppField106: TppField
      FieldAlias = 'CT_Data'
      FieldName = 'CT_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 105
    end
    object pProcessosppField107: TppField
      FieldAlias = 'CT_Modelo'
      FieldName = 'CT_Modelo'
      FieldLength = 3
      DisplayWidth = 3
      Position = 106
    end
    object pProcessosppField108: TppField
      FieldAlias = 'CT_Serie'
      FieldName = 'CT_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 107
    end
    object pProcessosppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'Origem_Mercadoria'
      FieldName = 'Origem_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object pProcessosppField110: TppField
      Alignment = taRightJustify
      FieldAlias = 'Banco'
      FieldName = 'Banco'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 109
    end
    object pProcessosppField111: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_PIS'
      FieldName = 'Reducao_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 110
    end
    object pProcessosppField112: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_COFINS'
      FieldName = 'Reducao_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 111
    end
    object pProcessosppField113: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_NFEntrada'
      FieldName = 'PIS_NFEntrada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 112
    end
    object pProcessosppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_NFESaida'
      FieldName = 'PIS_NFESaida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 113
    end
    object pProcessosppField115: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_NFEntrada'
      FieldName = 'COFINS_NFEntrada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 114
    end
    object pProcessosppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_NFESaida'
      FieldName = 'COFINS_NFESaida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 115
    end
    object pProcessosppField117: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_Majorada'
      FieldName = 'PIS_Majorada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 116
    end
    object pProcessosppField118: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_Majorada'
      FieldName = 'COFINS_Majorada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 117
    end
    object pProcessosppField119: TppField
      FieldAlias = 'Suspensao_Impostos'
      FieldName = 'Suspensao_Impostos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object pProcessosppField120: TppField
      FieldAlias = 'Remover_Valoracao'
      FieldName = 'Remover_Valoracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 119
    end
    object pProcessosppField121: TppField
      FieldAlias = 'Referencia_Cliente'
      FieldName = 'Referencia_Cliente'
      FieldLength = 15
      DisplayWidth = 15
      Position = 120
    end
    object pProcessosppField122: TppField
      FieldAlias = 'Admissao_Temporaria'
      FieldName = 'Admissao_Temporaria'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 121
    end
    object pProcessosppField123: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicao_Pagamento'
      FieldName = 'Condicao_Pagamento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 122
    end
    object pProcessosppField124: TppField
      FieldAlias = 'Data_PrevFrete'
      FieldName = 'Data_PrevFrete'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 123
    end
    object pProcessosppField125: TppField
      FieldAlias = 'Fator_FreteValor'
      FieldName = 'Fator_FreteValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 124
    end
    object pProcessosppField126: TppField
      Alignment = taRightJustify
      FieldAlias = 'Previsao_FreteTransportador'
      FieldName = 'Previsao_FreteTransportador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 125
    end
    object pProcessosppField127: TppField
      FieldAlias = 'Fator_SISCOMEXValorReal'
      FieldName = 'Fator_SISCOMEXValorReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 126
    end
    object pProcessosppField128: TppField
      FieldAlias = 'Fator_FreteValorReal'
      FieldName = 'Fator_FreteValorReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 127
    end
    object pProcessosppField129: TppField
      FieldAlias = 'Fator_FaturamentoValorReal'
      FieldName = 'Fator_FaturamentoValorReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 128
    end
    object pProcessosppField130: TppField
      FieldAlias = 'Data_PrevArmazem'
      FieldName = 'Data_PrevArmazem'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 129
    end
    object pProcessosppField131: TppField
      FieldAlias = 'Fator_ArmazemValor'
      FieldName = 'Fator_ArmazemValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 130
    end
    object pProcessosppField132: TppField
      FieldAlias = 'Fator_ArmazemValorReal'
      FieldName = 'Fator_ArmazemValorReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 131
    end
    object pProcessosppField133: TppField
      Alignment = taRightJustify
      FieldAlias = 'Previsao_ArmazemFornecedor'
      FieldName = 'Previsao_ArmazemFornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 132
    end
    object pProcessosppField134: TppField
      FieldAlias = 'Referencia_DataEntrega'
      FieldName = 'Referencia_DataEntrega'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 133
    end
    object pProcessosppField135: TppField
      FieldAlias = 'CST_PIS'
      FieldName = 'CST_PIS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 134
    end
    object pProcessosppField136: TppField
      FieldAlias = 'CST_COFINS'
      FieldName = 'CST_COFINS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 135
    end
    object pProcessosppField137: TppField
      FieldAlias = 'Codigo_BCCredito'
      FieldName = 'Codigo_BCCredito'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pProcessosppField138: TppField
      FieldAlias = 'Apuracao_PISCOFINS'
      FieldName = 'Apuracao_PISCOFINS'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 137
    end
    object pProcessosppField139: TppField
      FieldAlias = 'Consignatario_CNPJ'
      FieldName = 'Consignatario_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 138
    end
    object pProcessosppField140: TppField
      FieldAlias = 'Consignatario_UF'
      FieldName = 'Consignatario_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 139
    end
    object pProcessosppField141: TppField
      FieldAlias = 'Local_Desembaraco'
      FieldName = 'Local_Desembaraco'
      FieldLength = 50
      DisplayWidth = 50
      Position = 140
    end
    object pProcessosppField142: TppField
      FieldAlias = 'AFRMM'
      FieldName = 'AFRMM'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 141
    end
    object pProcessosppField143: TppField
      FieldAlias = 'Preco_Venda'
      FieldName = 'Preco_Venda'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pProcessosppField144: TppField
      FieldAlias = 'Proforma_Numero'
      FieldName = 'Proforma_Numero'
      FieldLength = 15
      DisplayWidth = 15
      Position = 143
    end
    object pProcessosppField145: TppField
      FieldAlias = 'Proforma_Data'
      FieldName = 'Proforma_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 144
    end
    object pProcessosppField146: TppField
      FieldAlias = 'Condicao_Frete'
      FieldName = 'Condicao_Frete'
      FieldLength = 60
      DisplayWidth = 60
      Position = 145
    end
    object pProcessosppField147: TppField
      FieldAlias = 'Seguradora'
      FieldName = 'Seguradora'
      FieldLength = 60
      DisplayWidth = 60
      Position = 146
    end
    object pProcessosppField148: TppField
      FieldAlias = 'Proforma_DataTaxa'
      FieldName = 'Proforma_DataTaxa'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 147
    end
    object pProcessosppField149: TppField
      FieldAlias = 'Data_TaxaFatura'
      FieldName = 'Data_TaxaFatura'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pProcessosppField150: TppField
      FieldAlias = 'RE_Numero'
      FieldName = 'RE_Numero'
      FieldLength = 180
      DisplayWidth = 180
      Position = 149
    end
    object pProcessosppField151: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 150
    end
    object pProcessosppField152: TppField
      FieldAlias = 'ROF_Numero'
      FieldName = 'ROF_Numero'
      FieldLength = 8
      DisplayWidth = 8
      Position = 151
    end
    object pProcessosppField153: TppField
      FieldAlias = 'ROF_Emissao'
      FieldName = 'ROF_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 152
    end
    object pProcessosppField154: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROF_Dias'
      FieldName = 'ROF_Dias'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 153
    end
    object pProcessosppField155: TppField
      Alignment = taRightJustify
      FieldAlias = 'Notificar'
      FieldName = 'Notificar'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 154
    end
    object pProcessosppField156: TppField
      FieldAlias = 'URF_Despacho'
      FieldName = 'URF_Despacho'
      FieldLength = 7
      DisplayWidth = 7
      Position = 155
    end
    object pProcessosppField157: TppField
      FieldAlias = 'Referencia_Despachante'
      FieldName = 'Referencia_Despachante'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pProcessosppField158: TppField
      Alignment = taRightJustify
      FieldAlias = 'Via_Transporte'
      FieldName = 'Via_Transporte'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 157
    end
    object pProcessosppField159: TppField
      FieldAlias = 'Rateia_FretePeso'
      FieldName = 'Rateia_FretePeso'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 158
    end
  end
  object pItens: TppDBPipeline
    DataSource = dstItens
    CloseDataSource = True
    UserName = 'pItens'
    Left = 198
    Top = 170
    MasterDataPipelineName = 'pOrdem'
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo_Mercadoria'
      
        '      ,Descricao        = (SELECT LEFT(Descricao, CASE WHEN CHAR' +
        'INDEX('#39'<{'#39',Descricao) > 0 THEN CHARINDEX('#39'<{'#39',Descricao)-1 ELSE ' +
        'LEN(Descricao) END) FROM Produtos WHERE Codigo = Codigo_Mercador' +
        'ia)'
      
        '      ,Unidade_Orig     = (SELECT Unidade_Origem        FROM Pro' +
        'dutos WHERE Codigo = Codigo_Mercadoria)'
      
        '      ,Unidade_OrigDesc = (SELECT MAX(Descricao_Ingles) FROM Cyb' +
        'ersoft_Cadastros.dbo.UnidadeMedida WHERE Codigo = (SELECT Unidad' +
        'e_Origem FROM Produtos WHERE Codigo = Codigo_Mercadoria))'
      
        '      ,Unidade          = (SELECT Unidade               FROM Pro' +
        'dutos WHERE Codigo = Codigo_Mercadoria)'
      
        '      ,Unidade_Desc     = (SELECT MAX(Descricao)        FROM Cyb' +
        'ersoft_Cadastros.dbo.UnidadeMedida WHERE Codigo = (SELECT Unidad' +
        'e FROM Produtos WHERE Codigo = Codigo_Mercadoria))'
      '      ,Quantidade'
      '      ,Quantidade_Volumes'
      
        '      ,Peso_Liquido     = (SELECT Peso_Liquido FROM Produtos WHE' +
        'RE Codigo = Codigo_Mercadoria)'
      
        '      ,Peso_Total       = (SELECT Peso_Liquido FROM Produtos WHE' +
        'RE Codigo = Codigo_Mercadoria) * Quantidade_Volumes'
      '      ,Valor'
      '      ,Total = Valor * Quantidade'
      '      ,NCM '
      'FROM POItens '
      '--WHERE PO = '#39'MO-0277'#39)
    FetchRows = 1
    DetailFields = 'Numero'
    Left = 64
    Top = 170
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 64
    Top = 218
  end
  object rOrdem: TppReport
    AutoStop = False
    DataPipeline = pItens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Purchase Order'
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
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\PurchaseOrder.rt' +
      'm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
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
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
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
    Left = 416
    Top = 170
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pItens'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 81756
      mmPrintPosition = 0
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape13'
        Brush.Color = clGradientActiveCaption
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 0
        mmTop = 71702
        mmWidth = 197446
        BandType = 0
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        Brush.Style = bsClear
        Pen.Width = 0
        mmHeight = 14023
        mmLeft = 144198
        mmTop = 56092
        mmWidth = 53181
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Brush.Style = bsClear
        Pen.Width = 0
        mmHeight = 14023
        mmLeft = 0
        mmTop = 56092
        mmWidth = 49742
        BandType = 0
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 15875
        mmTop = 71702
        mmWidth = 62442
        BandType = 0
        LayerName = Foreground
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape102'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 106098
        mmTop = 71702
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Color = clBlue
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Style = psClear
        Pen.Width = 0
        mmHeight = 6085
        mmLeft = 265
        mmTop = 56356
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        Brush.Style = bsClear
        Pen.Width = 0
        mmHeight = 14023
        mmLeft = 98954
        mmTop = 56092
        mmWidth = 45508
        BandType = 0
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Brush.Style = bsClear
        Pen.Width = 0
        mmHeight = 14023
        mmLeft = 49602
        mmTop = 56092
        mmWidth = 49602
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PURCHASE ORDER'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4233
        mmLeft = 147373
        mmTop = 265
        mmWidth = 50006
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
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
        mmLeft = 28310
        mmTop = 0
        mmWidth = 116152
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3471
        mmLeft = 28310
        mmTop = 13229
        mmWidth = 116152
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3471
        mmLeft = 28310
        mmTop = 17198
        mmWidth = 116152
        BandType = 0
        LayerName = Foreground
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'iLogo'
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
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 151607
        mmTop = 6350
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PO#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 151607
        mmTop = 14023
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 6350
        mmLeft = 161661
        mmTop = 5027
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Numero'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 6085
        mmLeft = 161661
        mmTop = 12700
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = clBlue
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Style = psClear
        Pen.Width = 0
        mmHeight = 6615
        mmLeft = 0
        mmTop = 28047
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'VENDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 1588
        mmTop = 29103
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = clBlue
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Style = psClear
        Pen.Width = 0
        mmHeight = 6615
        mmLeft = 66940
        mmTop = 28047
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'IMPORTER/CONSIGNEE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3852
        mmLeft = 68527
        mmTop = 29103
        mmWidth = 30946
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Vendor'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 0
        mmTop = 34661
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Endereco'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3471
        mmLeft = 28310
        mmTop = 5292
        mmWidth = 116152
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Endereco2'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3471
        mmLeft = 28310
        mmTop = 9260
        mmWidth = 116152
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Telefones'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 66940
        mmTop = 45773
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText102'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Endereco'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 66940
        mmTop = 38365
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Endereco2'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 66940
        mmTop = 42069
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Empresa'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 66940
        mmTop = 34661
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 66940
        mmTop = 49213
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Vendor_Tel'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 0
        mmTop = 45773
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Vendor_End'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 0
        mmTop = 38365
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Vendor_Cid'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 0
        mmTop = 42069
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REQUISITIONER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 1058
        mmTop = 57150
        mmWidth = 47361
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SHIP VIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 50800
        mmTop = 57150
        mmWidth = 47361
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Responsavel'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3852
        mmLeft = 1058
        mmTop = 64294
        mmWidth = 47361
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Via_Transporte'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3852
        mmLeft = 50800
        mmTop = 64294
        mmWidth = 47361
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Incoterms'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3852
        mmLeft = 100277
        mmTop = 64294
        mmWidth = 42863
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'INCOTERMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 100277
        mmTop = 57150
        mmWidth = 42863
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Condicao_Pgto'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3852
        mmLeft = 145521
        mmTop = 64294
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SHIPPING TERMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 145521
        mmTop = 57150
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 0
        mmTop = 71702
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ITEM #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 795
        mmTop = 75142
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRIPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3853
        mmLeft = 16669
        mmTop = 75141
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'QTY PKGS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7704
        mmLeft = 106627
        mmTop = 73025
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape11'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 156634
        mmTop = 71702
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UNIT PRICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 157427
        mmTop = 75142
        mmWidth = 16403
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 175156
        mmTop = 75142
        mmWidth = 21430
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 22225
        mmLeft = 145924
        mmTop = 0
        mmWidth = 794
        BandType = 0
        LayerName = Foreground
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape17'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 91281
        mmTop = 71702
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        CharWrap = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PACKAGE TYPE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7704
        mmLeft = 91811
        mmTop = 73025
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape101'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 132557
        mmTop = 71702
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 133350
        mmTop = 75142
        mmWidth = 5291
        BandType = 0
        LayerName = Foreground
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape18'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 117740
        mmTop = 71702
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NET QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 118534
        mmTop = 75142
        mmWidth = 13495
        BandType = 0
        LayerName = Foreground
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape19'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 139171
        mmTop = 71702
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 139965
        mmTop = 75142
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        Brush.Color = clBlue
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Style = psClear
        Pen.Width = 0
        mmHeight = 6615
        mmLeft = 133615
        mmTop = 28047
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = 'SHIP TO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 135202
        mmTop = 29103
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText36'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente_Tel'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 133615
        mmTop = 45773
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText37'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente_End'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 133615
        mmTop = 38365
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText38'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente_Cid'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 133615
        mmTop = 42069
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 133615
        mmTop = 34661
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText40'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente_Email'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 133615
        mmTop = 49213
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24077
        mmLeft = 64823
        mmTop = 28047
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24077
        mmLeft = 131763
        mmTop = 28047
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText41'
        HyperlinkEnabled = False
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Vendor_Email'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3006
        mmLeft = 0
        mmTop = 49213
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape20'
        Brush.Style = bsClear
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Width = 0
        mmHeight = 10054
        mmLeft = 78052
        mmTop = 71702
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        CharWrap = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3853
        mmLeft = 78846
        mmTop = 75141
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 10848
        mmLeft = 145567
        mmTop = 9790
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 12171
        mmLeft = 145143
        mmTop = 1588
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = True
        DataField = 'Descricao'
        DataPipeline = pItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2910
        mmLeft = 16933
        mmTop = 1323
        mmWidth = 60061
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Codigo_Mercadoria'
        DataPipeline = pItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 795
        mmTop = 1323
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'Quantidade'
        DataPipeline = pItens
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 106892
        mmTop = 1323
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'Valor'
        DataPipeline = pItens
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 157427
        mmTop = 1323
        mmWidth = 16403
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText201'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'Total'
        DataPipeline = pItens
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 175156
        mmTop = 1323
        mmWidth = 21430
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 15875
        mmTop = 0
        mmWidth = 6614
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 117740
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 0
        mmTop = 0
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Anchors = [atLeft]
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 132557
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Anchors = [atLeft]
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 174361
        mmTop = 0
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Anchors = [atLeft]
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 197115
        mmTop = 0
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText32'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'Unidade'
        DataPipeline = pItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 133350
        mmTop = 1323
        mmWidth = 5291
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 78052
        mmTop = 0
        mmWidth = 3440
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText33'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'Unidade_OrigDesc'
        DataPipeline = pItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 92075
        mmTop = 1323
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 106098
        mmTop = 0
        mmWidth = 3440
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText34'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'Peso_Liquido'
        DataPipeline = pItens
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 118534
        mmTop = 1323
        mmWidth = 13495
        BandType = 4
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Anchors = [atLeft]
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 139171
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Anchors = [atLeft]
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 156634
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText202'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'Peso_Total'
        DataPipeline = pItens
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 139965
        mmTop = 1323
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 15875
        mmLeft = 91281
        mmTop = 0
        mmWidth = 3440
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText42'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'NCM'
        DataPipeline = pItens
        DisplayFormat = '####.##.##;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3006
        mmLeft = 79111
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
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
        mmLeft = 2450
        mmTop = 265
        mmWidth = 43519
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 152400
        mmTop = 0
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 0
        mmWidth = 5821
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        AutoSize = False
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
        mmHeight = 2879
        mmLeft = 179917
        mmTop = 0
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 178859
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 265
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        AutoSize = False
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
        mmLeft = 49477
        mmTop = 0
        mmWidth = 103452
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 71702
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SUBTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 139700
        mmTop = 3440
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'SubTotal'
        DataPipeline = pOrdem
        DisplayFormat = ',##0.00 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 3175
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 139700
        mmTop = 8202
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Tax'
        DataPipeline = pOrdem
        DisplayFormat = ',##0.00 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 7938
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SHIPPING'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 139700
        mmTop = 12965
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Shipping'
        DataPipeline = pOrdem
        DisplayFormat = ',##0.00 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 12700
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OTHER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 139700
        mmTop = 17727
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Other'
        DataPipeline = pOrdem
        DisplayFormat = ',##0.00 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 17463
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3142
        mmLeft = 139700
        mmTop = 22324
        mmWidth = 57083
        BandType = 7
        LayerName = Foreground
      end
      object lTotal: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTotal'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 139700
        mmTop = 24077
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText29'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Total'
        DataPipeline = pOrdem
        DisplayFormat = ',##0.00 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 23813
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape14'
        Brush.Style = bsClear
        Pen.Width = 0
        mmHeight = 28840
        mmLeft = 0
        mmTop = 3175
        mmWidth = 108215
        BandType = 7
        LayerName = Foreground
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape15'
        Brush.Color = clBlue
        Gradient.EndColor = clGradientActiveCaption
        Gradient.StartColor = clHotLight
        Gradient.Style = gsVertical
        Pen.Style = psClear
        Pen.Width = 0
        mmHeight = 6085
        mmLeft = 265
        mmTop = 3440
        mmWidth = 107686
        BandType = 7
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'Observacao'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 20902
        mmLeft = 1058
        mmTop = 10319
        mmWidth = 106098
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COMMENTS OR SPECIAL INSTRUCTIONS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 794
        mmTop = 4498
        mmWidth = 106627
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          'If you have any questions about this purchase order, please cont' +
          'act'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 40481
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText30'
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Responsavel'
        DataPipeline = pOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pOrdem'
        mmHeight = 3471
        mmLeft = 0
        mmTop = 44450
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText31'
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Email'
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
        mmHeight = 3471
        mmLeft = 0
        mmTop = 48651
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground
      end
      object iAssinatura: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'iLogo1'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        AutoSize = True
        MaintainAspectRatio = False
        Border.mmPadding = 0
        mmHeight = 16933
        mmLeft = 156634
        mmTop = 54769
        mmWidth = 38894
        BandType = 7
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
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
    object ppParameterList1: TppParameterList
    end
  end
  object mPlan: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 136
    Top = 280
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 64
    Top = 280
  end
end
