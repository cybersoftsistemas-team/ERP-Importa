object Utilitarios_ImportaEXCEL: TUtilitarios_ImportaEXCEL
  Left = 407
  Top = 177
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ImportaEXCEL'
  ClientHeight = 671
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 994
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 978
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 2
    Width = 199
    Height = 23
    Caption = 'IMPORTA'#199#195'O DE DADOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 8
    Top = 23
    Width = 336
    Height = 18
    Caption = 'Importa'#231#227'o de dados de planilhas do Microsoft EXCEL.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 641
    Width = 994
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object bSair: TButton
      Left = 923
      Top = 1
      Width = 70
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object blayout: TButton
      Left = 1
      Top = 1
      Width = 85
      Height = 28
      Align = alLeft
      Caption = '&Salvar Layout'
      TabOrder = 3
      OnClick = blayoutClick
    end
    object bImportar: TButton
      Left = 155
      Top = 1
      Width = 71
      Height = 28
      Hint = '  Importa o extrato do banco selecionado  '
      Align = alLeft
      Caption = '&Importar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImportarClick
    end
    object bVerificar: TButton
      Left = 86
      Top = 1
      Width = 69
      Height = 28
      Hint = '  Verifica se a planilha esta ok para importar.  '
      Align = alLeft
      Caption = '&Verificar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bVerificarClick
    end
  end
  object Grade: TStringGrid
    Left = 8
    Top = 184
    Width = 978
    Height = 125
    Color = 13602864
    ColCount = 2
    DefaultColWidth = 120
    DefaultRowHeight = 18
    FixedCols = 0
    FixedRows = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goAlwaysShowEditor, goThumbTracking]
    ParentFont = False
    TabOrder = 1
    OnDrawCell = GradeDrawCell
  end
  object cMsg: TMemo
    Left = 8
    Top = 490
    Width = 978
    Height = 120
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Grade2: TStringGrid
    Left = 8
    Top = 313
    Width = 978
    Height = 173
    ColCount = 2
    DefaultColWidth = 120
    DefaultRowHeight = 18
    FixedCols = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goAlwaysShowEditor, goThumbTracking]
    ParentFont = False
    TabOrder = 3
    OnDrawCell = Grade2DrawCell
  end
  object Progresso: TProgressBar
    Left = 594
    Top = 618
    Width = 289
    Height = 15
    TabOrder = 4
  end
  object cQtde: TStaticText
    Left = 8
    Top = 616
    Width = 110
    Height = 18
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Itens | 000000'
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
  object cImportados: TStaticText
    Left = 120
    Top = 616
    Width = 147
    Height = 18
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Processados | 000000'
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
  object cPerc: TStaticText
    Left = 889
    Top = 619
    Width = 42
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    Caption = '0%'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object cAdic: TStaticText
    Left = 269
    Top = 616
    Width = 147
    Height = 18
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Adicionados | 000000'
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
  object cModif: TStaticText
    Left = 418
    Top = 616
    Width = 147
    Height = 18
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Modificados | 000000'
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
  object Panel2: TPanel
    Left = 8
    Top = 84
    Width = 978
    Height = 97
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = True
    Enabled = False
    ParentCtl3D = False
    TabOrder = 10
    object StaticText4: TStaticText
      Left = 5
      Top = 4
      Width = 99
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Arquivo de Origem'
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
    object cArquivo: TFilenameEdit
      Left = 106
      Top = 4
      Width = 863
      Height = 21
      DefaultExt = '*.xlsx'
      FileEditStyle = fsComboBox
      Filter = 'Planilha do Microsoft Excel|*.xlsx;*.xls'
      FilterIndex = 0
      DialogOptions = [ofReadOnly, ofHideReadOnly]
      DialogTitle = 'Abrir Planilha'
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkCustom
      Glyph.Data = {
        CA050000424DCA05000000000000360000002800000016000000150000000100
        1800000000009405000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DFCDA0B78EE1E8
        DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFEDF1E9C1D0B596AF81658B4744721F295E0031640825
        5B00DAE3D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000C4D2B886A46E5880373B6B152E620533650A396A123E6D1841701C44721F
        44721F3D6E16678450748A6176955E76945E76945E76945E76945E75945D7391
        5BF5F7F4000060884036670E3F6E1942701D44721F44721F44721F44721F4472
        1F44721F44721F3B6D1288967CA0A49CCCD3C7C1CABAC8CFC2C8CFC3C8CFC3C7
        CEC18EA27D8BA47600006B904E3F6E1944721F44721F44721F44721F44721F44
        721F44721F44721F44721F3E6F16708660818E779BAF8CE3E4E39CAE8E9FB192
        99AC8BDADEDAB6C0AB8EA77A00006B904E3F6E1944721F44721F44721F44721F
        44721F44721F44721F44721F44721F457520264C051B4000144900CED4C91C4D
        00225300144700B0BEA6B6C0AC8FA77B00006B904E3F6E1944721F3B6B143869
        1144721F3F6E182B5F01396A1244721F44721F3D6E158695799EA39AC0CBB6E7
        E6E8C0C8B6C3CCBBBEC8B5E2E4E3B2BDA78FA77B00006B904E3F6E193A6B139A
        B287ABBF9A2E61045B843CFFFFFF81A0683D6C1644721F4575202B500B224605
        1D5000CBD2C72555002B5A071D4E00B3C0AAB6C0AC8FA77B00006B904E3F6E19
        3E6D18658B47FFFFFF36680FCDD9C4F8FAF72A5E0044721F44721F44731D3D5E
        213A58223D681CD1D6CD436B2449702A3C661CBCC7B7B5C0AB8FA77B00006B90
        4E3F6E1944721F2C6002DEE6D8C5D3BAFFFFFF658A463D6D1744721F44721F3E
        6F167B8E6D909989AFBEA3E4E3E4AEBCA3B2BEA8ACBAA0DDDFDCB2BDA78FA77B
        00006B904E3F6E1944721F3F6E194C7728FFFFFFDBE4D5275C0044721F44721F
        44721F457520264C051B4000144900CCD3C81C4E00235300144800B0BEA6B6C0
        AC8FA77B00006B904E3F6E1944721F37681097B083FFFFFFFFFFFF3768104270
        1C44721F44721F3E6F157C8E6E919A8AB0BFA5E4E4E4AFBCA4B3BFA9ADBBA1DE
        DFDDB2BDA78FA77B00006B904E3F6E1943711E2E6104FFFFFF77995DEBF0E8B6
        C7A733650A44721F44721F43731D4161263F5C28436D23D4D8D149702C4F7432
        426A23BFC9B9B5C0AB8FA77B00006B904E3F6E19396A12A6BB94FFFFFF2F6206
        799A5FFFFFFF4A762641701B44721F467520254C051A3F00124800CDD3C81B4D
        00215200124600B0BEA8B6C1AC8FA77B00006B904E3F6E1944721F33650B265C
        0042701D396A126389445D853E416F1B44721F3C6D13919E87ADAFACD5DAD1EA
        E9EAD2D7CFD6D9D3D2D7CEE9E7E9B1BDA68FA77B00006B904E3F6E1944721F44
        721F44721F44721F43711E3F6E19416F1B44721F44721F457520254C051A3F00
        134800CDD4C91B4D00215200134700B0BEA6B6C0AC8FA77B00006B904E3F6E19
        44721F44721F44721F44721F44721F44721F44721F44721F44721F3F7018637C
        506F8061849D6FDFE0DD859D7389A077829A6ED2D7D0B5BFAA8FA77A00006289
        43386911416F1B43711E44721F44721F44721F44721F44721F44721F44721F39
        6C1199A48FB7B6B8E7E8E7DBDDD9E3E3E3E3E3E3E3E3E3E1E2E1A1B19488A274
        0000B3C5A470935446732135660D2E610536670E3B6B153F6E1A43711E44721F
        44721F3F6F1952713755713E597E3C587D3B587D3B587D3B587D3B587C3B577C
        3BEBEFE80000FFFFFFFFFFFFFFFFFFFBFCFADCE4D5ABBF9A7F9E65557E333466
        0C2B5F0135660D275D00DDE6D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEFF3ECC2D1B689A673DEE5D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000}
      ButtonWidth = 30
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = ''
      OnChange = cArquivoChange
      OnClick = cArquivoChange
    end
    object cLinhaIni: TRxSpinEdit
      Left = 106
      Top = 72
      Width = 63
      Height = 21
      Alignment = taRightJustify
      Decimal = 0
      MaxValue = 10000.000000000000000000
      MinValue = 1.000000000000000000
      Value = 2.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10000
      ParentFont = False
      TabOrder = 2
      OnChange = cLinhaIniChange
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 72
      Width = 99
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Intervalo de Linhas'
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
    object StaticText2: TStaticText
      Left = 5
      Top = 27
      Width = 99
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
      TabOrder = 4
      Transparent = False
      StyleElements = []
    end
    object cFornecedor: TRxDBLookupCombo
      Left = 106
      Top = 27
      Width = 470
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Nome'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsFornecedores
      ParentFont = False
      TabOrder = 5
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 50
      Width = 99
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Per'#237'odo'
      Color = 7293440
      Enabled = False
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
    object cDataIni: TDateEdit
      Left = 106
      Top = 50
      Width = 107
      Height = 21
      CheckOnExit = True
      Enabled = False
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
    object cDataFim: TDateEdit
      Left = 222
      Top = 50
      Width = 109
      Height = 21
      CheckOnExit = True
      Enabled = False
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
      TabOrder = 8
    end
    object cApagar: TCheckBox
      Left = 335
      Top = 51
      Width = 241
      Height = 17
      Caption = 'Apagar os lan'#231'amentos existentes no per'#237'odo.'
      Enabled = False
      TabOrder = 9
      OnClick = cApagarClick
    end
    object cCodigo: TCheckBox
      Left = 734
      Top = 50
      Width = 235
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Utilizar c'#243'digo dos cadastros da planilha.'
      TabOrder = 10
    end
    object cDeletar: TCheckBox
      Left = 734
      Top = 33
      Width = 235
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Deletar todos os registro da tabela de destino.'
      TabOrder = 11
      OnClick = cDeletarClick
    end
    object cLinhaFim: TRxSpinEdit
      Left = 197
      Top = 72
      Width = 63
      Height = 21
      Alignment = taRightJustify
      Decimal = 0
      MaxValue = 10000.000000000000000000
      MinValue = 1.000000000000000000
      Value = 2.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10000
      ParentFont = False
      TabOrder = 12
      OnChange = cLinhaFimChange
    end
    object StaticText5: TStaticText
      Left = 171
      Top = 72
      Width = 24
      Height = 21
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'At'#233
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
    object cTitulo: TCheckBox
      Left = 734
      Top = 68
      Width = 235
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Titulos na Primeira Linha?'
      Checked = True
      State = cbChecked
      TabOrder = 14
    end
    object cVinculo: TRadioGroup
      Left = 583
      Top = 29
      Width = 140
      Height = 60
      Caption = 'Vincular Produtos'
      Color = clBtnFace
      Enabled = False
      Items.Strings = (
        'Por C'#243'digo Fabricante'
        'Por C'#243'digo SKU')
      ParentColor = False
      TabOrder = 15
    end
  end
  object cTabela: TComboBox
    Left = 366
    Top = 57
    Width = 363
    Height = 21
    DropDownCount = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnChange = cTabelaChange
    Items.Strings = (
      'Clientes'
      'Fornecedores'
      'Produtos'
      'Bancos'
      'Centro de Custos'
      'Plano de Contas'
      'Lan'#231'amentos'
      'Plano de Contas ECF'
      'Purchase Order (Itens)'
      'Saldo Abertura Estoque'
      'Historico Padr'#227'o'
      'Modalidades de Pagamento'
      'Titulo Financeiro'
      'Pedidos (E-Commerce)'
      'Classifica'#231#227'o Financeira'
      'Controle de Navios'
      'Declara'#231#227'o de Importa'#231#227'o (DI)'
      'Declara'#231#227'o de Importa'#231#227'o (Adi'#231#245'es da DI)'
      'Nota Fiscal Emiss'#227'o Pr'#243'pria(Capa)'
      'Nota Fiscal Emiss'#227'o Pr'#243'pria(Itens)'
      'Nota Fiscal Emiss'#227'o Terceiros(Capa)'
      'Nota Fiscal Emiss'#227'o Terceiros(Itens)'
      'Conhecimento de Embarque (BL)')
  end
  object StaticText6: TStaticText
    Left = 265
    Top = 57
    Width = 99
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tabela de Destino'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 12
    Transparent = False
    StyleElements = []
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 392
    Top = 1
  end
  object LayImp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutImportacao'
      
        '  (Tabela, LinhaIni, LinhaFim, Fornecedor, CodigoPlan, Titulo, A' +
        'pagar, DataIni, DataFim, Coluna, Campo)'
      'VALUES'
      
        '  (:Tabela, :LinhaIni, :LinhaFim, :Fornecedor, :CodigoPlan, :Tit' +
        'ulo, :Apagar, :DataIni, :DataFim, :Coluna, :Campo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutImportacao'
      'WHERE'
      '  Tabela = :Old_Tabela AND Coluna = :Old_Coluna')
    SQLUpdate.Strings = (
      'UPDATE LayoutImportacao'
      'SET'
      
        '  Tabela = :Tabela, LinhaIni = :LinhaIni, LinhaFim = :LinhaFim, ' +
        'Fornecedor = :Fornecedor, CodigoPlan = :CodigoPlan, Titulo = :Ti' +
        'tulo, Apagar = :Apagar, DataIni = :DataIni, DataFim = :DataFim, ' +
        'Coluna = :Coluna, Campo = :Campo'
      'WHERE'
      '  Tabela = :Old_Tabela AND Coluna = :Old_Coluna')
    SQLRefresh.Strings = (
      
        'SELECT LayoutImportacao.Tabela, LayoutImportacao.LinhaIni, Layou' +
        'tImportacao.LinhaFim, LayoutImportacao.Fornecedor, LayoutImporta' +
        'cao.CodigoPlan, LayoutImportacao.Titulo, LayoutImportacao.Apagar' +
        ', LayoutImportacao.DataIni, LayoutImportacao.DataFim, LayoutImpo' +
        'rtacao.Coluna, LayoutImportacao.Campo FROM LayoutImportacao'
      
        'WHERE LayoutImportacao.Tabela = :Tabela AND LayoutImportacao.Col' +
        'una = :Coluna ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM   LayoutImportacao')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 537
    Top = 1
  end
  object dsLayInp: TDataSource
    DataSet = LayImp
    Left = 584
    Top = 1
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 438
    Top = 2
  end
end
