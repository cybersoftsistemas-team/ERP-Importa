object Financeiro_Duplicar: TFinanceiro_Duplicar
  Left = 519
  Top = 281
  BorderStyle = bsDialog
  Caption = 'Financeiro_Duplicar'
  ClientHeight = 611
  ClientWidth = 963
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 963
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
  object lTitulo: TRxLabel
    Left = 8
    Top = 22
    Width = 305
    Height = 18
    Caption = 'Contas a Pagar/Receber (Duplicar Lan'#231'amentos.)'
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
    Top = 581
    Width = 963
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object lBaixado: TLabel
      Left = 343
      Top = 6
      Width = 173
      Height = 16
      Caption = 'LAN'#199'AMENTO BAIXADO'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object bSair: TButton
      Left = 887
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSairClick
    end
    object bDuplicar: TButton
      Left = 812
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = '  Salva as informa'#231#245'es no banco de dados.'
      Align = alRight
      Caption = '&Executar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bDuplicarClick
    end
  end
  object Panel3: TPanel
    Left = 5
    Top = 51
    Width = 683
    Height = 471
    BevelOuter = bvLowered
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    object cBanco: TDBLookupComboBox
      Left = 112
      Top = 373
      Width = 308
      Height = 21
      Color = 15395562
      DataField = 'Banco'
      DataSource = Dados.dsPagarReceber
      DropDownRows = 10
      DropDownWidth = 400
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Nome;Conta'
      ListFieldIndex = 1
      ListSource = Dados.dsBancos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 19
      StyleElements = [seFont, seBorder]
    end
    object cObservacao: TDBMemo
      Left = 112
      Top = 419
      Width = 565
      Height = 43
      Color = 15395562
      DataField = 'Observacao'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      StyleElements = [seFont, seBorder]
    end
    object lObservacao: TStaticText
      Left = 5
      Top = 419
      Width = 105
      Height = 43
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Observa'#231#227'o'
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
    object StaticText13: TStaticText
      Left = 5
      Top = 281
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Multa'
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
    object cMulta: TDBEdit
      Left = 112
      Top = 281
      Width = 129
      Height = 21
      Color = 15395562
      DataField = 'Multa'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      StyleElements = [seFont, seBorder]
    end
    object StaticText14: TStaticText
      Left = 5
      Top = 304
      Width = 105
      Height = 21
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
      TabOrder = 25
      Transparent = False
      StyleElements = []
    end
    object cJuros: TDBEdit
      Left = 112
      Top = 304
      Width = 129
      Height = 21
      Color = 15395562
      DataField = 'Juros'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      StyleElements = [seFont, seBorder]
    end
    object StaticText15: TStaticText
      Left = 5
      Top = 327
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Desconto'
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
    object cDesconto: TDBEdit
      Left = 112
      Top = 327
      Width = 129
      Height = 21
      Color = 15395562
      DataField = 'Desconto'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      StyleElements = [seFont, seBorder]
    end
    object cValorTotal: TDBEdit
      Left = 112
      Top = 350
      Width = 129
      Height = 21
      TabStop = False
      Color = 15395562
      DataField = 'Valor_Total'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      StyleElements = [seFont, seBorder]
    end
    object StaticText17: TStaticText
      Left = 5
      Top = 350
      Width = 105
      Height = 21
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
      TabOrder = 27
      Transparent = False
      StyleElements = []
    end
    object lClassificacao: TStaticText
      Left = 5
      Top = 28
      Width = 105
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Classifica'#231#227'o'
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
    object lBeneficiario: TStaticText
      Left = 5
      Top = 166
      Width = 105
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Fornecedor'
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
    object lValorTitulo: TStaticText
      Left = 5
      Top = 143
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Documento'
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
    object lVencimento: TStaticText
      Left = 5
      Top = 235
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vencimento'
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
    object cValorDocumento: TDBEdit
      Left = 112
      Top = 143
      Width = 129
      Height = 21
      Color = 15395562
      DataField = 'Valor_Documento'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      StyleElements = [seFont, seBorder]
    end
    object cNumeroDOC: TDBEdit
      Left = 548
      Top = 120
      Width = 127
      Height = 21
      Color = 15395562
      DataField = 'Numero_Documento'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      StyleElements = [seFont, seBorder]
    end
    object lProcesso: TStaticText
      Left = 5
      Top = 74
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#186' Processo'
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
    object lDataProvisao: TStaticText
      Left = 379
      Top = 120
      Width = 29
      Height = 21
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
      TabOrder = 33
      Transparent = False
      StyleElements = []
    end
    object lDocumento: TStaticText
      Left = 5
      Top = 120
      Width = 105
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Documento'
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
    object lNumeroDOC: TStaticText
      Left = 523
      Top = 120
      Width = 23
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#186' '
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
    object lDataPrevisao: TStaticText
      Left = 5
      Top = 97
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data Previs'#227'o'
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
    object StaticText1: TStaticText
      Left = 5
      Top = 258
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Parcela'
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
    object cValorParcela: TDBEdit
      Left = 112
      Top = 258
      Width = 129
      Height = 21
      Color = 15395562
      DataField = 'Valor_Parcela'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      StyleElements = [seFont, seBorder]
    end
    object cClassificacao: TDBLookupComboBox
      Left = 112
      Top = 28
      Width = 476
      Height = 21
      Color = 15395562
      DataField = 'Classificacao'
      DataSource = Dados.dsPagarReceber
      DropDownRows = 10
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = Dados.dsClassificacaoFinanceira
      NullValueKey = 46
      ParentFont = False
      TabOrder = 0
      StyleElements = [seFont, seBorder]
    end
    object cProcesso: TDBLookupComboBox
      Left = 112
      Top = 74
      Width = 161
      Height = 21
      Color = 15395562
      DataField = 'Processo'
      DataSource = Dados.dsPagarReceber
      DropDownRows = 10
      DropDownWidth = 220
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Processo'
      ListField = 'Processo; Numero_Declaracao'
      ListSource = Dados.dsProcessosDOC
      NullValueKey = 46
      ParentFont = False
      TabOrder = 2
      StyleElements = [seFont, seBorder]
    end
    object cDataPrevisao: TDBDateEdit
      Left = 112
      Top = 97
      Width = 129
      Height = 21
      DataField = 'Data_Previsao'
      DataSource = Dados.dsPagarReceber
      CheckOnExit = True
      Color = 15395562
      DialogTitle = 'Data'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
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
      PopupAlign = epaLeft
      TabOrder = 3
    end
    object cDataDoc: TDBDateEdit
      Left = 410
      Top = 120
      Width = 110
      Height = 21
      DataField = 'Data_Documento'
      DataSource = Dados.dsPagarReceber
      CheckOnExit = True
      Color = 15395562
      DialogTitle = 'Data'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
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
      PopupAlign = epaLeft
      TabOrder = 5
    end
    object cVencimento: TDBDateEdit
      Left = 112
      Top = 235
      Width = 129
      Height = 21
      DataField = 'Data_Vencimento'
      DataSource = Dados.dsPagarReceber
      CheckOnExit = True
      Color = 15395562
      DialogTitle = 'Data'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
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
      PopupAlign = epaLeft
      TabOrder = 11
    end
    object cBeneficiario: TDBLookupComboBox
      Left = 112
      Top = 166
      Width = 388
      Height = 21
      Color = 15395562
      DataSource = Dados.dsPagarReceber
      DropDownRows = 10
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListFieldIndex = 1
      NullValueKey = 46
      ParentFont = False
      TabOrder = 8
      StyleElements = [seFont, seBorder]
    end
    object cDocumento: TDBLookupComboBox
      Left = 112
      Top = 120
      Width = 265
      Height = 21
      Color = 15395562
      DataField = 'Documento'
      DataSource = Dados.dsPagarReceber
      DropDownRows = 10
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = Dados.dsTiposDocumentos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 4
      StyleElements = [seFont, seBorder]
    end
    object cTipo: TEdit
      Left = 592
      Top = 28
      Width = 88
      Height = 21
      Color = 15395562
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 38
      Text = ' RECEBIMENTO'
      StyleElements = [seFont, seBorder]
    end
    object lModalidade: TStaticText
      Left = 5
      Top = 212
      Width = 105
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Modalidade Pgto.'
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
    object cModalidade: TDBLookupComboBox
      Left = 112
      Top = 212
      Width = 388
      Height = 21
      Color = 15395562
      DataField = 'Modalidade_Pgto'
      DataSource = Dados.dsPagarReceber
      DropDownRows = 10
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsModalidadesPgto
      NullValueKey = 46
      ParentFont = False
      TabOrder = 10
      StyleElements = [seFont, seBorder]
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 51
      Width = 105
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Centro de Custo'
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
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
      Top = 51
      Width = 476
      Height = 21
      Color = 15395562
      DataField = 'Centro_Custo'
      DataSource = Dados.dsPagarReceber
      DropDownRows = 10
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsCentroCusto
      NullValueKey = 46
      ParentFont = False
      TabOrder = 1
      StyleElements = [seFont, seBorder]
    end
    object StaticText4: TStaticText
      Left = 243
      Top = 350
      Width = 46
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Baixado'
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
    object cTotalBaixas: TCurrencyEdit
      Left = 291
      Top = 350
      Width = 129
      Height = 21
      AutoSize = False
      Color = 15395562
      DisplayFormat = ',0.00;-,0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object cSaldo: TCurrencyEdit
      Left = 460
      Top = 350
      Width = 135
      Height = 21
      AutoSize = False
      Color = 15395562
      DisplayFormat = ',0.00;-,0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object StaticText5: TStaticText
      Left = 422
      Top = 350
      Width = 36
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Saldo'
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
    object lAdiantamento: TStaticText
      Left = 5
      Top = 189
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#186' do Adiantamento'
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
    object cNumeroForma: TDBEdit
      Left = 460
      Top = 396
      Width = 135
      Height = 21
      Color = 15395562
      DataField = 'Numero_FormaTipo'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object lNumeroForma: TStaticText
      Left = 422
      Top = 396
      Width = 36
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#186' '
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 44
      Transparent = False
      StyleElements = []
    end
    object lBanco: TStaticText
      Left = 5
      Top = 373
      Width = 105
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
      TabOrder = 45
      Transparent = False
      StyleElements = []
    end
    object lForma: TStaticText
      Left = 5
      Top = 396
      Width = 105
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Forma Pagamento'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 46
      Transparent = False
      StyleElements = []
    end
    object cFormaPagamento: TDBComboBox
      Left = 112
      Top = 396
      Width = 308
      Height = 21
      Color = 15395562
      DataField = 'Forma_Tipo'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
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
      TabOrder = 20
      StyleElements = [seFont, seBorder]
    end
    object cNumeroAdiantamento: TDBEdit
      Left = 112
      Top = 189
      Width = 110
      Height = 21
      Color = 15395562
      DataField = 'Adiantamento_Numero'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      StyleElements = [seFont, seBorder]
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 5
      Width = 72
      Height = 21
      Color = 15395562
      DataField = 'Numero'
      DataSource = Dados.dsPagarReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6447714
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 47
      StyleElements = [seFont, seBorder]
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 5
      Width = 105
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'T'#237'tulo n'#186
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 48
      Transparent = False
      StyleElements = []
    end
  end
  object Panel2: TPanel
    Left = 192
    Top = 537
    Width = 511
    Height = 37
    BevelOuter = bvLowered
    TabOrder = 2
    object lDias: TStaticText
      Left = 141
      Top = 8
      Width = 105
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
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object cDias: TRxSpinEdit
      Left = 248
      Top = 8
      Width = 65
      Height = 21
      Decimal = 0
      MaxValue = 365.000000000000000000
      Value = 31.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = cDiasChange
    end
    object StaticText6: TStaticText
      Left = 6
      Top = 8
      Width = 64
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
      TabOrder = 2
      Transparent = False
      StyleElements = []
    end
    object cQuantidade: TRxSpinEdit
      Left = 72
      Top = 8
      Width = 65
      Height = 21
      Decimal = 0
      Value = 1.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = cQuantidadeChange
    end
    object lDiaFixo: TStaticText
      Left = 317
      Top = 8
      Width = 119
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
      TabOrder = 4
      Transparent = False
      StyleElements = []
    end
    object cDiaFixo: TRxSpinEdit
      Left = 438
      Top = 8
      Width = 65
      Height = 21
      Decimal = 0
      MaxValue = 31.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnChange = cDiaFixoChange
    end
  end
  object cTipoCopia: TRadioGroup
    Left = 5
    Top = 530
    Width = 178
    Height = 44
    Caption = 'Tipo'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Parcelar'
      'Duplicar')
    TabOrder = 3
    OnClick = cTipoCopiaClick
  end
  object cIncDoc: TCheckBox
    Left = 720
    Top = 536
    Width = 215
    Height = 17
    Caption = 'Incrementar m'#234's na data do documento.'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object cGrade: TRxDBGrid
    Left = 691
    Top = 52
    Width = 268
    Height = 471
    DataSource = dsTituloParcelas
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    FixedCols = 1
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Parcela'
        Title.Alignment = taCenter
        Title.Caption = 'Parc'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Vencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Vencto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 124
        Visible = True
      end>
  end
  object cIncVenc: TCheckBox
    Left = 720
    Top = 554
    Width = 215
    Height = 17
    Caption = 'Incrementar m'#234's na data do vencimento.'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object tTemp: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PagarReceber.Numero, PagarReceber.Empresa, PagarReceber.P' +
        'agamento_Recebimento, PagarReceber.Classificacao, PagarReceber.C' +
        'entro_Custo, PagarReceber.Data_Provisao, PagarReceber.Data_Venci' +
        'mento, PagarReceber.Data_Pagamento, PagarReceber.Valor, PagarRec' +
        'eber.Valor_Total, PagarReceber.Fornecedor, PagarReceber.Cliente,' +
        ' PagarReceber.Orgao, PagarReceber.Banco, PagarReceber.Modalidade' +
        '_Pgto, PagarReceber.Documento, PagarReceber.Numero_Documento, Pa' +
        'garReceber.Forma_Pagamento, PagarReceber.Numero_FormaPagamento, ' +
        'PagarReceber.Observacao, PagarReceber.Processo, PagarReceber.Cod' +
        'igo_Adicional01, PagarReceber.Valor_Adicional01, PagarReceber.Co' +
        'digo_Adicional02, PagarReceber.Valor_Adicional02, PagarReceber.C' +
        'odigo_Adicional03, PagarReceber.Valor_Adicional03, PagarReceber.' +
        'Codigo_Adicional04, PagarReceber.Valor_Adicional04, PagarReceber' +
        '.Codigo_Adicional05, PagarReceber.Valor_Adicional05, PagarRecebe' +
        'r.Codigo_Adicional06, PagarReceber.Valor_Adicional06, PagarReceb' +
        'er.Codigo_Adicional07, PagarReceber.Valor_Adicional07, PagarRece' +
        'ber.Codigo_Adicional08, PagarReceber.Valor_Adicional08, PagarRec' +
        'eber.Codigo_Adicional09, PagarReceber.Valor_Adicional09, PagarRe' +
        'ceber.Codigo_Adicional10, PagarReceber.Valor_Adicional10, PagarR' +
        'eceber.CustoConta, PagarReceber.Bordero FROM PagarReceber'
      'WHERE PagarReceber.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 369
    Top = 8
  end
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'Select MAX(Numero) AS Numero FROM PagarReceber')
    FetchRows = 1
    Left = 400
    Top = 8
  end
  object TituloParcelas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TituloParcelas'
      '  (Registro, Titulo, Parcela, Vencimento, Valor)'
      'VALUES'
      '  (:Registro, :Titulo, :Parcela, :Vencimento, :Valor)')
    SQLDelete.Strings = (
      'DELETE FROM TituloParcelas'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE TituloParcelas'
      'SET'
      
        '  Registro = :Registro, Titulo = :Titulo, Parcela = :Parcela, Ve' +
        'ncimento = :Vencimento, Valor = :Valor'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT TituloParcelas.Registro, TituloParcelas.Titulo, TituloPar' +
        'celas.Parcela, TituloParcelas.Vencimento, TituloParcelas.Valor F' +
        'ROM TituloParcelas'
      'WHERE TituloParcelas.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM TituloParcelas')
    FetchRows = 1
    Left = 467
    Top = 7
    object TituloParcelasRegistro: TSmallintField
      FieldName = 'Registro'
      Origin = 'TituloParcelas.Registro'
    end
    object TituloParcelasTitulo: TIntegerField
      FieldName = 'Titulo'
      Origin = 'TituloParcelas.Titulo'
    end
    object TituloParcelasParcela: TSmallintField
      FieldName = 'Parcela'
      Origin = 'TituloParcelas.Parcela'
    end
    object TituloParcelasVencimento: TDateTimeField
      FieldName = 'Vencimento'
      Origin = 'TituloParcelas.Vencimento'
    end
    object TituloParcelasValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
  end
  object dsTituloParcelas: TDataSource
    DataSet = TituloParcelas
    Left = 499
    Top = 6
  end
end
