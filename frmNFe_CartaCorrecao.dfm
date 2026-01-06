object NFe_CartaCorrecao: TNFe_CartaCorrecao
  Left = 449
  Top = 169
  BorderStyle = bsDialog
  Caption = 'Balue'
  ClientHeight = 607
  ClientWidth = 888
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
    Width = 888
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 92
    Height = 21
    Caption = 'NOTA FISCAL'
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
    Width = 181
    Height = 18
    Caption = 'Carta de Corre'#231#227'o Eletr'#244'nica.'
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
  object cTipo: TRadioGroup
    Left = 4
    Top = 48
    Width = 199
    Height = 42
    Caption = 'Tipo de Nota Fiscal'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Entrada'
      'Sa'#237'da')
    TabOrder = 0
    OnClick = cTipoClick
  end
  object cData: TDateEdit
    Left = 298
    Top = 59
    Width = 110
    Height = 21
    CheckOnExit = True
    DialogTitle = 'Selecione uma data'
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
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 578
    Width = 888
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      888
      29)
    object bSair: TButton
      Left = 823
      Top = 1
      Width = 64
      Height = 28
      Cursor = crHandPoint
      Hint = '  Fecha a janela atual e cancela os processos pendentes.  '
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
      Width = 208
      Height = 28
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      Left = 209
      Top = 1
      Width = 64
      Height = 28
      Caption = '&Pesquisar'
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bEnviar: TButton
      Left = 273
      Top = 1
      Width = 75
      Height = 28
      Caption = '&Enviar'
      TabOrder = 3
      OnClick = bEnviarClick
    end
    object bImprimirSel: TButton
      Left = 348
      Top = 1
      Width = 114
      Height = 28
      Caption = '&Imprimir Selecionada'
      TabOrder = 4
      OnClick = bImprimirSelClick
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 94
    Width = 881
    Height = 161
    DataSource = dmFiscal.dsNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    OnDrawColumnCell = GradeDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NFe_CNF'
        Title.Alignment = taCenter
        Title.Caption = 'Nota Fiscal'
        Width = 372
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DPEC'
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Complementar'
        Title.Alignment = taCenter
        Title.Caption = 'Compl.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Devolucao'
        Title.Alignment = taCenter
        Title.Caption = 'Devol.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cancelada'
        Title.Alignment = taCenter
        Title.Caption = 'Cancel.'
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Nfe_Denegada'
        Title.Alignment = taCenter
        Title.Caption = 'Deneg.'
        Width = 40
        Visible = True
      end>
  end
  object cCorrecao: TMemo
    Left = 98
    Top = 283
    Width = 786
    Height = 147
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object cAcentuacao: TCheckBox
    Left = 394
    Top = 261
    Width = 199
    Height = 17
    Caption = 'Texto da descri'#231#227'o com acentua'#231#227'o.'
    TabOrder = 5
  end
  object StaticText1: TStaticText
    Left = 626
    Top = 260
    Width = 204
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Corre'#231#245'es j'#225' realizadas para a nota fiscal'
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
  object StaticText2: TStaticText
    Left = 4
    Top = 260
    Width = 92
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data da Corre'#231#227'o'
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
  object StaticText4: TStaticText
    Left = 218
    Top = 260
    Width = 92
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Hora da Corre'#231#227'o'
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
  object cHoraCorrecao: TMaskEdit
    Left = 312
    Top = 260
    Width = 71
    Height = 21
    EditMask = '!99:99:99;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentFont = False
    TabOrder = 9
    Text = '  :  :  '
  end
  object cDataCorrecao: TDateEdit
    Left = 98
    Top = 260
    Width = 115
    Height = 21
    DialogTitle = 'Selecione uma data'
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
    TabOrder = 10
  end
  object StaticText3: TStaticText
    Left = 4
    Top = 283
    Width = 92
    Height = 147
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 
      '                                                                ' +
      '                                                                ' +
      '      Descri'#231#227'o'
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
  object cMensagens: TMemo
    Left = 111
    Top = 433
    Width = 772
    Height = 141
    BevelOuter = bvRaised
    Color = 16770790
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object Panel2: TPanel
    Left = 4
    Top = 433
    Width = 105
    Height = 142
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 13
  end
  object bFiltrar: TButton
    Left = 429
    Top = 52
    Width = 45
    Height = 37
    Caption = '&Filtrar'
    TabOrder = 14
    OnClick = bFiltrarClick
  end
  object StaticText5: TStaticText
    Left = 222
    Top = 59
    Width = 74
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
    TabOrder = 15
    Transparent = False
    StyleElements = []
  end
  object cNumeroCarta: TRxSpinEdit
    Left = 832
    Top = 260
    Width = 52
    Height = 21
    MaxValue = 20.000000000000000000
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 16
  end
  object SMTP: TIdSMTP
    IOHandler = SSLSocket
    AuthType = satNone
    Port = 465
    SASLMechanisms = <>
    UseTLS = utUseImplicitTLS
    Left = 324
    Top = 8
  end
  object EmailMSG: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 370
    Top = 8
  end
  object tCorrecao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero_Carta) FROM CartaCorrecao')
    FetchRows = 1
    DetailFields = 'Nota;Data'
    Left = 258
    Top = 7
  end
  object pCarta: TppDBPipeline
    DataSource = dmFiscal.dsCartaCorrecao
    UserName = 'pCarta'
    Left = 488
    Top = 8
    object pCartappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pCartappField2: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pCartappField3: TppField
      FieldAlias = 'Chave'
      FieldName = 'Chave'
      FieldLength = 44
      DisplayWidth = 44
      Position = 2
    end
    object pCartappField4: TppField
      FieldAlias = 'Acentuacao'
      FieldName = 'Acentuacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 3
    end
    object pCartappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Carta'
      FieldName = 'Numero_Carta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pCartappField6: TppField
      FieldAlias = 'Data_Carta'
      FieldName = 'Data_Carta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object pCartappField7: TppField
      FieldAlias = 'Protocolo'
      FieldName = 'Protocolo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object pCartappField8: TppField
      FieldAlias = 'Data_Protocolo'
      FieldName = 'Data_Protocolo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object pCartappField9: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object ppEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'Empresas'
    Left = 544
    Top = 8
    object ppEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 0
    end
    object ppEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 40
      Position = 1
    end
    object ppEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object ppEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object ppEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object ppEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object ppEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object ppEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object ppEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object ppEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object ppEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object ppEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object ppEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object ppEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object ppEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object ppEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object ppEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object ppEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object ppEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object ppEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object ppEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 39
    end
    object ppEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object ppEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object ppEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object ppEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object ppEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object ppEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object ppEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object ppEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object ppEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object ppEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object ppEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object ppEmpresasppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object ppEmpresasppField57: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object ppEmpresasppField58: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object ppEmpresasppField59: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 58
    end
    object ppEmpresasppField60: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 59
    end
    object ppEmpresasppField61: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 60
    end
    object ppEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object ppEmpresasppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppEmpresasppField64: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object ppEmpresasppField65: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 64
    end
    object ppEmpresasppField66: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object ppEmpresasppField67: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object ppEmpresasppField68: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 67
    end
    object ppEmpresasppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 68
    end
    object ppEmpresasppField70: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField71: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 70
    end
    object ppEmpresasppField72: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 71
    end
    object ppEmpresasppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 72
    end
    object ppEmpresasppField74: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 73
    end
    object ppEmpresasppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 74
    end
    object ppEmpresasppField76: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 75
    end
    object ppEmpresasppField77: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 76
    end
    object ppEmpresasppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppEmpresasppField79: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 78
    end
    object ppEmpresasppField80: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 79
    end
    object ppEmpresasppField81: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 80
    end
    object ppEmpresasppField82: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 81
    end
    object ppEmpresasppField83: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField84: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object ppEmpresasppField86: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 85
    end
    object ppEmpresasppField87: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 86
    end
    object ppEmpresasppField88: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 87
    end
    object ppEmpresasppField89: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object ppEmpresasppField90: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 89
    end
    object ppEmpresasppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 90
    end
    object ppEmpresasppField92: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField93: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 92
    end
    object ppEmpresasppField94: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 93
    end
    object ppEmpresasppField95: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object ppEmpresasppField96: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 95
    end
    object ppEmpresasppField97: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 96
    end
    object ppEmpresasppField98: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 98
    end
    object ppEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 99
    end
    object ppEmpresasppField101: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 100
    end
    object ppEmpresasppField102: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object ppEmpresasppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 102
    end
    object ppEmpresasppField104: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object ppEmpresasppField105: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 104
    end
    object ppEmpresasppField106: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object ppEmpresasppField107: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 106
    end
    object ppEmpresasppField108: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 107
    end
    object ppEmpresasppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object ppEmpresasppField110: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 109
    end
    object ppEmpresasppField111: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 110
    end
    object ppEmpresasppField112: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 111
    end
    object ppEmpresasppField113: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 112
    end
    object ppEmpresasppField114: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 113
    end
    object ppEmpresasppField115: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object ppEmpresasppField116: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 115
    end
    object ppEmpresasppField117: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 116
    end
    object ppEmpresasppField118: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object ppEmpresasppField119: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object ppEmpresasppField120: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 119
    end
    object ppEmpresasppField121: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 120
    end
    object ppEmpresasppField122: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 121
    end
    object ppEmpresasppField123: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 122
    end
    object ppEmpresasppField124: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 123
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField125: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 124
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField126: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object ppEmpresasppField127: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 126
    end
  end
  object rCartaCorrecao: TppReport
    AutoStop = False
    DataPipeline = pCarta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Carta de Corre'#231#227'o'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\CartaCorrecao.rt' +
      'm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rCartaCorrecaoBeforePrint
    CachePages = True
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.Author = 'Cybersoft ERP Importa'
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
    PDFSettings.Title = 'Carta de Corre'#231#227'o'
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
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 736
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pCarta'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 248444
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5292
        mmLeft = 0
        mmTop = 60061
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'Razao_Social'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 5292
        mmLeft = 26194
        mmTop = 0
        mmWidth = 171186
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CARTA DE CORRE'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 0
        mmTop = 37042
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object lCidade: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Curitiba - PR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 8996
        mmWidth = 171186
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Destinat'#225'rio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 0
        mmTop = 68792
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'CNPJ'
        DataPipeline = ppEmpresas
        DisplayFormat = '99.999.999/9999-99;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3969
        mmLeft = 33602
        mmTop = 12700
        mmWidth = 163777
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lCEP1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 12965
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object lTipo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTipo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Nota Fiscal de Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4572
        mmLeft = 0
        mmTop = 44186
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Destinatario_Nome'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 4498
        mmLeft = 23548
        mmTop = 68792
        mmWidth = 174361
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 0
        mmTop = 72761
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Destinatario_CNPJ_CPF'
        DataPipeline = pNotas
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 4572
        mmLeft = 21960
        mmTop = 72761
        mmWidth = 31623
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5292
        mmLeft = 0
        mmTop = 55033
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'NFe_CNF'
        DataPipeline = pNotas
        DisplayFormat = '##.##.##.##.##.###.###/####-##-###.#########-###.###.###-#;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 3344
        mmLeft = 11642
        mmTop = 55827
        mmWidth = 82286
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'NFE N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1059
        mmTop = 55827
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'S'#201'RIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 96044
        mmTop = 55827
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'NFEletronica_Serie'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3440
        mmLeft = 105569
        mmTop = 55827
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 114829
        mmTop = 55827
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Data_Emissao'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 3344
        mmLeft = 129382
        mmTop = 55827
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'PROCESSO N'#186' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 148696
        mmTop = 55827
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 3344
        mmLeft = 169334
        mmTop = 55827
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 10848
        mmTop = 55033
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 94986
        mmTop = 55033
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 104775
        mmTop = 55033
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 113506
        mmTop = 55033
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 128059
        mmTop = 55033
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 147373
        mmTop = 55033
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 168275
        mmTop = 55033
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 
          '          Em face do que determina a legisla'#231#227'o fiscal vigente, ' +
          'vimos pela presente comunicar-lhe(s) que a nota fiscal de refer'#234 +
          'ncia cont'#233'm a(s) irregularidade(s) que abaixo apontamos, cuja co' +
          'rre'#231#227'o solicitamos seja feita.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 794
        mmTop = 84931
        mmWidth = 195527
        BandType = 0
        LayerName = Foreground
      end
      object lTexto: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'lTexto'
        Border.mmPadding = 0
        Caption = 'lTexto'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 84402
        mmLeft = 794
        mmTop = 99219
        mmWidth = 195792
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 
          '          Para evitar-se qualquer san'#231#227'o fiscal, solicitamos acu' +
          'sarem o recebimento desta, na c'#243'pia que acompanha, devendo a via' +
          ' de V.S.(as) ficar arquivada juntamente com a nota fiscal em que' +
          'st'#227'o.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 13229
        mmLeft = 794
        mmTop = 189442
        mmWidth = 195527
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = '          Atenciosamente,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 211667
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 229659
        mmWidth = 94721
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'Razao_Social'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 229923
        mmWidth = 95250
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'CNPJ'
        DataPipeline = ppEmpresas
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 4233
        mmLeft = 17992
        mmTop = 233892
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'CNPJ: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 233892
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 98425
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 183886
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object lEndereco: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lCEP2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rua Marechal Deodoro, n'#186' 857 - CEP: 80100-100'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 5292
        mmWidth = 171186
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Protocolo'
        DataPipeline = pCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pCarta'
        mmHeight = 3344
        mmLeft = 21960
        mmTop = 60854
        mmWidth = 39952
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'PROTOCOLO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3344
        mmLeft = 1059
        mmTop = 60854
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        Border.mmPadding = 0
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 63765
        mmTop = 60854
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 20373
        mmTop = 60061
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 62706
        mmTop = 60061
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 76994
        mmTop = 60061
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Data_Carta'
        DataPipeline = pCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pCarta'
        mmHeight = 3344
        mmLeft = 78317
        mmTop = 60854
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5292
        mmLeft = 102659
        mmTop = 60061
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'iLogo1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16669
        mmLeft = 0
        mmTop = 0
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Visible = False
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197909
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 24553
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 27781
        mmTop = 0
        mmWidth = 2117
        BandType = 8
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
  object pMunicipios: TppDBPipeline
    DataSource = Dados.dsMunicipios
    UserName = 'pMunicipios'
    Left = 608
    Top = 8
    object pMunicipiosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pMunicipiosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pMunicipiosppField3: TppField
      FieldAlias = 'Nome'
      FieldName = 'Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
  end
  object pNotas: TppDBPipeline
    DataSource = dmFiscal.dsNotas
    UserName = 'pNotas'
    Left = 664
    Top = 8
    object pNotasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pNotasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido'
      FieldName = 'Pedido'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pNotasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saida_Entrada'
      FieldName = 'Saida_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pNotasppField4: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object pNotasppField5: TppField
      FieldAlias = 'Data_EntradaSaida'
      FieldName = 'Data_EntradaSaida'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object pNotasppField6: TppField
      FieldAlias = 'Hora_EntradaSaida'
      FieldName = 'Hora_EntradaSaida'
      FieldLength = 5
      DisplayWidth = 5
      Position = 5
    end
    object pNotasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Nota'
      FieldName = 'Tipo_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object pNotasppField8: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object pNotasppField9: TppField
      FieldAlias = 'FUNDAP'
      FieldName = 'FUNDAP'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 8
    end
    object pNotasppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Lucro'
      FieldName = 'Lucro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object pNotasppField11: TppField
      FieldAlias = 'DI'
      FieldName = 'DI'
      FieldLength = 15
      DisplayWidth = 15
      Position = 10
    end
    object pNotasppField12: TppField
      FieldAlias = 'Data_DI'
      FieldName = 'Data_DI'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object pNotasppField13: TppField
      FieldAlias = 'Inscricao_Substituto'
      FieldName = 'Inscricao_Substituto'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object pNotasppField14: TppField
      FieldAlias = 'Inf_Complementares'
      FieldName = 'Inf_Complementares'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pNotasppField15: TppField
      FieldAlias = 'Natureza_Codigo'
      FieldName = 'Natureza_Codigo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 14
    end
    object pNotasppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cliente_Codigo'
      FieldName = 'Cliente_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object pNotasppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fornecedor_Codigo'
      FieldName = 'Fornecedor_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object pNotasppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Transportador_Codigo'
      FieldName = 'Transportador_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object pNotasppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volume_Quantidade'
      FieldName = 'Volume_Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object pNotasppField20: TppField
      FieldAlias = 'Volume_Especie'
      FieldName = 'Volume_Especie'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object pNotasppField21: TppField
      FieldAlias = 'Volume_Marca'
      FieldName = 'Volume_Marca'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object pNotasppField22: TppField
      FieldAlias = 'Volume_Numero'
      FieldName = 'Volume_Numero'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object pNotasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volume_PesoLiquido'
      FieldName = 'Volume_PesoLiquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object pNotasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volume_PesoBruto'
      FieldName = 'Volume_PesoBruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object pNotasppField25: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 24
    end
    object pNotasppField26: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object pNotasppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSOper'
      FieldName = 'Aliquota_ICMSOper'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object pNotasppField28: TppField
      FieldAlias = 'BCICMS'
      FieldName = 'BCICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object pNotasppField29: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 28
    end
    object pNotasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSSub'
      FieldName = 'Aliquota_ICMSSub'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object pNotasppField31: TppField
      FieldAlias = 'BCICMS_Substitutivo'
      FieldName = 'BCICMS_Substitutivo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 30
    end
    object pNotasppField32: TppField
      FieldAlias = 'ValorICMS_Substitutivo'
      FieldName = 'ValorICMS_Substitutivo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 31
    end
    object pNotasppField33: TppField
      FieldAlias = 'Valor_TotalProdutos'
      FieldName = 'Valor_TotalProdutos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 32
    end
    object pNotasppField34: TppField
      FieldAlias = 'Total_Frete'
      FieldName = 'Total_Frete'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 33
    end
    object pNotasppField35: TppField
      FieldAlias = 'Valor_Seguro'
      FieldName = 'Valor_Seguro'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 34
    end
    object pNotasppField36: TppField
      FieldAlias = 'Valor_OutrasDespesas'
      FieldName = 'Valor_OutrasDespesas'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 35
    end
    object pNotasppField37: TppField
      FieldAlias = 'BCIPI'
      FieldName = 'BCIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 36
    end
    object pNotasppField38: TppField
      FieldAlias = 'Valor_TotalIPI'
      FieldName = 'Valor_TotalIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 37
    end
    object pNotasppField39: TppField
      FieldAlias = 'Valor_TotalNota'
      FieldName = 'Valor_TotalNota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 38
    end
    object pNotasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rateio_Despesas'
      FieldName = 'Rateio_Despesas'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object pNotasppField41: TppField
      FieldAlias = 'Valor_TotalMVA'
      FieldName = 'Valor_TotalMVA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 40
    end
    object pNotasppField42: TppField
      FieldAlias = 'Valor_ICMSReducao'
      FieldName = 'Valor_ICMSReducao'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 41
    end
    object pNotasppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_Percentual'
      FieldName = 'Desconto_Percentual'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object pNotasppField44: TppField
      FieldAlias = 'Desconto_Tipo'
      FieldName = 'Desconto_Tipo'
      FieldLength = 30
      DisplayWidth = 30
      Position = 43
    end
    object pNotasppField45: TppField
      FieldAlias = 'Total_Descontos'
      FieldName = 'Total_Descontos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 44
    end
    object pNotasppField46: TppField
      FieldAlias = 'Cancelada'
      FieldName = 'Cancelada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 2
      Position = 45
    end
    object pNotasppField47: TppField
      FieldAlias = 'Complementar'
      FieldName = 'Complementar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 2
      Position = 46
    end
    object pNotasppField48: TppField
      FieldAlias = 'Devolucao'
      FieldName = 'Devolucao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 2
      Position = 47
    end
    object pNotasppField49: TppField
      FieldAlias = 'Motivo_Cancelamento'
      FieldName = 'Motivo_Cancelamento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 48
    end
    object pNotasppField50: TppField
      FieldAlias = 'Serie'
      FieldName = 'Serie'
      FieldLength = 2
      DisplayWidth = 2
      Position = 49
    end
    object pNotasppField51: TppField
      FieldAlias = 'Modelo'
      FieldName = 'Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 50
    end
    object pNotasppField52: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 51
    end
    object pNotasppField53: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 52
    end
    object pNotasppField54: TppField
      FieldAlias = 'Fornecedor_Nome'
      FieldName = 'Fornecedor_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 53
    end
    object pNotasppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Referencia'
      FieldName = 'Nota_Referencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
    object pNotasppField56: TppField
      FieldAlias = 'Data_Referencia'
      FieldName = 'Data_Referencia'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 55
    end
    object pNotasppField57: TppField
      FieldAlias = 'NFe_CNF'
      FieldName = 'NFe_CNF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 56
    end
    object pNotasppField58: TppField
      FieldAlias = 'Nfe_CNFRef'
      FieldName = 'Nfe_CNFRef'
      FieldLength = 50
      DisplayWidth = 50
      Position = 57
    end
    object pNotasppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'Modalidade_Pgto'
      FieldName = 'Modalidade_Pgto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
    object pNotasppField60: TppField
      FieldAlias = 'Ajuste'
      FieldName = 'Ajuste'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 59
    end
    object pNotasppField61: TppField
      FieldAlias = 'Valor_TotalII'
      FieldName = 'Valor_TotalII'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 60
    end
    object pNotasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'NFe_Lote'
      FieldName = 'NFe_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 61
    end
    object pNotasppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Modalidade_Frete'
      FieldName = 'Modalidade_Frete'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object pNotasppField64: TppField
      FieldAlias = 'Transportador_Nome'
      FieldName = 'Transportador_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 63
    end
    object pNotasppField65: TppField
      FieldAlias = 'NFe_Recibo'
      FieldName = 'NFe_Recibo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 64
    end
    object pNotasppField66: TppField
      FieldAlias = 'NFe_Protocolo'
      FieldName = 'NFe_Protocolo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 65
    end
    object pNotasppField67: TppField
      FieldAlias = 'Nfe_DataRecibo'
      FieldName = 'Nfe_DataRecibo'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 66
    end
    object pNotasppField68: TppField
      FieldAlias = 'NFe_DataProtocolo'
      FieldName = 'NFe_DataProtocolo'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 67
    end
    object pNotasppField69: TppField
      FieldAlias = 'Imprimir_DANFE'
      FieldName = 'Imprimir_DANFE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 68
    end
    object pNotasppField70: TppField
      FieldAlias = 'DPEC'
      FieldName = 'DPEC'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 2
      Position = 69
    end
    object pNotasppField71: TppField
      FieldAlias = 'Operacao_Veiculo'
      FieldName = 'Operacao_Veiculo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 70
    end
    object pNotasppField72: TppField
      FieldAlias = 'Nfe_Denegada'
      FieldName = 'Nfe_Denegada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 2
      Position = 71
    end
    object pNotasppField73: TppField
      FieldAlias = 'Transporte_Placa'
      FieldName = 'Transporte_Placa'
      FieldLength = 10
      DisplayWidth = 10
      Position = 72
    end
    object pNotasppField74: TppField
      FieldAlias = 'Transporte_PlacaUF'
      FieldName = 'Transporte_PlacaUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 73
    end
    object pNotasppField75: TppField
      FieldAlias = 'Transporte_CodigoANTT'
      FieldName = 'Transporte_CodigoANTT'
      FieldLength = 15
      DisplayWidth = 15
      Position = 74
    end
    object pNotasppField76: TppField
      FieldAlias = 'Transporte_RGMotorista'
      FieldName = 'Transporte_RGMotorista'
      FieldLength = 20
      DisplayWidth = 20
      Position = 75
    end
    object pNotasppField77: TppField
      FieldAlias = 'Transporte_NomeMotorista'
      FieldName = 'Transporte_NomeMotorista'
      FieldLength = 40
      DisplayWidth = 40
      Position = 76
    end
    object pNotasppField78: TppField
      FieldAlias = 'Lucro_Valor'
      FieldName = 'Lucro_Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 77
    end
    object pNotasppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_Cambio'
      FieldName = 'Taxa_Cambio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 78
    end
    object pNotasppField80: TppField
      FieldAlias = 'Valor_IsentasICMS'
      FieldName = 'Valor_IsentasICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 79
    end
    object pNotasppField81: TppField
      FieldAlias = 'Valor_OutrasICMS'
      FieldName = 'Valor_OutrasICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 80
    end
    object pNotasppField82: TppField
      FieldAlias = 'Valor_IsentasIPI'
      FieldName = 'Valor_IsentasIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 81
    end
    object pNotasppField83: TppField
      FieldAlias = 'Valor_OutrasIPI'
      FieldName = 'Valor_OutrasIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 82
    end
    object pNotasppField84: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 15
      DisplayWidth = 15
      Position = 83
    end
    object pNotasppField85: TppField
      FieldAlias = 'Saida_EntradaNome'
      FieldName = 'Saida_EntradaNome'
      FieldLength = 7
      DisplayWidth = 7
      Position = 84
    end
    object pNotasppField86: TppField
      FieldAlias = 'DPEC_Protocolo'
      FieldName = 'DPEC_Protocolo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 85
    end
    object pNotasppField87: TppField
      FieldAlias = 'DPEC_DataProtocolo'
      FieldName = 'DPEC_DataProtocolo'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pNotasppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante'
      FieldName = 'Representante'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 87
    end
    object pNotasppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Comissao'
      FieldName = 'Representante_Comissao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 88
    end
    object pNotasppField90: TppField
      FieldAlias = 'Importacao'
      FieldName = 'Importacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 89
    end
    object pNotasppField91: TppField
      FieldAlias = 'Data_Cancelamento'
      FieldName = 'Data_Cancelamento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 90
    end
    object pNotasppField92: TppField
      FieldAlias = 'Protocolo_Cancelamento'
      FieldName = 'Protocolo_Cancelamento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 91
    end
    object pNotasppField93: TppField
      FieldAlias = 'Calcula_Volumes'
      FieldName = 'Calcula_Volumes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 92
    end
    object pNotasppField94: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_BCMVA'
      FieldName = 'Valor_BCMVA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 93
    end
    object pNotasppField95: TppField
      FieldAlias = 'Destinatario_CNPJ_CPF'
      FieldName = 'Destinatario_CNPJ_CPF'
      FieldLength = 14
      DisplayWidth = 14
      Position = 94
    end
    object pNotasppField96: TppField
      FieldAlias = 'Destinatario_Nome'
      FieldName = 'Destinatario_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 95
    end
    object pNotasppField97: TppField
      FieldAlias = 'Destinatario_Rua'
      FieldName = 'Destinatario_Rua'
      FieldLength = 40
      DisplayWidth = 40
      Position = 96
    end
    object pNotasppField98: TppField
      FieldAlias = 'Destinatario_RuaNumero'
      FieldName = 'Destinatario_RuaNumero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 97
    end
    object pNotasppField99: TppField
      FieldAlias = 'Destinatario_Bairro'
      FieldName = 'Destinatario_Bairro'
      FieldLength = 40
      DisplayWidth = 40
      Position = 98
    end
    object pNotasppField100: TppField
      FieldAlias = 'Destinatario_Estado'
      FieldName = 'Destinatario_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 99
    end
    object pNotasppField101: TppField
      FieldAlias = 'Destinatario_Telefone1'
      FieldName = 'Destinatario_Telefone1'
      FieldLength = 15
      DisplayWidth = 15
      Position = 100
    end
    object pNotasppField102: TppField
      FieldAlias = 'Destinatario_CEP'
      FieldName = 'Destinatario_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 101
    end
    object pNotasppField103: TppField
      FieldAlias = 'Destinatario_IE'
      FieldName = 'Destinatario_IE'
      FieldLength = 18
      DisplayWidth = 18
      Position = 102
    end
    object pNotasppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'Destinatario_Municipio'
      FieldName = 'Destinatario_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 103
    end
    object pNotasppField105: TppField
      FieldAlias = 'Destinatario_Complemento'
      FieldName = 'Destinatario_Complemento'
      FieldLength = 20
      DisplayWidth = 20
      Position = 104
    end
    object pNotasppField106: TppField
      FieldAlias = 'Destinatario_Juridica'
      FieldName = 'Destinatario_Juridica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pNotasppField107: TppField
      FieldAlias = 'Valor_DUMPING'
      FieldName = 'Valor_DUMPING'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 106
    end
    object pNotasppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 107
    end
    object pNotasppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_ICMSOper'
      FieldName = 'Reducao_ICMSOper'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 108
    end
    object pNotasppField110: TppField
      FieldAlias = 'Apuracao_PISCOFINS'
      FieldName = 'Apuracao_PISCOFINS'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 109
    end
    object pNotasppField111: TppField
      FieldAlias = 'Inf_Complementares2'
      FieldName = 'Inf_Complementares2'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 110
      Searchable = False
      Sortable = False
    end
    object pNotasppField112: TppField
      FieldAlias = 'Destinatario_Pais'
      FieldName = 'Destinatario_Pais'
      FieldLength = 4
      DisplayWidth = 4
      Position = 111
    end
    object pNotasppField113: TppField
      FieldAlias = 'BCICMS_Apuracao'
      FieldName = 'BCICMS_Apuracao'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 112
    end
    object pNotasppField114: TppField
      FieldAlias = 'Valor_ICMSApuracao'
      FieldName = 'Valor_ICMSApuracao'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 113
    end
    object pNotasppField115: TppField
      FieldAlias = 'Media_BCR'
      FieldName = 'Media_BCR'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 114
    end
    object pNotasppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_PIS2'
      FieldName = 'Valor_PIS2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 115
    end
    object pNotasppField117: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_COFINS2'
      FieldName = 'Valor_COFINS2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 116
    end
    object pNotasppField118: TppField
      FieldAlias = 'Baixa_Estoque'
      FieldName = 'Baixa_Estoque'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pNotasppField119: TppField
      FieldAlias = 'Valor_DespesasOutros'
      FieldName = 'Valor_DespesasOutros'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 118
    end
    object pNotasppField120: TppField
      FieldAlias = 'Destinatario_MunicipioNome'
      FieldName = 'Destinatario_MunicipioNome'
      FieldLength = 40
      DisplayWidth = 40
      Position = 119
    end
    object pNotasppField121: TppField
      FieldAlias = 'ICMS_Destacar'
      FieldName = 'ICMS_Destacar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pNotasppField122: TppField
      FieldAlias = 'Valor_BCPIS'
      FieldName = 'Valor_BCPIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 121
    end
    object pNotasppField123: TppField
      FieldAlias = 'Total_Impostos'
      FieldName = 'Total_Impostos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 122
    end
    object pNotasppField124: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_IRPJ'
      FieldName = 'Aliquota_IRPJ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 123
    end
    object pNotasppField125: TppField
      FieldAlias = 'Valor_IRPJ'
      FieldName = 'Valor_IRPJ'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 124
    end
    object pNotasppField126: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_CSLL'
      FieldName = 'Aliquota_CSLL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 125
    end
    object pNotasppField127: TppField
      FieldAlias = 'Valor_CSLL'
      FieldName = 'Valor_CSLL'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 126
    end
    object pNotasppField128: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao'
      FieldName = 'Comissao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 127
    end
    object pNotasppField129: TppField
      FieldAlias = 'Comissao_Valor'
      FieldName = 'Comissao_Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 128
    end
    object pNotasppField130: TppField
      FieldAlias = 'Pedido_Representante'
      FieldName = 'Pedido_Representante'
      FieldLength = 10
      DisplayWidth = 10
      Position = 129
    end
    object pNotasppField131: TppField
      FieldAlias = 'Manifesto_Protocolo'
      FieldName = 'Manifesto_Protocolo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 130
    end
    object pNotasppField132: TppField
      FieldAlias = 'Manifesto_DataProtocolo'
      FieldName = 'Manifesto_DataProtocolo'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 131
    end
    object pNotasppField133: TppField
      Alignment = taRightJustify
      FieldAlias = 'Manifesto_Motivo'
      FieldName = 'Manifesto_Motivo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 132
    end
    object pNotasppField134: TppField
      FieldAlias = 'Manifesto_Justificativa'
      FieldName = 'Manifesto_Justificativa'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 133
      Searchable = False
      Sortable = False
    end
    object pNotasppField135: TppField
      FieldAlias = 'Natureza_Correcao'
      FieldName = 'Natureza_Correcao'
      FieldLength = 4
      DisplayWidth = 4
      Position = 134
    end
    object pNotasppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Atendente'
      FieldName = 'Atendente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pNotasppField137: TppField
      Alignment = taRightJustify
      FieldAlias = 'Atendente_Comissao'
      FieldName = 'Atendente_Comissao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 136
    end
    object pNotasppField138: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Inventario'
      FieldName = 'Valor_Inventario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 137
    end
    object pNotasppField139: TppField
      Alignment = taRightJustify
      FieldAlias = 'Indicador_Presenca'
      FieldName = 'Indicador_Presenca'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 138
    end
    object pNotasppField140: TppField
      FieldAlias = 'Veiculo_Restricao'
      FieldName = 'Veiculo_Restricao'
      FieldLength = 1
      DisplayWidth = 1
      Position = 139
    end
    object pNotasppField141: TppField
      FieldAlias = 'Ratear_Despesa'
      FieldName = 'Ratear_Despesa'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 140
    end
    object pNotasppField142: TppField
      FieldAlias = 'NFE_Estorno'
      FieldName = 'NFE_Estorno'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 141
    end
    object pNotasppField143: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_ComissaoGer'
      FieldName = 'Representante_ComissaoGer'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 142
    end
    object pNotasppField144: TppField
      FieldAlias = 'Vendedor'
      FieldName = 'Vendedor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 143
    end
    object pNotasppField145: TppField
      FieldAlias = 'FCP_ICMSDest'
      FieldName = 'FCP_ICMSDest'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 144
    end
    object pNotasppField146: TppField
      FieldAlias = 'Valor_BCICMSDest'
      FieldName = 'Valor_BCICMSDest'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 145
    end
    object pNotasppField147: TppField
      FieldAlias = 'Valor_ICMSDest'
      FieldName = 'Valor_ICMSDest'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 146
    end
    object pNotasppField148: TppField
      FieldAlias = 'DIFAL_Valor'
      FieldName = 'DIFAL_Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 147
    end
    object pNotasppField149: TppField
      FieldAlias = 'DIFAL_ValorOrig'
      FieldName = 'DIFAL_ValorOrig'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 148
    end
    object pNotasppField150: TppField
      FieldAlias = 'DIFAL_ValorDest'
      FieldName = 'DIFAL_ValorDest'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 149
    end
    object pNotasppField151: TppField
      FieldAlias = 'FCP_ValorDest'
      FieldName = 'FCP_ValorDest'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 150
    end
    object pNotasppField152: TppField
      FieldAlias = 'FCP_ICMSORIG'
      FieldName = 'FCP_ICMSORIG'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 151
    end
    object pNotasppField153: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIFAL_AliqInterna'
      FieldName = 'DIFAL_AliqInterna'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 152
    end
    object pNotasppField154: TppField
      FieldAlias = 'Valor_BCFCPST'
      FieldName = 'Valor_BCFCPST'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 153
    end
    object pNotasppField155: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_FCPST'
      FieldName = 'Aliquota_FCPST'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 154
    end
    object pNotasppField156: TppField
      FieldAlias = 'Valor_FCPST'
      FieldName = 'Valor_FCPST'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 155
    end
    object pNotasppField157: TppField
      FieldAlias = 'Valor_BCFCP'
      FieldName = 'Valor_BCFCP'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 156
    end
    object pNotasppField158: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_FCP'
      FieldName = 'Aliquota_FCP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 157
    end
    object pNotasppField159: TppField
      FieldAlias = 'Valor_FCP'
      FieldName = 'Valor_FCP'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 158
    end
    object pNotasppField160: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Pagamento'
      FieldName = 'Tipo_Pagamento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 159
    end
    object pNotasppField161: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Pagamento'
      FieldName = 'Forma_Pagamento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 160
    end
    object pNotasppField162: TppField
      FieldAlias = 'Valor_ICMSDesonerado'
      FieldName = 'Valor_ICMSDesonerado'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 161
    end
    object pNotasppField163: TppField
      FieldAlias = 'Lote'
      FieldName = 'Lote'
      FieldLength = 15
      DisplayWidth = 15
      Position = 162
    end
    object pNotasppField164: TppField
      FieldAlias = 'Reboque_Placa'
      FieldName = 'Reboque_Placa'
      FieldLength = 10
      DisplayWidth = 10
      Position = 163
    end
    object pNotasppField165: TppField
      FieldAlias = 'Reboque_UF'
      FieldName = 'Reboque_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 164
    end
    object pNotasppField166: TppField
      FieldAlias = 'Reboque_ANTT'
      FieldName = 'Reboque_ANTT'
      FieldLength = 15
      DisplayWidth = 15
      Position = 165
    end
    object pNotasppField167: TppField
      FieldAlias = 'Entrega_Retirada'
      FieldName = 'Entrega_Retirada'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pNotasppField168: TppField
      FieldAlias = 'Valor_CIF'
      FieldName = 'Valor_CIF'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 167
    end
    object pNotasppField169: TppField
      FieldAlias = 'CTE'
      FieldName = 'CTE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 168
    end
    object pNotasppField170: TppField
      FieldAlias = 'Tipo_Processo'
      FieldName = 'Tipo_Processo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 169
    end
    object pNotasppField171: TppField
      FieldAlias = 'Valor_AFRMM'
      FieldName = 'Valor_AFRMM'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 170
    end
    object pNotasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Indicador_Intermediario'
      FieldName = 'Indicador_Intermediario'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pNotasppField173: TppField
      FieldAlias = 'Descricao_Forma'
      FieldName = 'Descricao_Forma'
      FieldLength = 60
      DisplayWidth = 60
      Position = 172
    end
    object pNotasppField174: TppField
      Alignment = taRightJustify
      FieldAlias = 'Intermediador'
      FieldName = 'Intermediador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 173
    end
    object pNotasppField175: TppField
      FieldAlias = 'Envio_Armazem'
      FieldName = 'Envio_Armazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 174
    end
    object pNotasppField176: TppField
      FieldAlias = 'Cancelada_ForaPrazo'
      FieldName = 'Cancelada_ForaPrazo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 175
    end
    object pNotasppField177: TppField
      FieldAlias = 'Valor_BCDIFAL'
      FieldName = 'Valor_BCDIFAL'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 176
    end
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':465'
    MaxLineAction = maException
    Port = 465
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 424
    Top = 8
  end
end
