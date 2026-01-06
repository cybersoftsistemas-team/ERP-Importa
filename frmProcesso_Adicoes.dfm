object Processo_Adicoes: TProcesso_Adicoes
  Left = 638
  Top = 240
  BorderStyle = bsDialog
  Caption = 'Processo_Adicoes'
  ClientHeight = 642
  ClientWidth = 628
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 610
    Width = 628
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bImp: TSpeedButton
      Left = 414
      Top = 1
      Width = 133
      Height = 29
      Caption = 'Importar C'#243'd.Ordem'
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000120B0000120B00000000000000000000ECD9BAE6D6B5
        DDCAACD8C4A8D7C2A8D5BFA8D1BAA6CAB9A7C9BDAECDC8BAD1CFC4D1D4CAD7DE
        D6DFECE6E4F6F2E3F7F2E3F7F2D7E3DA00005FC0767BC58A72AE7E87B490A2C5
        AABFD6C4D7E3DADAE8E0DCEBE4DDF0E9DAF0E8DEF3EBD2EBE0C2E1CFB6DAC3A4
        CCAFC7E3D3E1ECE6000072CC90DBEFE7E5F7F3DEF5EED5EFE6CAEADCD1EDE1C7
        E6D7A3D2B691C5A387BE98B6DAC494C4A24E975A408D49418A47A0CAAAE7F3EF
        00006AC889ABD6C0C8E9DB97D1B37EC29D6FB98F9BCFB2A9D5BC5DAA764E9F65
        4D9C619CCAAA99C6A44B9556468F4F448D4A9AC5A3EAF8F4000065C58586C2A1
        C2E5D680C5A15DB18358AC7B87C4A0B4DAC46AB18264AB7A67AC7AA9D2B6BDDC
        C78ABD9696C2A0ABCEB3D3E9DCECF9F5000066C58574B690B4DCC7A6D8BF8BC8
        A996CEAFB7DCC9DBF0E8C5E4D3C1E1CEC5E1D0DFF0E7D9EEE3B6D7C0A2CAAB95
        C09DB5D5BCE9F7F1000068C68767AC84A1D0B7E8F8F2DAF0E7D6EEE2D2EADECA
        E6D6A0C4AE6E9876689270D4E4DBC1DFCB62A36C4E9457448C4B7EB084E4F2EB
        00006CC8896DAC8590C4A7E5F6F0A2D3BA82C29D78BC92539E6D0A5E25003E01
        3B7844C5E0CECFE6D769A874579A605B9C6290BC95E8F3ED00006EC98B7CB390
        8BBEA0EBF7F4C0E1D178BD9557A977247B4500531B498056BCD7C3DCEEE3E8F5
        EFC5DFCCC0DBC6C9E0CFD8E8DDF1F9F600006FC98C8AB89983B596E7F3EEF8FE
        FDDAEEE55AA37A07652D0C5F2877AF87DAECE1F7FDFCF1FAF69EC7A674AC7D5F
        9E6678AC7CDFEEE200006FC98C97BDA380B092DEEDE6FCFFFFBBDCCD2E875913
        6D38428F5B57A26B76B182C7DFCDF3FAF77AB183489151438C495E9B61D3E4D5
        000071CB8DA9C6B289B297D9E8DFE5F3ED5BA984217F4F74AB8DBADAC581B98F
        71AE7F89BA93D7E8DBA4CAAB86B78C8DBA92A6C8A9E8F2EA000075C88EBED3C4
        9ABAA3D3E2D9DBEEE69ACCB6AFD2C0E5F1EBFFFFFFE9F4EDE2F0E7DEEDE1E5F0
        E7E9F2ECE9F0EAEBF6EEF1F8F0FFFCF900008BCD97BCDEC7B1C6B6CADACFEAF1
        EDEBF1EDE8EEE9E1EAE4D7E4DBD6E2D9CEDDD3CDDBD0C6D5C9C1D1C6C9D4CBB9
        E1C5BADCB4FFEDE20000C5DAB698D5A8D6E4DAC3D2C7BFD0C3C0D1C4BFD0C4BE
        D0C3BDCFC2BDCFC2BDCEC1BCCDC0BCCCBFBBCABEC9D1CAADDBBBABD5A6FFEBDF
        0000F4E8D5A9D4A7A5DAB4DEE9E2DFE4DFD5DFD7D3DED5D3DDD5D3DDD5D3DDD5
        D2DCD4D2DCD4D2DBD3D1DAD3DEE0DDB4DFC2ACD5A7FFECE10000FFECDEF1E7D3
        ADD5AA97D5A6BCE0C6D5EBDCD5EADBD5EADBD5EADBD5EADBD4E9DBD4E9DBD4E9
        DBD4E9DBDCEDE1A4DDB6A9D4A6FFEDE20000FCEEE1FFF0E4FBEDE0CDE1C3A5D5
        AB9CD7A99CD9AA9CD9AA9CD9AA9CD9AA9CD9AA9CD9AA9CD9AA9CD9AA9CD9AA90
        D39FCBE1C1FFF0E60000}
      OnClick = bImpClick
    end
    object bSair: TButton
      Left = 555
      Top = 1
      Width = 72
      Height = 29
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 279
      Height = 29
      Cursor = crHandPoint
      DataSource = Dados.dsAdicoes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o reistro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      Left = 280
      Top = 1
      Width = 66
      Height = 29
      Caption = '&Pesquisar'
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bConv: TButton
      Left = 346
      Top = 1
      Width = 68
      Height = 29
      Cursor = crHandPoint
      Hint = '  Converter valor de uma mo'#233'da para outra    '
      Caption = '&Conversor'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bConvClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 622
    Height = 359
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object lProduto: TStaticText
      Left = 5
      Top = 51
      Width = 98
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 17
      Transparent = False
      StyleElements = []
      OnClick = lProdutoClick
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 97
      Width = 98
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 18
      Transparent = False
      StyleElements = []
    end
    object StaticText11: TStaticText
      Left = 5
      Top = 5
      Width = 98
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Adi'#231#227'o N'#186
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 19
      Transparent = False
      StyleElements = []
    end
    object cProduto: TDBLookupComboBox
      Left = 105
      Top = 51
      Width = 512
      Height = 21
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao_Reduzida'
      ListFieldIndex = 1
      ListSource = Dados.dsProdutos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 2
      OnClick = cProdutoClick
    end
    object cAdicao: TDBEdit
      Left = 105
      Top = 5
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Adicao'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cQuantidade: TDBEdit
      Left = 105
      Top = 97
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Quantidade'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object cValorUnitarioME: TDBEdit
      Left = 105
      Top = 120
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_Unitario'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnChange = cValorUnitarioMEChange
      OnExit = cValorUnitarioMEExit
    end
    object DBMemo1: TDBMemo
      Left = 105
      Top = 235
      Width = 512
      Height = 116
      TabStop = False
      DataField = 'Descricao'
      DataSource = Dados.dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 16
      WantReturns = False
    end
    object lNCM: TStaticText
      Left = 5
      Top = 74
      Width = 98
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'NCM'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 20
      Transparent = False
      StyleElements = []
      OnClick = lNCMClick
    end
    object DBEdit1: TDBEdit
      Left = 105
      Top = 74
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NCM'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText5: TStaticText
      Left = 220
      Top = 74
      Width = 83
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Unidade Medida'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 21
      Transparent = False
      StyleElements = []
    end
    object DBEdit5: TDBEdit
      Left = 305
      Top = 74
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Unidade'
      DataSource = Dados.dsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText9: TStaticText
      Left = 5
      Top = 120
      Width = 98
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio (ME)'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 22
      Transparent = False
      StyleElements = []
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 235
      Width = 98
      Height = 116
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 23
      Transparent = False
      StyleElements = []
    end
    object lExportador: TStaticText
      Left = 5
      Top = 28
      Width = 98
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Exportador'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 24
      Transparent = False
      StyleElements = []
      OnClick = lExportadorClick
    end
    object cExportador: TDBLookupComboBox
      Left = 105
      Top = 28
      Width = 512
      Height = 21
      DataField = 'Exportador'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Nome'
      ListFieldIndex = 1
      ListSource = Dados.dsFornecedores
      NullValueKey = 46
      ParentFont = False
      TabOrder = 1
      OnClick = cProdutoClick
    end
    object cPesoUnitario: TDBEdit
      Left = 305
      Top = 97
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Peso_Liquido'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText10: TStaticText
      Left = 220
      Top = 97
      Width = 83
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Peso Unit'#225'rio'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 25
      Transparent = False
      StyleElements = []
    end
    object StaticText12: TStaticText
      Left = 5
      Top = 143
      Width = 98
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio (R$)'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 26
      Transparent = False
      StyleElements = []
    end
    object DBEdit6: TDBEdit
      Left = 105
      Top = 143
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_UnitarioReal'
      DataSource = Dados.dsAdicoes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object lEntradas: TStaticText
      Left = 5
      Top = 212
      Width = 98
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Entradas'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 27
      Transparent = False
      StyleElements = []
    end
    object cEntradas: TDBEdit
      Left = 105
      Top = 212
      Width = 113
      Height = 21
      TabStop = False
      DataField = 'Lancado_Entrada'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object lSaidas: TStaticText
      Left = 220
      Top = 212
      Width = 83
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Sa'#237'das'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 28
      Transparent = False
      StyleElements = []
    end
    object cSaidas: TDBEdit
      Left = 305
      Top = 212
      Width = 113
      Height = 21
      TabStop = False
      DataField = 'Lancado_Saida'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object StaticText1: TStaticText
      Left = 220
      Top = 120
      Width = 83
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vlr S/Acrescimo'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 29
      Transparent = False
      StyleElements = []
    end
    object cVlrsemAcrescimo: TDBEdit
      Left = 305
      Top = 120
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_SemAdValorem'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object StaticText2: TStaticText
      Left = 420
      Top = 120
      Width = 72
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'ICMS %'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 30
      Transparent = False
      StyleElements = []
    end
    object DBEdit7: TDBEdit
      Left = 494
      Top = 120
      Width = 59
      Height = 21
      TabStop = False
      DataField = 'Aliquota_ICMS'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object StaticText7: TStaticText
      Left = 420
      Top = 212
      Width = 88
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Terceiros'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 31
      Transparent = False
      StyleElements = []
    end
    object DBEdit8: TDBEdit
      Left = 510
      Top = 212
      Width = 105
      Height = 21
      TabStop = False
      DataField = 'Lancado_Terceiros'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit9: TDBEdit
      Left = 105
      Top = 166
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_PIS'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnExit = cValorUnitarioMEExit
    end
    object StaticText13: TStaticText
      Left = 5
      Top = 166
      Width = 98
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor PIS'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 32
      Transparent = False
      StyleElements = []
    end
    object StaticText14: TStaticText
      Left = 220
      Top = 166
      Width = 83
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor COFINS'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 33
      Transparent = False
      StyleElements = []
    end
    object DBEdit10: TDBEdit
      Left = 305
      Top = 166
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_COFINS'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object StaticText15: TStaticText
      Left = 396
      Top = 5
      Width = 63
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Registro N'#186
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 34
      Transparent = False
      StyleElements = []
    end
    object DBEdit11: TDBEdit
      Left = 461
      Top = 5
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Registro'
      DataSource = Dados.dsAdicoes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 35
    end
    object StaticText63: TStaticText
      Left = 293
      Top = 5
      Width = 40
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Ordem'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 36
      Transparent = False
      StyleElements = []
    end
    object cOrdem: TDBEdit
      Left = 335
      Top = 5
      Width = 58
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Ordem'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 37
    end
    object StaticText16: TStaticText
      Left = 164
      Top = 5
      Width = 41
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pedido'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 38
      Transparent = False
      StyleElements = []
    end
    object cPosicao: TDBEdit
      Left = 207
      Top = 5
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Pedido'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 39
    end
    object DBCheckBox1: TDBCheckBox
      Left = 545
      Top = 6
      Width = 64
      Height = 17
      Caption = 'Dumping'
      DataField = 'Dumping'
      DataSource = Dados.dsAdicoes
      TabOrder = 40
    end
    object DBEdit2: TDBEdit
      Left = 105
      Top = 189
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDE_Aliquota'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 41
      OnExit = cValorUnitarioMEExit
    end
    object StaticText17: TStaticText
      Left = 5
      Top = 189
      Width = 98
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CIDE Al'#237'quota'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 42
      Transparent = False
      StyleElements = []
    end
    object StaticText18: TStaticText
      Left = 220
      Top = 189
      Width = 83
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CIDE Vlr Devido'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 43
      Transparent = False
      StyleElements = []
    end
    object DBEdit3: TDBEdit
      Left = 305
      Top = 189
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDE_ValorDevido'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 44
    end
    object StaticText19: TStaticText
      Left = 420
      Top = 189
      Width = 88
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CIDE Vlr Recolher'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 45
      Transparent = False
      StyleElements = []
    end
    object DBEdit4: TDBEdit
      Left = 510
      Top = 189
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDE_ValorRecolher'
      DataSource = Dados.dsAdicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 46
    end
  end
  object Grade: TDBGrid
    Left = 3
    Top = 365
    Width = 622
    Height = 212
    DataSource = Dados.dsAdicoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Adicao'
        Title.Alignment = taCenter
        Title.Caption = 'Ad'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sequencia_SISCOMEX'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 28
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'Codigo_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Unitario'
        Title.Alignment = taCenter
        Title.Caption = 'Unit'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lancado_Entrada'
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lancado_Saida'
        Title.Alignment = taCenter
        Title.Caption = 'Sa'#237'da'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lancado_Terceiros'
        Title.Alignment = taCenter
        Title.Caption = 'Terceiros'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 86
        Visible = True
      end>
  end
  object StaticText6: TStaticText
    Left = 3
    Top = 580
    Width = 98
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Total dos Itens'
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
  object cTotalQtde: TCurrencyEdit
    Left = 103
    Top = 580
    Width = 103
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '###,##0.0000'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object cTotalValor: TCurrencyEdit
    Left = 208
    Top = 580
    Width = 113
    Height = 21
    AutoSize = False
    DisplayFormat = ',##0.00'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object StaticText8: TStaticText
    Left = 441
    Top = 580
    Width = 67
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Peso Total'
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
  object cTotalPeso: TCurrencyEdit
    Left = 510
    Top = 580
    Width = 115
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '###,##0.0000'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object cTotalValorReal: TCurrencyEdit
    Left = 323
    Top = 580
    Width = 113
    Height = 21
    AutoSize = False
    DisplayFormat = ',##0.00'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object tRegistro: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Adicoes'
      
        '  (Registro, DI, Adicao, Codigo_Mercadoria, Quantidade, Valor_Un' +
        'itario, NCM, Lancado)'
      'VALUES'
      
        '  (:Registro, :DI, :Adicao, :Codigo_Mercadoria, :Quantidade, :Va' +
        'lor_Unitario, :NCM, :Lancado)')
    SQLDelete.Strings = (
      'DELETE FROM Adicoes'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE Adicoes'
      'SET'
      
        '  Registro = :Registro, DI = :DI, Adicao = :Adicao, Codigo_Merca' +
        'doria = :Codigo_Mercadoria, Quantidade = :Quantidade, Valor_Unit' +
        'ario = :Valor_Unitario, NCM = :NCM, Lancado = :Lancado'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Adicoes.Registro, Adicoes.DI, Adicoes.Adicao, Adicoes.Cod' +
        'igo_Mercadoria, Adicoes.Quantidade, Adicoes.Valor_Unitario, Adic' +
        'oes.NCM, Adicoes.Lancado FROM Adicoes'
      'WHERE Adicoes.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) as Registro FROM Adicoes')
    FetchRows = 1
    Left = 209
    Top = 486
  end
  object tCodigoPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM PlanoContas')
    FetchRows = 1
    Left = 272
    Top = 487
    object tCodigoPlanoCodigo: TStringField
      FieldName = 'Codigo'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
  end
  object tContaPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Conta) AS Conta FROM PlanoContas')
    FetchRows = 1
    Left = 304
    Top = 487
    object tContaPlanoConta: TStringField
      FieldName = 'Conta'
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
  end
  object tFornecedor: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Fornecedores')
    FetchRows = 1
    Left = 240
    Top = 486
    object tFornecedorCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object tSequencia: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Adicoes'
      
        '  (Registro, DI, Adicao, Codigo_Mercadoria, Quantidade, Valor_Un' +
        'itario, NCM, Lancado)'
      'VALUES'
      
        '  (:Registro, :DI, :Adicao, :Codigo_Mercadoria, :Quantidade, :Va' +
        'lor_Unitario, :NCM, :Lancado)')
    SQLDelete.Strings = (
      'DELETE FROM Adicoes'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE Adicoes'
      'SET'
      
        '  Registro = :Registro, DI = :DI, Adicao = :Adicao, Codigo_Merca' +
        'doria = :Codigo_Mercadoria, Quantidade = :Quantidade, Valor_Unit' +
        'ario = :Valor_Unitario, NCM = :NCM, Lancado = :Lancado'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Adicoes.Registro, Adicoes.DI, Adicoes.Adicao, Adicoes.Cod' +
        'igo_Mercadoria, Adicoes.Quantidade, Adicoes.Valor_Unitario, Adic' +
        'oes.NCM, Adicoes.Lancado FROM Adicoes'
      'WHERE Adicoes.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Sequencia) AS Sequencia FROM Adicoes')
    FetchRows = 1
    Left = 337
    Top = 486
    object tSequenciaSequencia: TSmallintField
      FieldName = 'Sequencia'
      ReadOnly = True
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel|*.xls'
    Title = 'Importar C'#243'digo de Ordem do Excel'
    Left = 576
    Top = 136
  end
end
