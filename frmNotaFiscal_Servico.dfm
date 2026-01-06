object NotaFiscal_Servico: TNotaFiscal_Servico
  Left = 505
  Top = 128
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_Servico'
  ClientHeight = 591
  ClientWidth = 617
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 617
    Height = 38
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 0
    Width = 180
    Height = 21
    Caption = 'NOTA FISCAL DE SERVI'#199'O'
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
    Top = 17
    Width = 295
    Height = 18
    Caption = 'Registro das Notas Fiscais de Servi'#231'os tomados.'
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
    Top = 561
    Width = 617
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 554
      Top = 1
      Width = 62
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 252
      Height = 28
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotasTerceiros
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
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
      Left = 389
      Top = 1
      Width = 65
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bXML: TButton
      Left = 253
      Top = 1
      Width = 83
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens da nota fiscal.'
      Align = alLeft
      Caption = 'Importar XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bXMLClick
    end
    object bItens: TButton
      Left = 336
      Top = 1
      Width = 53
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Itens'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bItensClick
    end
    object bDuplicatas: TButton
      Left = 454
      Top = 1
      Width = 97
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens da nota fiscal.'
      Align = alLeft
      Caption = 'Gerar &Duplicatas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bDuplicatasClick
    end
  end
  object PageControl1: TPageControl
    Left = 7
    Top = 46
    Width = 603
    Height = 501
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabHeight = 28
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&Dados da Nota'
      Enabled = False
      object Image6: TImage
        Left = 463
        Top = 424
        Width = 127
        Height = 33
        Stretch = True
      end
      object Image5: TImage
        Left = 331
        Top = 424
        Width = 130
        Height = 33
        Stretch = True
      end
      object Image4: TImage
        Left = 125
        Top = 424
        Width = 78
        Height = 33
        Stretch = True
      end
      object Image3: TImage
        Left = 205
        Top = 424
        Width = 124
        Height = 33
        Stretch = True
      end
      object Label4: TLabel
        Left = 128
        Top = 427
        Width = 56
        Height = 11
        Caption = 'Al'#237'quota ISS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 128
        Top = 436
        Width = 71
        Height = 16
        Alignment = taRightJustify
        DataField = 'Aliquota_ISS'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 208
        Top = 427
        Width = 57
        Height = 11
        Caption = 'Valor do ISS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cValorISS: TDBText
        Left = 205
        Top = 436
        Width = 120
        Height = 16
        Alignment = taRightJustify
        DataField = 'Valor_ISS'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 337
        Top = 427
        Width = 88
        Height = 11
        Caption = 'Impostos Dedut'#237'veis:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cTotalImpostos: TLabel
        Left = 340
        Top = 436
        Width = 117
        Height = 19
        Alignment = taRightJustify
        Caption = 'cTotalImpostos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 468
        Top = 427
        Width = 56
        Height = 11
        Caption = 'Valor L'#237'quido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cTotalLiquido: TDBText
        Left = 467
        Top = 436
        Width = 119
        Height = 16
        Alignment = taRightJustify
        DataField = 'Valor_TotalLiquido'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object bPesqFor: TSpeedButton
        Left = 565
        Top = 45
        Width = 26
        Height = 25
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFB9BCBD898D8F5651545C5A5C5D5E605E60635D595D303537474C4EDBDE
          DEEFF0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFF9FDFC494548967F81D0B7
          B8FFF3F2FFFFFFFFFFFFFFFFFFFFFFFFD9BEBFB08A8C2316175A61639D9EA1FF
          FFFFFFFFFFFFFFFF0000FFFFFF5D5155D9ADAEF3CED0FFE4E5C3B5B6CBC5C5D2
          D0D1D4D6D7C7C0C2F5D7D8E8B8B9E3A8A9584141545B5D9EA0A0FFFFFFFFFFFF
          0000584E52DBA8A9E1B6B879686B484146939697898C8D8384877B7C80767A7C
          4B4447544245D59EA0ECB0B0543F3F505556D9D9DAFFFFFF0000544045C49496
          565A5EE7EDEDCBD2D3676F76697175636A6D5B64674E5659CCD1D2B7BEBD303A
          3EA475778B64644E53556C6F70FFFFFF00002A1D22919093FFFFFF5F55608D66
          71DBA3ABD59EA4D1989ED29A9CDEA0A34F363A443336A5AEAF696E703F282855
          58595F6162C3C3C4000054575BFFFFFF776A73EDA9B4FFB0C7FFABC1FFA9BEFF
          A4AEFF9FA4FF9DA0FFA6A9FFAAAC5C3E41A4AAAB484A495152535F6061D4D4D4
          0000717376B2BBBFCB7E89FFBBCEF5CDDEFFD2E1FFAFC6FFA9BDFFA5ACFFA5A8
          FAA5A9D39C9C6F32293D464B6868674646486E6E6FFFFFFF00005C5E62FEFFFF
          775366FFB3CAFFEAF3FFFFFFDEB5CDC895AFBB858BB07D7D9C67627A3C323B15
          16959BA15E5B5E464748FFFFFFFFFFFF0000C7C7C9A1A2A4FFFFFF735884A084
          ACFFCDE3E49AB6CE7E99B56469A357507B413E3313179A9EA2808182A7A7A7FF
          FFFFFFFFFFFFFFFF0000FFFFFFBBBCBE919197E5E9ECFFFFFF6D699063618A59
          54706D786740444C6B6974B1B8BD6E797C1A2226939393FFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFD5D6D97F8089535466D0D2D4C8CBCBBCBEBFB2B4B8BABDBD
          8D99A14E606D949A989DA09D171F1A8A8B8AFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF94949B97989E98989B96999C9D9BA17D858EE5E7E8E9E8
          E98F8D8E0D1711141B1D878687FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7078760000004445433D474109
          12160D0C0C8989880000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF959B97535C5C5D6467313232040404151515
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF8687884E4F4F5352532828290000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF7B7B7B4444432F2F2F1919190000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6
          A6A68F8F8FEAEAEA0000}
        OnClick = bPesqForClick
      end
      object bPesqMod: TSpeedButton
        Left = 371
        Top = 115
        Width = 26
        Height = 25
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFB9BCBD898D8F5651545C5A5C5D5E605E60635D595D303537474C4EDBDE
          DEEFF0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFF9FDFC494548967F81D0B7
          B8FFF3F2FFFFFFFFFFFFFFFFFFFFFFFFD9BEBFB08A8C2316175A61639D9EA1FF
          FFFFFFFFFFFFFFFF0000FFFFFF5D5155D9ADAEF3CED0FFE4E5C3B5B6CBC5C5D2
          D0D1D4D6D7C7C0C2F5D7D8E8B8B9E3A8A9584141545B5D9EA0A0FFFFFFFFFFFF
          0000584E52DBA8A9E1B6B879686B484146939697898C8D8384877B7C80767A7C
          4B4447544245D59EA0ECB0B0543F3F505556D9D9DAFFFFFF0000544045C49496
          565A5EE7EDEDCBD2D3676F76697175636A6D5B64674E5659CCD1D2B7BEBD303A
          3EA475778B64644E53556C6F70FFFFFF00002A1D22919093FFFFFF5F55608D66
          71DBA3ABD59EA4D1989ED29A9CDEA0A34F363A443336A5AEAF696E703F282855
          58595F6162C3C3C4000054575BFFFFFF776A73EDA9B4FFB0C7FFABC1FFA9BEFF
          A4AEFF9FA4FF9DA0FFA6A9FFAAAC5C3E41A4AAAB484A495152535F6061D4D4D4
          0000717376B2BBBFCB7E89FFBBCEF5CDDEFFD2E1FFAFC6FFA9BDFFA5ACFFA5A8
          FAA5A9D39C9C6F32293D464B6868674646486E6E6FFFFFFF00005C5E62FEFFFF
          775366FFB3CAFFEAF3FFFFFFDEB5CDC895AFBB858BB07D7D9C67627A3C323B15
          16959BA15E5B5E464748FFFFFFFFFFFF0000C7C7C9A1A2A4FFFFFF735884A084
          ACFFCDE3E49AB6CE7E99B56469A357507B413E3313179A9EA2808182A7A7A7FF
          FFFFFFFFFFFFFFFF0000FFFFFFBBBCBE919197E5E9ECFFFFFF6D699063618A59
          54706D786740444C6B6974B1B8BD6E797C1A2226939393FFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFD5D6D97F8089535466D0D2D4C8CBCBBCBEBFB2B4B8BABDBD
          8D99A14E606D949A989DA09D171F1A8A8B8AFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF94949B97989E98989B96999C9D9BA17D858EE5E7E8E9E8
          E98F8D8E0D1711141B1D878687FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7078760000004445433D474109
          12160D0C0C8989880000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF959B97535C5C5D6467313232040404151515
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF8687884E4F4F5352532828290000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF7B7B7B4444432F2F2F1919190000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6
          A6A68F8F8FEAEAEA0000}
        OnClick = bPesqModClick
      end
      object StaticText8: TStaticText
        Left = 3
        Top = 286
        Width = 120
        Height = 136
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Impostos Dedut'#237'veis'
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
      object StaticText4: TStaticText
        Left = 3
        Top = 217
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total da Nota  '
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
      object cFornecedor: TDBLookupComboBox
        Left = 125
        Top = 48
        Width = 440
        Height = 21
        DataField = 'Fornecedor'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome;CNPJ'
        ListSource = Dados.dsFornecedores
        ParentFont = False
        TabOrder = 5
        OnClick = cFornecedorExit
        OnCloseUp = cFornecedorExit
        OnExit = cFornecedorExit
      end
      object cNota: TDBEdit
        Left = 125
        Top = 2
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nota'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = cNotaChange
      end
      object cDataEmissao: TDBDateEdit
        Left = 278
        Top = 2
        Width = 120
        Height = 21
        DataField = 'Data_Emissao'
        DataSource = dmFiscal.dsNotasTerceiros
        CheckOnExit = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object StaticText1: TStaticText
        Left = 208
        Top = 2
        Width = 68
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Data Emiss'#227'o'
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
      object lNome: TStaticText
        Left = 3
        Top = 48
        Width = 120
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
        TabOrder = 37
        Transparent = False
        StyleElements = []
        OnClick = lNomeClick
      end
      object lNota: TStaticText
        Left = 3
        Top = 2
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Nota Fiscal N'#186
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
      object StaticText9: TStaticText
        Left = 3
        Top = 140
        Width = 120
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
        TabOrder = 39
        Transparent = False
        StyleElements = []
      end
      object DBEdit12: TDBEdit
        Left = 438
        Top = 117
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Serie'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText16: TStaticText
        Left = 490
        Top = 117
        Width = 56
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Sub-S'#233'rie'
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
      object DBEdit13: TDBEdit
        Left = 548
        Top = 117
        Width = 44
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SubSerie'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBMemo1: TDBMemo
        Left = 125
        Top = 163
        Width = 466
        Height = 52
        DataField = 'Observacoes'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object StaticText24: TStaticText
        Left = 3
        Top = 163
        Width = 120
        Height = 52
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Observa'#231#245'es'
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
      object cValor: TDBEdit
        Left = 125
        Top = 217
        Width = 130
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_TotalNota'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnExit = cValorExit
      end
      object cImposto01: TDBLookupComboBox
        Left = 125
        Top = 286
        Width = 322
        Height = 21
        DataField = 'Codigo_Adicional01'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownAlign = daRight
        DropDownRows = 15
        DropDownWidth = 440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsImpostos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 17
        OnClick = cImposto01Click
        OnExit = cImposto01Click
      end
      object cValor_Adicional01: TDBEdit
        Left = 500
        Top = 286
        Width = 91
        Height = 21
        DataField = 'Valor_Adicional01'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object cImposto02: TDBLookupComboBox
        Left = 125
        Top = 309
        Width = 322
        Height = 21
        DataField = 'Codigo_Adicional02'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownAlign = daRight
        DropDownRows = 10
        DropDownWidth = 440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsImpostos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 20
        OnClick = cImposto02Click
        OnExit = cImposto02Click
      end
      object cValor_Adicional02: TDBEdit
        Left = 500
        Top = 309
        Width = 91
        Height = 21
        DataField = 'Valor_Adicional02'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object cImposto03: TDBLookupComboBox
        Left = 125
        Top = 332
        Width = 322
        Height = 21
        DataField = 'Codigo_Adicional03'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownAlign = daRight
        DropDownRows = 10
        DropDownWidth = 440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsImpostos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 23
        OnClick = cImposto03Click
        OnExit = cImposto03Click
      end
      object cValor_Adicional03: TDBEdit
        Left = 500
        Top = 332
        Width = 91
        Height = 21
        DataField = 'Valor_Adicional03'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
      end
      object cImposto04: TDBLookupComboBox
        Left = 125
        Top = 355
        Width = 322
        Height = 21
        DataField = 'Codigo_Adicional04'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownAlign = daRight
        DropDownRows = 10
        DropDownWidth = 440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsImpostos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 26
        OnClick = cImposto04Click
        OnExit = cImposto04Click
      end
      object cValor_Adicional04: TDBEdit
        Left = 500
        Top = 355
        Width = 91
        Height = 21
        DataField = 'Valor_Adicional04'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
      end
      object cImposto05: TDBLookupComboBox
        Left = 125
        Top = 378
        Width = 322
        Height = 21
        DataField = 'Codigo_Adicional05'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownAlign = daRight
        DropDownRows = 10
        DropDownWidth = 440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsImpostos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 29
        OnClick = cImposto05Click
        OnExit = cImposto05Click
      end
      object cValor_Adicional05: TDBEdit
        Left = 500
        Top = 378
        Width = 91
        Height = 21
        DataField = 'Valor_Adicional05'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
      end
      object cAliquota_Adicional01: TDBEdit
        Left = 449
        Top = 286
        Width = 49
        Height = 21
        DataField = 'Aliquota_Adicional01'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        OnChange = cAliquota_Adicional01Change
      end
      object cAliquota_Adicional02: TDBEdit
        Left = 449
        Top = 309
        Width = 49
        Height = 21
        DataField = 'Aliquota_Adicional02'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
        OnChange = cAliquota_Adicional02Change
      end
      object cAliquota_Adicional03: TDBEdit
        Left = 449
        Top = 332
        Width = 49
        Height = 21
        DataField = 'Aliquota_Adicional03'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
        OnChange = cAliquota_Adicional03Change
      end
      object cAliquota_Adicional04: TDBEdit
        Left = 449
        Top = 355
        Width = 49
        Height = 21
        DataField = 'Aliquota_Adicional04'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
        OnChange = cAliquota_Adicional04Change
      end
      object cAliquota_Adicional05: TDBEdit
        Left = 449
        Top = 378
        Width = 49
        Height = 21
        DataField = 'Aliquota_Adicional05'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
        OnChange = cAliquota_Adicional05Change
      end
      object StaticText10: TStaticText
        Left = 3
        Top = 424
        Width = 120
        Height = 34
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Totais  '
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
      object StaticText5: TStaticText
        Left = 3
        Top = 117
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modelo'
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
      object cProcesso: TDBLookupComboBox
        Left = 125
        Top = 140
        Width = 150
        Height = 21
        DataField = 'Processo'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Processo'
        ListField = 'Processo'
        ListSource = Dados.dsProcessosDOC
        NullValueKey = 46
        ParentFont = False
        TabOrder = 12
      end
      object cImposto06: TDBLookupComboBox
        Left = 125
        Top = 401
        Width = 322
        Height = 21
        DataField = 'Codigo_Adicional06'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownAlign = daRight
        DropDownRows = 10
        DropDownWidth = 440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsImpostos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 32
        OnClick = cImposto06Click
        OnExit = cImposto06Click
      end
      object cValor_Adicional06: TDBEdit
        Left = 500
        Top = 401
        Width = 91
        Height = 21
        DataField = 'Valor_Adicional06'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
      end
      object cAliquota_Adicional06: TDBEdit
        Left = 449
        Top = 401
        Width = 49
        Height = 21
        DataField = 'Aliquota_Adicional06'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
        OnChange = cAliquota_Adicional06Change
      end
      object StaticText7: TStaticText
        Left = 3
        Top = 25
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Refer'#234'ncia'
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
        OnClick = StaticText7Click
      end
      object StaticText2: TStaticText
        Left = 399
        Top = 117
        Width = 37
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'S'#233'rie'
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
      object cCentroCusto: TDBLookupComboBox
        Left = 125
        Top = 94
        Width = 271
        Height = 21
        DataField = 'Centro_Custo'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsCentroCusto
        NullValueKey = 46
        ParentFont = False
        TabOrder = 8
        OnClick = cFornecedorExit
        OnCloseUp = cFornecedorExit
        OnExit = cFornecedorExit
      end
      object lCentroCusto: TStaticText
        Left = 3
        Top = 94
        Width = 120
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
        TabOrder = 46
        Transparent = False
        StyleElements = []
        OnClick = lCentroCustoClick
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 125
        Top = 117
        Width = 246
        Height = 21
        DataField = 'Modelo'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmFiscal.dsModelosDocumentos
        ParentFont = False
        TabOrder = 9
        OnCloseUp = cFornecedorExit
        OnEnter = cFornecedorExit
        OnExit = cFornecedorExit
      end
      object DBEdit1: TDBEdit
        Left = 125
        Top = 71
        Width = 60
        Height = 21
        DataField = 'Natureza_Codigo'
        DataSource = dmFiscal.dsNotasTerceiros
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText3: TStaticText
        Left = 3
        Top = 71
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Natureza da Opera'#231#227'o'
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
        OnClick = lNomeClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 187
        Top = 71
        Width = 404
        Height = 21
        DataField = 'Natureza_Codigo'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownWidth = 500
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao_NF'
        ListSource = Dados.dsNatureza
        ParentFont = False
        TabOrder = 7
        OnClick = cFornecedorExit
        OnCloseUp = cFornecedorExit
        OnExit = cFornecedorExit
      end
      object StaticText6: TStaticText
        Left = 3
        Top = 240
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota do ISS'
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
      object DBEdit2: TDBEdit
        Left = 125
        Top = 240
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_ISS'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnExit = cValorExit
      end
      object StaticText12: TStaticText
        Left = 3
        Top = 263
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o de Servi'#231'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 49
        Transparent = False
        StyleElements = []
      end
      object cClass: TDBLookupComboBox
        Left = 125
        Top = 263
        Width = 466
        Height = 21
        DataField = 'Classificacao_Servico'
        DataSource = dmFiscal.dsNotasTerceiros
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsServicosClass
        ParentFont = False
        TabOrder = 16
        OnClick = cFornecedorExit
        OnCloseUp = cFornecedorExit
        OnExit = cFornecedorExit
      end
      object StaticText13: TStaticText
        Left = 400
        Top = 2
        Width = 69
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Data Entrada'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 50
        Transparent = False
        StyleElements = []
      end
      object cDataEntrada: TDBDateEdit
        Left = 471
        Top = 2
        Width = 120
        Height = 21
        DataField = 'Data_Entrada'
        DataSource = dmFiscal.dsNotasTerceiros
        CheckOnExit = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
        TabOrder = 3
        YearDigits = dyFour
      end
      object cReferencia: TRxDBLookupCombo
        Left = 125
        Top = 25
        Width = 467
        Height = 21
        DropDownCount = 20
        DisplayAllFields = True
        DataField = 'Referencia_Fiscal'
        DataSource = dmFiscal.dsNotasTerceiros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Servico;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsReferenciasFiscais
        ParentFont = False
        TabOrder = 4
      end
      object DBCheckBox1: TDBCheckBox
        Left = 196
        Top = 242
        Width = 116
        Height = 17
        Caption = 'Reten'#231#227'o de ISS'
        DataField = 'Retencao_ISS'
        DataSource = dmFiscal.dsNotasTerceiros
        TabOrder = 51
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Itens'
      ImageIndex = 2
      object GradeItens: TRxDBGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 463
        Align = alClient
        DataSource = dmFiscal.dsNotasTerceirosItens
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        RowColor2 = 16776176
        ShowGlyphs = False
        Columns = <
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
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 339
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Liquido'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Filtros'
      ImageIndex = 1
      object bFiltrar: TSpeedButton
        Left = 205
        Top = 285
        Width = 100
        Height = 65
        Cursor = crHandPoint
        Hint = '  Limpar os filtros atuais  '
        Caption = 'Filt&rar'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000103
          0700010307000305090001030700010307000103070001020700000206000002
          060077797B0077797B0077797B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000203080004050A0003040900EDDB
          DB00F3E5E500F8EFEF00FAF5F500FEFCFC00FFFFFF00FFFFFF00F9F3F400F0DF
          E10000020600000206000000010077797B0077797B0077797B00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000305090003050900E0C1C200E5CBCC00EAD3D400EDDB
          DB00F3E6E600F8EFEE00FAF5F500FDFCFC00FFFFFF00FFFFFF00F9F3F300EFE1
          E000E6CECF00DCBABB00D2A7A900000001000101010077797B0077797B007779
          7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0002040800D8AFB000DCB9BA00E0C1C300E5CBCC00EAD3D400EDDB
          DB00F4E6E600F8EFEF00FAF5F500FEFCFC00FFFFFF00FFFFFF00F9F4F400F0E1
          E100E7CECF00DDBBBC00D3A7A900CD9B9C00CC9999000000000076787B007678
          790076787A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0003050A00D3A8AA00D7AFB100DDB9BB00E1C2C300E6CBCC00EAD3D400EDDB
          DB00F4E6E600F7EEEE00FAF6F500FEFDFD00FFFFFF00FFFFFF00F9F3F400F0E1
          E100E7CECF00DDBBBC00D5A9AB00CD9B9D00CC999A00CC999900000000007577
          79007476780074767700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000304
          0900CFA1A300D4A9AB00D7B0B100DCBABB00E1C3C400E6CCCC00EAD3D5000608
          0D00090B100007090E0006080D0008090E0005070C0004050A0003050A000304
          0900E8CFD000DEBCBD00D4A9AB00CD9B9D00CC9A9B00CC999900CC9999000000
          0000737577007275760072747500FFFFFF00FFFFFF00FFFFFF0005060B00CE9D
          9F00D0A1A300D4ABAC00D9B2B400DDBABC00080B1100080A10000A0C1200EBEC
          EB00E5E6E600DFE0E000DBDCDD00D6D7D700D0D1D400CCCCCE00C6C7C800C2C3
          C40006070C000305090003040900CD9B9D00CD9B9D00CC999A00CC999900CC99
          9900000000007173740071727400FFFFFF00FFFFFF00FFFFFF0006080D00D09F
          A100D1A3A400D4AAAC00090C1200090B1200F7F8F800F4F5F500EEEFEF00EAEB
          EB00E6E8E800E1E0E100DCDDDD00D7D7D800D0D1D200CCCDCE00C8C8CA00C2C3
          C400BDBEC000B8B9B900B1B2B3000103080001030700CD9A9C00CC999900CC99
          9900000000006F7072006F7072006E707100FFFFFF00FFFFFF0004060C00D0A0
          A200D5A6A800070A1000FFFFFF00FEFFFF00F7F8F800F4F5F5000D0F1B000F11
          1D000F111D000D0F19000F101700090A100007090E00080A0F000A0B10000708
          0D00BEBEC000B6B8B800B2B2B300ACAEAE00A8A9AB0001030700CC999900CC99
          9900000000006D6F70006C6E70006C6D6F00FFFFFF00FFFFFF0007090F00CF9F
          A200090C1200FFFFFF00FFFFFF00FEFFFE00101221000E102100D1A3A900D3A6
          AC00D3A4AA00D2A4AA00D2A2A800CE9EA200CF9FA200CF9FA200D09FA100CE9D
          A00005060B0004050A0003050900ADAEAF00A8A9AB00A4A4A70000000100CC99
          9900000000006C6D6E006A6C6D006A6B6D006A6B6C00FFFFFF00080B1100090B
          1200FFFFFF00FFFFFF00FFFFFF0011132400EDA6AD00EBA5AE00EBA8B500ECA9
          B600EDA8B500ECA7B000EAA2A900E9A0A700E8A1A500E89FA200E89EA100E79C
          9F00E79C9F00E69C9E00E69C9E0002040900A8A9AB00A5A6A700A1A2A3000101
          010001010100696A6C00696A6B00686A6B0068696A00FFFFFF000D0F1500FFFF
          FF00FFFFFF00FFFFFF0015172600D9B1B900FFA8B500FFABC300FFACC200FFAC
          C200FFACC200FFABC200FFA4B100FFA4AC00FFA0A600FF9EA200FF9DA000FF9D
          9F00FF9C9F00FF9D9F00FF9D9F00FF9C9F0004060A00A5A6A700A1A2A3009C9C
          9C000000000068686A0067686A006768690065676800FFFFFF0011131A00FFFF
          FF00FFFFFF00181A2500FFA8AF00FFABB900E2C0D300FFB0C600FFB2C700FFB3
          C700FFB1C600FFA8BE00FFA9C100FFA2B100FF9FA800FF9FA400FF9EA100FF9F
          A200FF9EA100FF9D9F00FF9D9F00D4AAAC006A322B00010308009FA1A2009C9B
          9C0000000000656667006566670065656700FFFFFF00FFFFFF000C0F1500FFFF
          FF00FFFFFF001C1E2D00FFACB500FFB3C700FFB3C500F0CFDF00F3D5E400FFE5
          EF00FFBDD400FFAFC700FFA7BD00FFA6BB00FFA2AB00FFA0A700FFA0A400FF9E
          A100FF9EA000D3A9AC00D3A9AB0070372F006A312A0002030800A0A1A2009C9B
          9B0000000000646466006364650063636500FFFFFF00FFFFFF00070A1000FFFF
          FF00FFFFFF0013152600FFAAB300FFAEC600FFB1C700FFC7DB00FFFFFF00FFFF
          FF00FFF0F700E4C4D900DCB5C800DAB5CA00D9B1B900D6AEB300D5ACAF00D5AB
          AC00D5ABAC0083463F007B3F3800733C35006E3D380009151C00A4A9AA009FA3
          A400071214006263640061626300FFFFFF00FFFFFF00FFFFFF00080B1100FFFF
          FF00FFFFFF00FFFFFF0016173100FFA8C000FFA9BE00FDB8D000FFF7FB00FFFF
          FF00F3D5E800DEA3C100CC88A200C17E9D00B56D7700AA636700A05C5B009653
          4F008C4D4800844943007D4A440077443D000E081200AAA6AB00A5A2A600A29C
          9F000E01070060626200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B0D
          1300FFFFFF00FFFFFF00FFFFFF0020256300FCA8BD00FFBDD300FFDEEC00FEDE
          EE00F0C5DD00DCA2C000CF88A300C27E9C00B6717900AB656900A05C59009552
          4E008D514D0084514D007F413E000D050E00ABA9AC00A4A5A7009FA1A2000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000C0E1600FFFFFF00FFFFFF00FFFFFF002C30650046477900605F9700F3B2
          CC00E7A8C300D58EA800CD84A000C27C9400B66E7500AB666800A15E5A009A5D
          590091575400130813000A060D00ADAEAE00A8A9AB00A3A5A60001010200FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0012141F00FFFFFF00FFFFFF00FFFFFF00FBFCFD00FCFCFD002E2F
          64003433650026265C0022235E00211D3300161C3400536B3A000B0E1600101D
          250017102200BABDC000B4B5BA00ACB2B400A8ADB100010C19005C5D5E005C5D
          5D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00171927001A1C2F00FCFDFD00FBFCFD00F8F9FA00F2F3
          F600EBEDF200E7E8ED00E0E0E200D9D9DB00D3D4D600CECFD100CACCCE00C5C7
          CB00BFC2C800B9BFC400B4BBC1000517210003130F009AA19F00010F07005A5A
          5B00595A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181A2A001A1C310018193200EEEF
          F000E8E9EC00E4E5E700DEDFE100D6D7D900D2D3D500D0D1D200CBCDCF00DAE2
          D700BDC5C90005182E00031D2B00CACFD000B0B4B2009C9F9E009B9D9C000C1A
          11005758580056585700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001011
          2100111222001213210014151F000D0E1700090A10000D171E0016101B000F13
          240006172700FFFFFF00F7F9F800DBDEDE00C2C2C300A7A7A7009A9B9A001A21
          1C0006150C005555560054555500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0005152600FFFFFF00EDEFEF00D2D2D300B8B7B8003F403F002A30
          2D0014201A00030B13005353530052525300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0004141000030C0B0002040200010201004E514F003A40
          3C0024302A000E181F00000000005150510050505000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0003110A007A7D7B00727673005F6460004A53
          4E00343E3E001E252A000B0A0A00000000004F4E4F004F4F4E00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00010F070078807C006D7671005961
          6100434A50002E2F2E001919190006060600000000004D4D4D00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00010A1200787D8100696D
          7000545354003E3E3E0029292A00131413000303020000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007475
          7400636464004E4D4E0039393900232324000F0F0E0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000717171005E5F5E0048494800343434001E1F1E000A0A0A00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000006D6D6D0059595800434343002F2F2F0019191900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = bFiltrarClick
      end
      object bLimpar: TSpeedButton
        Left = 309
        Top = 285
        Width = 100
        Height = 65
        Cursor = crHandPoint
        Hint = '  Limpar os filtros atuais  '
        Caption = 'Limpar Fil&tros'
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
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = bLimparClick
      end
      object Panel3: TPanel
        Left = 5
        Top = 116
        Width = 586
        Height = 157
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object StaticText17: TStaticText
          Left = 10
          Top = 10
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nota Inicial'
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
        object cFiltraNotaIni: TCurrencyEdit
          Left = 132
          Top = 10
          Width = 121
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
        object StaticText27: TStaticText
          Left = 256
          Top = 10
          Width = 40
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Final'
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
        object cFiltraNotaFim: TCurrencyEdit
          Left = 298
          Top = 10
          Width = 121
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
          TabOrder = 3
        end
        object StaticText28: TStaticText
          Left = 10
          Top = 33
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Emiss'#227'o Inicial'
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
        object cFiltraEmiIni: TDateEdit
          Left = 132
          Top = 33
          Width = 121
          Height = 21
          CheckOnExit = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
          YearDigits = dyFour
          TabOrder = 5
        end
        object StaticText30: TStaticText
          Left = 256
          Top = 33
          Width = 40
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Final'
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
        object cFiltraEmiFim: TDateEdit
          Left = 298
          Top = 33
          Width = 121
          Height = 21
          CheckOnExit = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
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
          YearDigits = dyFour
          TabOrder = 7
        end
        object StaticText33: TStaticText
          Left = 10
          Top = 56
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Refer'#234'ncia Fiscal'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          Transparent = False
          StyleElements = []
        end
        object StaticText34: TStaticText
          Left = 10
          Top = 79
          Width = 120
          Height = 21
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
          TabOrder = 9
          Transparent = False
          StyleElements = []
        end
        object StaticText35: TStaticText
          Left = 10
          Top = 102
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Natureza da Opera'#231#227'o'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
          Transparent = False
          StyleElements = []
        end
        object StaticText36: TStaticText
          Left = 10
          Top = 125
          Width = 120
          Height = 21
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
          TabOrder = 11
          Transparent = False
          StyleElements = []
        end
        object cFiltraForn: TRxDBLookupCombo
          Left = 132
          Top = 79
          Width = 445
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsFornecedores
          ParentFont = False
          TabOrder = 12
        end
        object cFiltraRef: TRxDBLookupCombo
          Left = 132
          Top = 56
          Width = 445
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsReferenciasFiscais
          ParentFont = False
          TabOrder = 13
        end
        object cFiltraNat: TRxDBLookupCombo
          Left = 132
          Top = 102
          Width = 445
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo; Descricao_NF'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 14
        end
        object cFiltraProc: TEdit
          Left = 132
          Top = 125
          Width = 157
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
      end
    end
  end
  object tProvisao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM PagarReceber')
    Left = 356
    Top = 7
    object tProvisaoNumero: TLargeintField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object tLancamentos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM Lancamentos')
    FetchRows = 1
    Left = 423
    Top = 3
    object IntegerField1: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object tExiste: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 496
    Top = 4
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 557
    Top = 4
  end
end
