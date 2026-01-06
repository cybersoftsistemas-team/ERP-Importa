object Financeiro_EmprestimosCG: TFinanceiro_EmprestimosCG
  Left = 298
  Top = 14
  BorderStyle = bsDialog
  Caption = 'Financeiro_EmprestimosCG'
  ClientHeight = 675
  ClientWidth = 861
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
    Width = 861
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 90
    Height = 21
    Caption = 'FINANCEIRO'
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
    Width = 256
    Height = 18
    Caption = 'Empr'#233'stimos Banc'#225'rios (Capital de Giro).'
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
    Top = 643
    Width = 861
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      861
      32)
    object bSair: TButton
      Left = 785
      Top = 2
      Width = 75
      Height = 29
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
      Top = 2
      Width = 387
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsEmprestimos
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
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bParcelasCG: TButton
      Left = 388
      Top = 2
      Width = 90
      Height = 28
      Caption = 'Gerar &Parcelas'
      TabOrder = 2
      OnClick = bParcelasClick
    end
    object bFinanceiroCG: TButton
      Left = 478
      Top = 2
      Width = 100
      Height = 28
      Caption = 'Gerar &Financeiro'
      TabOrder = 3
      OnClick = bFinanceiroClick
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 49
    Width = 576
    Height = 453
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText6: TStaticText
      Left = 6
      Top = 97
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Banco'
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
    object cBanco: TRxDBLookupCombo
      Left = 126
      Top = 97
      Width = 443
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Banco'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Conta;Nome'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsBancos
      ParentFont = False
      TabOrder = 6
    end
    object StaticText2: TStaticText
      Left = 6
      Top = 350
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade Parcelas'
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
    object StaticText3: TStaticText
      Left = 6
      Top = 281
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Principal'
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
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 143
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Class.Financeira (Rec)'
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
    object cClassificacaoR: TRxDBLookupCombo
      Left = 126
      Top = 143
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Classificacao_R'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = dsClassificacaoR
      ParentFont = False
      TabOrder = 8
    end
    object StaticText5: TStaticText
      Left = 6
      Top = 235
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Centro Custo'
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
    object cCentroCusto: TRxDBLookupCombo
      Left = 126
      Top = 235
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Centro_custo'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsCentroCusto
      ParentFont = False
      TabOrder = 12
    end
    object StaticText7: TStaticText
      Left = 270
      Top = 5
      Width = 43
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data'
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
    object StaticText10: TStaticText
      Left = 6
      Top = 51
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Processo'
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
    object cProcesso: TRxDBLookupCombo
      Left = 126
      Top = 51
      Width = 129
      Height = 21
      DropDownCount = 8
      DataField = 'Processo'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Processo'
      LookupDisplay = 'Processo'
      LookupSource = Dados.dsProcessosDOC
      ParentFont = False
      TabOrder = 4
      OnChange = cProcessoChange
    end
    object lForma: TStaticText
      Left = 6
      Top = 258
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Tipo de Documento'
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
    object StaticText8: TStaticText
      Left = 6
      Top = 5
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Empr'#233'stimo n'#186
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
    object cCodigo: TDBEdit
      Left = 174
      Top = 5
      Width = 93
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Numero'
      DataSource = Dados.dsEmprestimos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = cCodigoChange
    end
    object StaticText11: TStaticText
      Left = 6
      Top = 120
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Banco (Cliente)'
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
    object cBancoCliente: TRxDBLookupCombo
      Left = 126
      Top = 120
      Width = 443
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Banco_Cliente'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Nome; CNPJ'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsClientes
      ParentFont = False
      TabOrder = 7
      OnChange = cBancoClienteChange
    end
    object StaticText12: TStaticText
      Left = 6
      Top = 189
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Banco (Fornecedor)'
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
    object cBancoFornecedor: TRxDBLookupCombo
      Left = 126
      Top = 189
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Banco_Fornecedor'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Nome; CNPJ'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsFornecedores
      ParentFont = False
      TabOrder = 10
    end
    object StaticText13: TStaticText
      Left = 6
      Top = 304
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Juros'
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
    object StaticText14: TStaticText
      Left = 6
      Top = 327
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Total'
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
    object StaticText1: TStaticText
      Left = 281
      Top = 304
      Width = 60
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Taxa Juros'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 35
      Transparent = False
      StyleElements = []
    end
    object StaticText15: TStaticText
      Left = 6
      Top = 74
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Cliente'
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
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 126
      Top = 74
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Cliente'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Nome; CNPJ'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsClientes
      ParentFont = False
      TabOrder = 5
    end
    object StaticText16: TStaticText
      Left = 6
      Top = 212
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Class.Financeira (Pgto)'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 37
      Transparent = False
      StyleElements = []
    end
    object cClassificacaoP: TRxDBLookupCombo
      Left = 126
      Top = 212
      Width = 443
      Height = 21
      DropDownCount = 8
      DataField = 'Classificacao_P'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsClassificacaoFinanceira
      ParentFont = False
      TabOrder = 11
    end
    object StaticText17: TStaticText
      Left = 353
      Top = 258
      Width = 77
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Documento n'#186
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
    object DBEdit2: TDBEdit
      Left = 432
      Top = 258
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Numero_Documento'
      DataSource = Dados.dsEmprestimos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object cValorPrincipal: TDBEdit
      Left = 126
      Top = 281
      Width = 153
      Height = 21
      DataField = 'Valor_Principal'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnChange = cValorPrincipalChange
    end
    object cValorJuros: TDBEdit
      Left = 126
      Top = 304
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_Juros'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnChange = cValorJurosChange
    end
    object cParcelas: TDBEdit
      Left = 126
      Top = 350
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Qtde_Parcelas'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object DBEdit7: TDBEdit
      Left = 343
      Top = 304
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Juros_Efetivos'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object cDataCG: TDBDateEdit
      Left = 315
      Top = 5
      Width = 113
      Height = 21
      DataField = 'Data'
      DataSource = Dados.dsEmprestimos
      CheckOnExit = True
      DialogTitle = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkCustom
      Glyph.Data = {
        D2080000424DD208000000000000360000002800000026000000130000000100
        1800000000009C08000000000000000000000000000000000000171717151515
        1515151515151515151515151515151515151515151515151515151515151515
        1515151515151515151515151515151516161617171715151515151515151515
        1515151515151515151515151515151515151515151515151515151515151515
        15151515151515151516161600005A5A5A555555565656555555555555565656
        5656565757575858585858585757575757575555555555555555555555555555
        555555555959595A5A5A55555556565655555555555556565656565657575758
        5858585858575757575757555555555555555555555555555555555555595959
        0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
        A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
        B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
        B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
        E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
        FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
        F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
        6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
        D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
        FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
        FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
        ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
        DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
        4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
        FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
        FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
        FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
        FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
        FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
        EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
        F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
        C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
        00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
        282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
        C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
        FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
        F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
        F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
        F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
        F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
        C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
        4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
        C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
        2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
        C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
        B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
        75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
        43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
        A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
        6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
        7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
        2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
        15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
        6868687676768686866969696262625D5D5D61616122222200000C10093F391D
        473A0050410045380068655D4946394F4000776300705D007360007D67004F45
        11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
        28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
        3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
        464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
        00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
        4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
        00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
        594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
        2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
        10108181811717172222223E3E3E2B2B2B1B1B1B0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      YearDigits = dyFour
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 126
      Top = 258
      Width = 224
      Height = 21
      DropDownCount = 8
      DataField = 'Tipo_Documento'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsTiposDocumentos
      ParentFont = False
      TabOrder = 13
    end
    object StaticText18: TStaticText
      Left = 6
      Top = 28
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Garantia'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 39
      Transparent = False
      StyleElements = []
    end
    object cGarantia: TRxDBComboBox
      Left = 126
      Top = 28
      Width = 443
      Height = 21
      DataField = 'Garantia'
      DataSource = Dados.dsEmprestimos
      EnableValues = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText21: TStaticText
      Left = 173
      Top = 350
      Width = 103
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vencimento em dias'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 40
      Transparent = False
      StyleElements = []
    end
    object StaticText22: TStaticText
      Left = 325
      Top = 350
      Width = 116
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vencimento em dia fixo'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 41
      Transparent = False
      StyleElements = []
    end
    object cVencimentoDias: TDBEdit
      Left = 278
      Top = 350
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Vencimento_Dias'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object cDiaFixo: TDBEdit
      Left = 443
      Top = 350
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Vencimento_Fixo'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object cTotal: TCurrencyEdit
      Left = 126
      Top = 327
      Width = 153
      Height = 21
      AutoSize = False
      Color = 16764108
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object StaticText20: TStaticText
      Left = 6
      Top = 166
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Forma Recebimento'
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
    object cForma: TDBComboBox
      Left = 126
      Top = 166
      Width = 443
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Forma_Tipo'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'CHEQUE'
        'CART'#195'O DE CR'#201'DITO'
        'CART'#195'O DE D'#201'BITO'
        'TRANSFER'#202'NCIA ON-LINE'
        'DOC'
        'BOLETO BANC'#193'RIO'
        'D'#201'BITO EM CONTA'
        'DINHEIRO')
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit3: TDBEdit
      Left = 126
      Top = 5
      Width = 46
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Tipo'
      DataSource = Dados.dsEmprestimos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cCodigoChange
    end
    object StaticText9: TStaticText
      Left = 6
      Top = 373
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor IOF'
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
    object DBEdit1: TDBEdit
      Left = 126
      Top = 373
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_IOF'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 44
    end
    object StaticText23: TStaticText
      Left = 6
      Top = 396
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Taxas Diversas'
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
      Left = 126
      Top = 396
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_Diversos'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 46
    end
    object StaticText24: TStaticText
      Left = 6
      Top = 419
      Width = 118
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Aplica'#231#227'o'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 47
      Transparent = False
      StyleElements = []
    end
    object DBEdit5: TDBEdit
      Left = 126
      Top = 419
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_Aplicacao'
      DataSource = Dados.dsEmprestimos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 48
    end
  end
  object StaticText19: TStaticText
    Left = 583
    Top = 49
    Width = 274
    Height = 19
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'PARCELAS'
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
  object GradeParcelas: TRxDBGrid
    Left = 583
    Top = 68
    Width = 274
    Height = 572
    Color = 13828095
    DataSource = Dados.dsEmprestimosParcelas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeParcelasDrawColumnCell
    OnKeyPress = GradeParcelasKeyPress
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Parcela'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Vencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Vencto.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Baixa'
        Title.Alignment = taCenter
        Title.Caption = 'Bx'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end>
  end
  object RxDBGrid1: TRxDBGrid
    Left = 4
    Top = 505
    Width = 576
    Height = 135
    DataSource = Dados.dsEmprestimos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 67
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
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Banco_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Principal'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtde_Parcelas'
        Title.Alignment = taCenter
        Title.Caption = 'Parc'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 34
        Visible = True
      end>
  end
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 344
    Top = 8
  end
  object tGarantia: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 376
    Top = 8
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 408
    Top = 8
  end
  object ClassificacaoR: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ClassificacaoFinanceira'
      
        '  (Codigo, Descricao, Tipo, Relatorio, Custo, Provisao_ContaD, P' +
        'rovisao_ContaC, Provisao_Historico, Pagamento_Historico, Adianta' +
        'mento, Tipo_Lancamento, Pagamento_Conta, Cambio, Somente_Faturam' +
        'ento, Devolucao, Titulo, Aliquota_PIS, Aliquota_COFINS, CST_PIS,' +
        ' CST_COFINS, Nivel, BCCredito, Baixa_Automatica, Despesa_Fixa, D' +
        'esativada, Transferencia, Nota_Referencia, Modalidade_Importacao' +
        ', Fechamento_Processo, Processo_Obrigatorio, Custo_Seletivo, Cus' +
        'to_Entrada, Natureza_Receita, Custo_Outros)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Tipo, :Relatorio, :Custo, :Provisao_Con' +
        'taD, :Provisao_ContaC, :Provisao_Historico, :Pagamento_Historico' +
        ', :Adiantamento, :Tipo_Lancamento, :Pagamento_Conta, :Cambio, :S' +
        'omente_Faturamento, :Devolucao, :Titulo, :Aliquota_PIS, :Aliquot' +
        'a_COFINS, :CST_PIS, :CST_COFINS, :Nivel, :BCCredito, :Baixa_Auto' +
        'matica, :Despesa_Fixa, :Desativada, :Transferencia, :Nota_Refere' +
        'ncia, :Modalidade_Importacao, :Fechamento_Processo, :Processo_Ob' +
        'rigatorio, :Custo_Seletivo, :Custo_Entrada, :Natureza_Receita, :' +
        'Custo_Outros)')
    SQLDelete.Strings = (
      'DELETE FROM ClassificacaoFinanceira'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ClassificacaoFinanceira'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Tipo = :Tipo, Relato' +
        'rio = :Relatorio, Custo = :Custo, Provisao_ContaD = :Provisao_Co' +
        'ntaD, Provisao_ContaC = :Provisao_ContaC, Provisao_Historico = :' +
        'Provisao_Historico, Pagamento_Historico = :Pagamento_Historico, ' +
        'Adiantamento = :Adiantamento, Tipo_Lancamento = :Tipo_Lancamento' +
        ', Pagamento_Conta = :Pagamento_Conta, Cambio = :Cambio, Somente_' +
        'Faturamento = :Somente_Faturamento, Devolucao = :Devolucao, Titu' +
        'lo = :Titulo, Aliquota_PIS = :Aliquota_PIS, Aliquota_COFINS = :A' +
        'liquota_COFINS, CST_PIS = :CST_PIS, CST_COFINS = :CST_COFINS, Ni' +
        'vel = :Nivel, BCCredito = :BCCredito, Baixa_Automatica = :Baixa_' +
        'Automatica, Despesa_Fixa = :Despesa_Fixa, Desativada = :Desativa' +
        'da, Transferencia = :Transferencia, Nota_Referencia = :Nota_Refe' +
        'rencia, Modalidade_Importacao = :Modalidade_Importacao, Fechamen' +
        'to_Processo = :Fechamento_Processo, Processo_Obrigatorio = :Proc' +
        'esso_Obrigatorio, Custo_Seletivo = :Custo_Seletivo, Custo_Entrad' +
        'a = :Custo_Entrada, Natureza_Receita = :Natureza_Receita, Custo_' +
        'Outros = :Custo_Outros'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT ClassificacaoFinanceira.Codigo, ClassificacaoFinanceira.D' +
        'escricao, ClassificacaoFinanceira.Tipo, ClassificacaoFinanceira.' +
        'Relatorio, ClassificacaoFinanceira.Custo, ClassificacaoFinanceir' +
        'a.Provisao_ContaD, ClassificacaoFinanceira.Provisao_ContaC, Clas' +
        'sificacaoFinanceira.Provisao_Historico, ClassificacaoFinanceira.' +
        'Pagamento_Historico, ClassificacaoFinanceira.Adiantamento, Class' +
        'ificacaoFinanceira.Tipo_Lancamento, ClassificacaoFinanceira.Paga' +
        'mento_Conta, ClassificacaoFinanceira.Cambio, ClassificacaoFinanc' +
        'eira.Somente_Faturamento, ClassificacaoFinanceira.Devolucao, Cla' +
        'ssificacaoFinanceira.Titulo, ClassificacaoFinanceira.Aliquota_PI' +
        'S, ClassificacaoFinanceira.Aliquota_COFINS, ClassificacaoFinance' +
        'ira.CST_PIS, ClassificacaoFinanceira.CST_COFINS, ClassificacaoFi' +
        'nanceira.Nivel, ClassificacaoFinanceira.BCCredito, Classificacao' +
        'Financeira.Baixa_Automatica, ClassificacaoFinanceira.Despesa_Fix' +
        'a, ClassificacaoFinanceira.Desativada, ClassificacaoFinanceira.T' +
        'ransferencia, ClassificacaoFinanceira.Nota_Referencia, Classific' +
        'acaoFinanceira.Modalidade_Importacao, ClassificacaoFinanceira.Fe' +
        'chamento_Processo, ClassificacaoFinanceira.Processo_Obrigatorio,' +
        ' ClassificacaoFinanceira.Custo_Seletivo, ClassificacaoFinanceira' +
        '.Custo_Entrada, ClassificacaoFinanceira.Natureza_Receita, Classi' +
        'ficacaoFinanceira.Custo_Outros FROM ClassificacaoFinanceira'
      'WHERE ClassificacaoFinanceira.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo,'
      '       Descricao,'
      '       Tipo,'
      '       Nivel,'
      '       Baixa_Automatica'
      'FROM ClassificacaoFinanceira '
      'ORDER BY Descricao')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 504
    Top = 8
    object ClassificacaoRCodigo: TStringField
      DisplayWidth = 8
      FieldName = 'Codigo'
      Origin = 'ClassificacaoFinanceira.Codigo'
      Size = 15
    end
    object ClassificacaoRDescricao: TStringField
      DisplayWidth = 44
      FieldName = 'Descricao'
      Origin = 'ClassificacaoFinanceira.Descricao'
      Size = 60
    end
    object ClassificacaoRTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'ClassificacaoFinanceira.Tipo'
      FixedChar = True
      Size = 1
    end
    object ClassificacaoRNivel: TSmallintField
      FieldName = 'Nivel'
      Origin = 'ClassificacaoFinanceira.Nivel'
    end
    object ClassificacaoRBaixa_Automatica: TBooleanField
      FieldName = 'Baixa_Automatica'
      Origin = 'ClassificacaoFinanceira.Baixa_Automatica'
    end
  end
  object dsClassificacaoR: TDataSource
    DataSet = ClassificacaoR
    Left = 535
    Top = 8
  end
  object tTotaliza: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 440
    Top = 8
  end
end
