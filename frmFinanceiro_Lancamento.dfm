object Financeiro_Lancamento: TFinanceiro_Lancamento
  Left = 407
  Top = 179
  BorderStyle = bsDialog
  Caption = 'Financeiro_Lancamento'
  ClientHeight = 803
  ClientWidth = 855
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 855
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = 8
    ExplicitTop = 71
    ExplicitWidth = 720
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
    Width = 154
    Height = 18
    Caption = 'Contas a Pagar/Receber.'
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
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 849
    Height = 712
    Margins.Bottom = 10
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabHeight = 28
    TabOrder = 1
    TabWidth = 160
    object TabSheet1: TTabSheet
      Caption = 'T'#237'tulo Financeiro'
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 835
        Height = 668
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object lPercentualDesc: TLabel
          Left = 253
          Top = 353
          Width = 45
          Height = 13
          Caption = '000,00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lPercentualJuros: TLabel
          Left = 253
          Top = 329
          Width = 45
          Height = 13
          Caption = '000,00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lPercentualMulta: TLabel
          Left = 253
          Top = 306
          Width = 45
          Height = 13
          Caption = '000,00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lPercentualParcela: TLabel
          Left = 253
          Top = 260
          Width = 45
          Height = 13
          Caption = '000,00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object bPesqCla: TSpeedButton
          Left = 809
          Top = 25
          Width = 23
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
            B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
            1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
            BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
            BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
          OnClick = bPesqClaClick
        end
        object bPesqBanco: TSpeedButton
          Left = 645
          Top = 439
          Width = 23
          Height = 24
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
            B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
            1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
            BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
            BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
          OnClick = bPesqBancoClick
        end
        object bPesqNav: TSpeedButton
          Left = 809
          Top = 72
          Width = 22
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
            B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
            1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
            BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
            BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
          OnClick = bPesqNavClick
        end
        object lPercentualBaixa: TLabel
          Left = 253
          Top = 284
          Width = 45
          Height = 13
          Caption = '000,00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object cObservacao: TDBMemo
          Left = 120
          Top = 487
          Width = 715
          Height = 43
          DataField = 'Observacao'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
        end
        object lObservacao: TStaticText
          Left = 5
          Top = 487
          Width = 113
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
          TabOrder = 36
          Transparent = False
          StyleElements = []
        end
        object lValorMulta: TStaticText
          Left = 5
          Top = 303
          Width = 113
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
          TabOrder = 37
          Transparent = False
          StyleElements = []
        end
        object cMulta: TDBEdit
          Left = 120
          Top = 303
          Width = 129
          Height = 21
          DataField = 'Multa'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          OnChange = cMultaChange
          OnExit = cMultaExit
        end
        object lValorJuros: TStaticText
          Left = 5
          Top = 326
          Width = 113
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
          TabOrder = 38
          Transparent = False
          StyleElements = []
        end
        object cJuros: TDBEdit
          Left = 120
          Top = 326
          Width = 129
          Height = 21
          DataField = 'Juros'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          OnChange = cJurosChange
          OnExit = cJurosExit
        end
        object lValorDesconto: TStaticText
          Left = 5
          Top = 349
          Width = 113
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
          TabOrder = 39
          Transparent = False
          StyleElements = []
        end
        object cDesconto: TDBEdit
          Left = 120
          Top = 349
          Width = 129
          Height = 21
          DataField = 'Desconto'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          OnChange = cDescontoChange
          OnExit = cDescontoExit
        end
        object cValorTotal: TDBEdit
          Left = 120
          Top = 395
          Width = 129
          Height = 21
          TabStop = False
          Color = 16764108
          DataField = 'Valor_Total'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 27
        end
        object lValorTotal: TStaticText
          Left = 5
          Top = 395
          Width = 113
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
          TabOrder = 40
          Transparent = False
          StyleElements = []
        end
        object lClassificacao: TStaticText
          Left = 5
          Top = 27
          Width = 113
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
          TabOrder = 41
          Transparent = False
          StyleElements = []
          OnClick = lClassificacaoClick
        end
        object lBeneficiario: TStaticText
          Left = 5
          Top = 165
          Width = 113
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
          TabOrder = 42
          Transparent = False
          StyleElements = []
          OnClick = lBeneficiarioClick
        end
        object lVencimento: TStaticText
          Left = 5
          Top = 234
          Width = 113
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
          TabOrder = 43
          Transparent = False
          StyleElements = []
        end
        object cNumeroDOC: TDBEdit
          Left = 576
          Top = 119
          Width = 159
          Height = 21
          DataField = 'Numero_Documento'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnExit = cNumeroDOCExit
        end
        object lProcesso: TStaticText
          Left = 5
          Top = 73
          Width = 113
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
          TabOrder = 44
          Transparent = False
          StyleElements = []
        end
        object lDataProvisao: TStaticText
          Left = 392
          Top = 119
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
          TabOrder = 45
          Transparent = False
          StyleElements = []
        end
        object lDocumento: TStaticText
          Left = 5
          Top = 119
          Width = 113
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
          TabOrder = 46
          Transparent = False
          StyleElements = []
          OnClick = lDocumentoClick
        end
        object lNumeroDOC: TStaticText
          Left = 551
          Top = 119
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
          TabOrder = 47
          Transparent = False
          StyleElements = []
        end
        object lDataPrevisao: TStaticText
          Left = 5
          Top = 96
          Width = 113
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
          TabOrder = 48
          Transparent = False
          StyleElements = []
        end
        object cProcesso: TDBLookupComboBox
          Left = 120
          Top = 73
          Width = 153
          Height = 21
          DataField = 'Processo'
          DataSource = Dados.dsPagarReceber
          DropDownRows = 20
          DropDownWidth = 430
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Processo'
          ListField = 'Processo;Navio_Nome;Numero_Declaracao'
          ListSource = dstProcessos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
          OnClick = cProcessoClick
        end
        object cDataPrevisao: TDBDateEdit
          Left = 120
          Top = 96
          Width = 153
          Height = 21
          DataField = 'Data_Previsao'
          DataSource = Dados.dsPagarReceber
          CheckOnExit = True
          DialogTitle = 'Data'
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
          PopupAlign = epaLeft
          TabOrder = 5
        end
        object cDataDoc: TDBDateEdit
          Left = 423
          Top = 119
          Width = 117
          Height = 21
          DataField = 'Data_Documento'
          DataSource = Dados.dsPagarReceber
          CheckOnExit = True
          DialogTitle = 'Data'
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
          PopupAlign = epaLeft
          TabOrder = 10
          OnEnter = cDataDocEnter
          OnExit = cDataDocExit
        end
        object cVencimento: TDBDateEdit
          Left = 120
          Top = 234
          Width = 129
          Height = 21
          DataField = 'Data_Vencimento'
          DataSource = Dados.dsPagarReceber
          CheckOnExit = True
          DialogTitle = 'Data'
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
          PopupAlign = epaLeft
          TabOrder = 20
        end
        object cBeneficiario: TDBLookupComboBox
          Left = 120
          Top = 165
          Width = 619
          Height = 21
          DataSource = Dados.dsPagarReceber
          DropDownRows = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListFieldIndex = 1
          NullValueKey = 46
          ParentFont = False
          TabOrder = 16
          OnClick = cBeneficiarioClick
          OnExit = cBeneficiarioExit
        end
        object cDocumento: TDBLookupComboBox
          Left = 120
          Top = 119
          Width = 265
          Height = 21
          DataField = 'Documento'
          DataSource = Dados.dsPagarReceber
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = Dados.dsTiposDocumentos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 9
          OnClick = cDocumentoExit
          OnExit = cDocumentoExit
        end
        object bDadosBancarios: TButton
          Left = 741
          Top = 163
          Width = 85
          Height = 24
          Caption = 'Dados Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 49
          OnClick = bDadosBancariosClick
        end
        object lModalidade: TStaticText
          Left = 5
          Top = 211
          Width = 113
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
          TabOrder = 50
          Transparent = False
          StyleElements = []
          OnClick = lModalidadeClick
        end
        object cModalidade: TDBLookupComboBox
          Left = 120
          Top = 211
          Width = 619
          Height = 21
          DataField = 'Modalidade_Pgto'
          DataSource = Dados.dsPagarReceber
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsModalidadesPgto
          NullValueKey = 46
          ParentFont = False
          TabOrder = 19
          OnClick = cModalidadeClick
          OnExit = cModalidadeExit
        end
        object bParcelas: TButton
          Left = 741
          Top = 210
          Width = 85
          Height = 24
          Caption = '&Parcelas'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 51
          OnClick = bParcelasClick
        end
        object StaticText2: TStaticText
          Left = 5
          Top = 50
          Width = 113
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
          TabOrder = 52
          Transparent = False
          StyleElements = []
          OnClick = StaticText2Click
        end
        object StaticText4: TStaticText
          Left = 251
          Top = 395
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
          TabOrder = 53
          Transparent = False
          StyleElements = []
        end
        object cTotalBaixas: TCurrencyEdit
          Left = 299
          Top = 395
          Width = 120
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object cSaldo: TCurrencyEdit
          Left = 460
          Top = 395
          Width = 119
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
        end
        object StaticText5: TStaticText
          Left = 422
          Top = 395
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
          TabOrder = 54
          Transparent = False
          StyleElements = []
        end
        object lAdiantamento: TStaticText
          Left = 5
          Top = 188
          Width = 113
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
          TabOrder = 55
          Transparent = False
          StyleElements = []
        end
        object cNumeroForma: TDBEdit
          Left = 728
          Top = 464
          Width = 106
          Height = 21
          Color = 12697856
          DataField = 'Numero_FormaTipo'
          DataSource = Dados.dsPagarReceber
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
        end
        object lNumeroForma: TStaticText
          Left = 669
          Top = 464
          Width = 59
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
          TabOrder = 56
          Transparent = False
          StyleElements = []
        end
        object lBanco: TStaticText
          Left = 5
          Top = 441
          Width = 113
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
          TabOrder = 57
          Transparent = False
          StyleElements = []
          OnClick = lBancoClick
        end
        object lForma: TStaticText
          Left = 5
          Top = 464
          Width = 113
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
          TabOrder = 58
          Transparent = False
          StyleElements = []
        end
        object cFormaPagamento: TDBComboBox
          Left = 120
          Top = 464
          Width = 525
          Height = 21
          Color = 12697856
          DataField = 'Forma_Tipo'
          DataSource = Dados.dsPagarReceber
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'BOLETO BANC'#193'RIO'
            'CART'#195'O DE CR'#201'DITO'
            'CART'#195'O DE D'#201'BITO'
            'CHEQUE'
            'CR'#201'DITO EM CONTA'
            'D'#201'BITO EM CONTA'
            'DEPOSITO'
            'DINHEIRO'
            'DOC'
            'PIX'
            'TED'
            'TED CIP'
            'TED RISCO SACADO'
            'TRANSFER'#202'NCIA ON-LINE')
          ParentFont = False
          TabOrder = 33
        end
        object cGrade: TDBGrid
          Left = 5
          Top = 550
          Width = 830
          Height = 93
          DataSource = dstAdiantamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 59
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = cGradeDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Numero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 63
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Baixado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Baixado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data_Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Beneficiario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Benefici'#225'rio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 459
              Visible = True
            end>
        end
        object StaticText3: TStaticText
          Left = 5
          Top = 532
          Width = 830
          Height = 18
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Adiantamentos efetuados/ Recebidos '
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 60
          Transparent = False
          StyleElements = []
        end
        object StaticText6: TStaticText
          Left = 281
          Top = 645
          Width = 138
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Adiantamentos Efetuados '
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 61
          Transparent = False
          StyleElements = []
        end
        object cAdEfe: TCurrencyEdit
          Left = 421
          Top = 645
          Width = 135
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 62
        end
        object lValorParcela: TStaticText
          Left = 5
          Top = 257
          Width = 113
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
          TabOrder = 63
          Transparent = False
          StyleElements = []
        end
        object cValorParcela: TDBEdit
          Left = 120
          Top = 257
          Width = 129
          Height = 21
          DataField = 'Valor_Parcela'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          OnChange = cValorParcelaChange
          OnExit = cValorParcelaExit
        end
        object cNFRef: TDBEdit
          Left = 355
          Top = 96
          Width = 101
          Height = 21
          DataField = 'Fiscal'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Visible = False
        end
        object lNFRef: TStaticText
          Left = 278
          Top = 96
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'NF.Refer'#234'ncia'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 64
          Transparent = False
          Visible = False
          StyleElements = []
        end
        object cClassificacao: TRxDBLookupCombo
          Left = 120
          Top = 27
          Width = 689
          Height = 21
          DropDownCount = 30
          DisplayAllFields = True
          DataField = 'Classificacao'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao; Tipo'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 1
          OnChange = cClassificacaoChange
          OnExit = cClassificacaoExit
        end
        object cCentroCusto: TRxDBLookupCombo
          Left = 120
          Top = 50
          Width = 714
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Centro_Custo'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsCentroCusto
          ParentFont = False
          TabOrder = 2
          OnChange = cCentroCustoExit
          OnExit = cCentroCustoExit
        end
        object cBanco: TRxDBLookupCombo
          Left = 120
          Top = 441
          Width = 525
          Height = 21
          DropDownCount = 25
          DisplayAllFields = True
          Color = 12697856
          DataField = 'Banco'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome;Conta'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsBancos
          ParentFont = False
          TabOrder = 31
        end
        object DBCheckBox1: TDBCheckBox
          Left = 739
          Top = 121
          Width = 89
          Height = 17
          Caption = '&Doc.Provis'#243'rio'
          DataField = 'Provisorio'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object cDataBaixa: TDateEdit
          Left = 728
          Top = 441
          Width = 107
          Height = 21
          CheckOnExit = True
          Color = 12697856
          DialogTitle = 'Selecione a Data'
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
          TabOrder = 32
        end
        object lDataBaixa: TStaticText
          Left = 669
          Top = 441
          Width = 59
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Baixa'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 65
          Transparent = False
          StyleElements = []
        end
        object cDataRef: TDateEdit
          Left = 458
          Top = 96
          Width = 129
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
          Visible = False
          OnExit = cDataRefExit
        end
        object StaticText1: TStaticText
          Left = 5
          Top = 372
          Width = 113
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Desconto (Dupl)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 66
          Transparent = False
          StyleElements = []
        end
        object DBEdit1: TDBEdit
          Left = 120
          Top = 372
          Width = 129
          Height = 21
          DataField = 'Desconto_Liquidacao'
          DataSource = Dados.dsPagarReceber
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          OnChange = cDescontoChange
          OnExit = cDescontoExit
        end
        object DBCheckBox2: TDBCheckBox
          Left = 739
          Top = 99
          Width = 85
          Height = 17
          Caption = '&Recuper'#225'vel'
          DataField = 'Recuperavel'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object StaticText7: TStaticText
          Left = 5
          Top = 645
          Width = 138
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Adiantamentos Recebidos '
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 67
          Transparent = False
          StyleElements = []
        end
        object cAdRec: TCurrencyEdit
          Left = 145
          Top = 645
          Width = 135
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 68
        end
        object cNumeroAdiant: TDBLookupComboBox
          Left = 120
          Top = 188
          Width = 619
          Height = 21
          DataField = 'Adiantamento_Numero'
          DataSource = Dados.dsPagarReceber
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Adiantamento_Numero'
          ListField = 'CNPJ;Adiantamento_Numero;Beneficiario'
          ListFieldIndex = 2
          ListSource = dstBeneAdiant
          NullValueKey = 46
          ParentFont = False
          TabOrder = 17
          OnClick = cNumeroAdiantClick
          OnExit = cNumeroAdiantExit
        end
        object DBCheckBox4: TDBCheckBox
          Left = 741
          Top = 190
          Width = 86
          Height = 17
          Caption = 'Permuta Rec.'
          DataField = 'Permuta_Recebimento'
          DataSource = Dados.dsPagarReceber
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object StaticText8: TStaticText
          Left = 278
          Top = 73
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Navio'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 69
          Transparent = False
          StyleElements = []
        end
        object cNavio: TDBLookupComboBox
          Left = 355
          Top = 73
          Width = 452
          Height = 21
          DataField = 'Navio'
          DataSource = Dados.dsPagarReceber
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Ordem'
          ListField = 'Navio'
          ListSource = dsNavios
          ParentFont = False
          TabOrder = 4
        end
        object StaticText9: TStaticText
          Left = 5
          Top = 418
          Width = 113
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo de Barras'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 70
          Transparent = False
          StyleElements = []
        end
        object cCodBarras: TDBEdit
          Left = 120
          Top = 418
          Width = 417
          Height = 21
          DataField = 'Codigo_Barras'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object StaticText10: TStaticText
          Left = 5
          Top = 4
          Width = 113
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Filial'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 71
          Transparent = False
          StyleElements = []
          OnClick = lClassificacaoClick
        end
        object cFilial: TRxDBLookupCombo
          Left = 120
          Top = 4
          Width = 249
          Height = 21
          DropDownCount = 20
          DisplayAllFields = True
          DataField = 'Filial'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Filial'
          LookupDisplay = 'Nome;Estado;CNPJ'
          LookupSource = dsFiliais
          ParentFont = False
          TabOrder = 0
        end
        object lValorDocumento: TStaticText
          Left = 5
          Top = 142
          Width = 113
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
          TabOrder = 72
          Transparent = False
          StyleElements = []
        end
        object cValorDocumento: TDBEdit
          Left = 120
          Top = 142
          Width = 129
          Height = 21
          DataField = 'Valor_Documento'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnChange = cValorDocumentoChange
          OnEnter = cValorDocumentoEnter
          OnExit = cValorDocumentoChange
        end
        object DBCheckBox3: TDBCheckBox
          Left = 255
          Top = 237
          Width = 106
          Height = 17
          Caption = 'Pago Pelo Cliente'
          DataField = 'Pago_Cliente'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 73
        end
        object StaticText11: TStaticText
          Left = 253
          Top = 142
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Taxa (ME)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 74
          Transparent = False
          StyleElements = []
        end
        object cTaxa: TDBEdit
          Left = 307
          Top = 142
          Width = 82
          Height = 21
          DataField = 'Taxa_ME'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnChange = cValorDocumentoChange
          OnEnter = cValorDocumentoEnter
          OnExit = cValorDocumentoChange
        end
        object cValorME: TDBEdit
          Left = 446
          Top = 142
          Width = 134
          Height = 21
          DataField = 'Valor_ME'
          DataSource = Dados.dsPagarReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object StaticText12: TStaticText
          Left = 392
          Top = 142
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor (ME)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 75
          Transparent = False
          StyleElements = []
        end
        object cSaldoDoc: TCurrencyEdit
          Left = 581
          Top = 395
          Width = 119
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 76
        end
        object StaticText13: TStaticText
          Left = 5
          Top = 280
          Width = 113
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Baixa Autom'#225'tica'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 77
          Transparent = False
          StyleElements = []
        end
        object cValorBaixa: TCurrencyEdit
          Left = 120
          Top = 280
          Width = 129
          Height = 21
          DisplayFormat = ',##0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          OnChange = cValorBaixaChange
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Documentos Anexados'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 642
        Width = 841
        Height = 32
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object bDocumento: TBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 106
          Height = 28
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Adicionar &DOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            AA030000424DAA03000000000000360000002800000011000000110000000100
            1800000000007403000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000001722002D
            4401010100000000000000000000000000000000000000000000000000000000
            000000000000000000001A2700628F01B0F30083C917100C4545440000000000
            00000000000000000000000000000000000000000000000000000058850BA7EE
            2CC0FF29BDFF0F6694231A167777764A4A4A0000000000000000000000000000
            00000000000000000037530085C500AFFF1FB5FF58BBFF2AB0FE365C6E423934
            4545458F8F8F4B4B4B0000000000000000000000000000273B0087C700B2FF00
            B3FF08ACFF40B6FF4EBBFF09A9FE386378473B35454443868686494949000000
            0000000000000000537E00A4EC00B7FF00AAFF04AAFF2AB1FF62C1FF50C4FF00
            7BBC767B7C4345462F33361A1A1A0000000000000000000000203100AAF900B2
            FF00A8FF19AFFF3EB5FF59BEFF6EC7FF49C5FF036AA0B9A89F4D6978000F2000
            00000000000000000000000000385500B9FF0EACFF28B1FF3CB5FF5BBEFF70C8
            FF6AC4FF2CBDFF006AA5B9A8A046637100325600000000000000000000000000
            005F9026BBFF4BB9FF52BBFF5EC0FF6DC7FF6CC6FF5BBEFF2BC2FF0068A6B3A6
            9E7C888D003C63000609000000000000000000000094E048C1FF6FC7FF6AC6FF
            71C8FF65C4FF4EC2FF39C0FF099AE41B597DD8D0CCD4CAC500426800314D0000
            000000000000375321B5FA5EC2FF76C9FF70CBFF56C6FF32B3FA1081BF006192
            435D6EC1BBB8FFFFFFCCC4C0004770003553000000000000000045694FCBFF6F
            CAFF4AC6FF22A1E5035C8C2443507D8588C0B4AFF6F0ECFFFFFFFFFFFFD2C1B8
            004A750070AB000102000001010186CA33CAFF1FA6E9005E8E486472A8A09BD3
            CBC7FFFFFFFFFFFFFFFFFFEDE3DE8F888730546A0085CA008AD0000102000003
            040073AD003C5727414FB6ABA5F0E9E5FFFFFFFFFFFFE8E0DBC0B9B5566F7C26
            5C790067A50091E000A8FE004D740000000000000000000000000048413DFFFF
            FFFFFFFFEAE2DD888687215A7C005A8C003E66003E640086CA0080C1004A6F00
            0D1300000000000000000000000000515151F1F1F1898481204C670066A4005C
            9000273C00000000000000000100010100000000000000000000000000000000
            0000001C1C1C1C1C1C0000000021370026390000000000000000000000000000
            0000000000000000000000000000}
          ParentFont = False
          TabOrder = 0
          OnClick = bDocumentoClick
        end
        object bRemoveDoc: TBitBtn
          AlignWithMargins = True
          Left = 110
          Top = 2
          Width = 105
          Height = 28
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = '&Remover DOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            AA030000424DAA03000000000000360000002800000011000000110000000100
            1800000000007403000000000000000000000000000000000000A84BA7813880
            662D656D356C6C346C6C346C6C346C6C346B863C85A94BA8A449A3A449A3A449
            A3A449A3A449A3A449A3A449A3009F409E7254719FAB9F828A82838B83838B83
            838B82919B905F595D8E378CAA4BA8A54AA3A449A3A449A3A449A3A449A3A449
            A300A13FA0C189C0D3DAD37B7B7B82828282838083807799948D68645C89357C
            AE4DA1A94B9CAD4DA5AE4DADAE4DADAE4DADAE4DAD00A13FA0B983B8CBD2CB7A
            7A7A85857E6C69881426AA1E42A815079E1C00A52302AC2206AB632C8D78356C
            69286969286871307000A13FA0B983B8CBD2CB7A7A7A82827E7F7C812A32D600
            52FF004DFF003EFF003BFF0026FF0000C663698BB8BEB2B3B8B33E433E00A13F
            A0B983B8CBD2CB7A7A7A80808083847D857E7B363BCF1369E52782F92D88FF1F
            5EFF0014FF1717E5D3D3F5FFFFFF67676700A13FA0B983B8CBD2CB7A7A7A8080
            8080808080817C95938C6A5A67DDCDDBFFFFFFBDB8FF0073FF0000FFB0AEFDFF
            FFFF60606100A13EA0C48CC3D8E2D8818381878987878987858785999B987274
            6DE7E7E38D8AFF4857FF0075FF0000FF4443FF9090FF63636100A244A16C466B
            6B636B423642453945453A454438444E424E382D38AEADA5BAB2FF0728FF0061
            FF003AFF0507FFBFBFFF6C6C6100A346A28D4E8D946F94996D98996E98996E98
            996E99996D997E567F777579FFFFFFC9C1FF0F3BFF0C41FFC5BFFFFFFFFF6060
            6100A446A3A750A6C9B3C9FEFFFEFBFFFBDDE7DDFAFFFAE5E7E3F5F3EFEFE5E4
            FFF3F3FFFEF3BEB6FDBBB5FFFFFFFFFFFFFF61616100A449A3A344A2A0449FCF
            B9CFCBADCBB080B0C9C5CDEEDADAFFC3C3FF9292FF7A7AFF7A7AFFE7DCFFFFFB
            FFFFFFFFFFFF61616100A449A3A449A3A345A2A24AA1A24AA19C349BBB9BBFFF
            F2EFFFC1C1FF9595FF8282FF8282FF7F7EFF9999FFFFFFFFFFFF62626200A449
            A3A449A3A449A3A347A2A347A29F3E9EBEA0C2FFF0ECFFBEBEFF8F8FFF7C7CFF
            7C7CFFDFDFFDFAFAEEEEEEF9F9F9585E5800A449A3A449A3A449A3A449A3A449
            A39F3E9EBE9CBEFFFEFEFFFAFAFFF7F7FFF6F6FFF6F6FFFEFEEEEEEFE7E7E7C7
            CEC760375F00A449A3A449A3A449A3A449A3A449A39F3E9EBF9DBFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC7CEC7724C72A240A100A449A3A449A3
            A449A3A449A3A449A3A13FA0B997B9DADEDAD9D9D9D9D9D9D9D9D9D9D9D9DFDF
            DFB8BDB85D355DA13FA0A84BA700}
          ParentFont = False
          TabOrder = 1
          OnClick = bRemoveDocClick
        end
        object bRemoveTodos: TBitBtn
          AlignWithMargins = True
          Left = 217
          Top = 2
          Width = 116
          Height = 28
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Remover &Todos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B004000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF008FEDB13FCDB12FAEF08FDFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFE30EFD4063ED087FE7067BDD445AE0A828EDF106FC
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFE20EF74061DF067FE71373E51170DB0A71D20078C75849D77E36DC9E
            27E2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE50AF8
            3F5DD10F8FD42F95EB2E96EF2990E91877D70E68C8006CBE006EB30962B45A3F
            C75540BECA13EBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC41DF90D88CD2F
            9BE341AFF244B5F849BAFC42B1F82A8FE21573CA0D64BA045EAC00609F006097
            1D4EA43344A8FF00FFFF00FFFF00FFFF00FFD111E72864AC2393E83CAAF23AA5
            ED2D8EDC45B2F54DBFFF40ACF63FABF92F96E91470C11069B7085EA700558F00
            5C86FF00FFFF00FFFF00FFCD0ECF1F586E055A381369972A8AF12282ED2A88E0
            49B9FB349CE93299E944B3FF3DA8FA39A4FA3AA2FF2095E50077B2493EB2FF00
            FFFF00FFC011BF1E4E1F0477412B79B615649A0E5EA0085960247BC62B8DF520
            7BDB38A1F537A0F52F96EA37A2FD28ADFF6382FF964CF7FE04FFFF00FFFF00FF
            792B7900890431C3593CD59C2499901C7C8715667F1E71C30758540E5B6C2278
            D71C78D32A96EC2BACFF5A85FFE614FFFF00FFFF00FFFF00FFBA19BB1C7C282D
            CC5247F7783BEC5B23C13416A5370D854319827B227F941F78B02C86EF076C70
            3876C4CC2BFFEC0FFFFF00FFFF00FFFF00FFFF00FFA734AD00BF1638E7643EEC
            6A29CE4718B42808980800830000800007831D16935E2FADA0427ABECE15F2FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD22D1615869336A3D1AB83219B52B
            099A0F018700008400028D060AAA1F00C424258D3DCD1CD0FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFD700D52C563318B73210A91C00830000
            7200007C00008E001680297F5591CB1BCEFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFC70AC61F551F1BC33825CA3F008F03354A35AA1BAAAA20
            ABA925A9BD10BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFEB00EA1A4E1B18B83126CC41008F00314931E506E5FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB019
            B013A52A26D2440096002E4A2CE604E6FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF056A0D28CF45
            009B01315130E307E2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF008701009800364E35E0
            08E0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAF32B2A823A7DE06DEFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF}
          ParentFont = False
          TabOrder = 2
          OnClick = bRemoveTodosClick
        end
      end
      object cListaDOC: TListBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 835
        Height = 636
        Cursor = crHandPoint
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'c:\temp\Relatorio.xls'
          'TEste')
        ParentFont = False
        ScrollWidth = 1200
        Sorted = True
        TabOrder = 1
        StyleElements = [seFont, seBorder]
        OnDblClick = cListaDOCDblClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 771
    Width = 855
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object lBaixado: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 693
      Height = 24
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'LAN'#199'AMENTO BAIXADO TOTAL'
      Color = 6702336
      EllipsisPosition = epEndEllipsis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      Visible = False
      StyleElements = [seBorder]
      ExplicitLeft = 46
      ExplicitTop = -12
      ExplicitWidth = 617
    end
    object bCancelar: TButton
      AlignWithMargins = True
      Left = 778
      Top = 2
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bCancelarClick
    end
    object bSalvar: TButton
      AlignWithMargins = True
      Left = 701
      Top = 2
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = '  Salva as informa'#231#245'es no banco de dados.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Salvar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSalvarClick
    end
  end
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM PagarReceber')
    FetchRows = 1
    Left = 160
    Top = 17
    object tNumeroNumero: TLargeintField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object tCodigoPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM PlanoContas')
    FetchRows = 1
    Left = 216
    Top = 17
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
    Left = 272
    Top = 9
    object tContaPlanoConta: TStringField
      FieldName = 'Conta'
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
  end
  object tClientes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Clientes')
    FetchRows = 1
    Left = 264
    Top = 57
  end
  object tBordero: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(CAST(Bordero AS INT)) AS Bordero FROM PagarReceber')
    FetchRows = 1
    Left = 328
    Top = 9
    object tBorderoBordero: TIntegerField
      FieldName = 'Bordero'
      ReadOnly = True
    end
  end
  object dstAdiantamentos: TDataSource
    DataSet = tAdiantamentos
    Left = 336
    Top = 104
  end
  object tRegistroBaixa: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas')
    FetchRows = 1
    Left = 624
    Top = 65
  end
  object tAdiantamentos: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PagarReceber.Numero, PagarReceber.Valor_Total, PagarReceb' +
        'er.Data_Documento, PagarReceber.Banco, PagarReceber.Forma_Tipo, ' +
        'PagarReceber.Numero_FormaTipo FROM PagarReceber'
      'WHERE PagarReceber.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Numero,'
      '       PR.Valor_Total,'
      '       PR.Data_Documento,'
      
        '       Adiantamento_Numero = isnull(Fornecedor, 0) + isnull(Clie' +
        'nte, 0),'
      
        '       Beneficiario = CASE WHEN PR.Tipo = '#39'P'#39' THEN (SELECT Nome ' +
        'FROM Fornecedores FR WHERE FR.Codigo = PR.Fornecedor) ELSE (SELE' +
        'CT Nome FROM Clientes CL WHERE CL.Codigo = PR.Cliente) END,'
      '       PR.Banco,'
      '       PR.Forma_Tipo,'
      '       PR.Numero_FormaTipo,'
      
        '       (SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE( PRB' +
        '.Numero=PR.Numero)) AS Valor_Baixado,'
      '       PR.Tipo,'
      
        '       CNPJ = (select CNPJ from Clientes cl where cl.Codigo = pr' +
        '.Cliente)'
      'FROM   PagarReceber PR'
      
        'WHERE  (SELECT Adiantamento FROM ClassificacaoFinanceira CF WHER' +
        'E CF.Codigo = PR.Classificacao) = 1'
      'ORDER  BY PR.Numero'
      '')
    FetchRows = 1
    Left = 336
    Top = 55
    object tAdiantamentosNumero: TLargeintField
      FieldName = 'Numero'
      Origin = 'PagarReceber.Numero'
    end
    object tAdiantamentosValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'PagarReceber.Valor_Total'
      DisplayFormat = ',000.00'
      EditFormat = ',000.00'
    end
    object tAdiantamentosData_Documento: TDateTimeField
      FieldName = 'Data_Documento'
      Origin = 'PagarReceber.Data_Documento'
    end
    object tAdiantamentosBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'PagarReceber.Banco'
    end
    object tAdiantamentosForma_Tipo: TStringField
      FieldName = 'Forma_Tipo'
      Origin = 'PagarReceber.Forma_Tipo'
      Size = 25
    end
    object tAdiantamentosNumero_FormaTipo: TStringField
      FieldName = 'Numero_FormaTipo'
      Origin = 'PagarReceber.Numero_FormaTipo'
      Size = 15
    end
    object tAdiantamentosValor_Baixado: TCurrencyField
      FieldName = 'Valor_Baixado'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',000.00'
      EditFormat = ',000.00'
    end
    object tAdiantamentosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object tAdiantamentosBeneficiario: TStringField
      FieldName = 'Beneficiario'
      ReadOnly = True
      Size = 60
    end
    object tAdiantamentosAdiantamento_Numero: TSmallintField
      FieldName = 'Adiantamento_Numero'
      ReadOnly = True
    end
    object tAdiantamentosCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 14
    end
  end
  object tSaldoAdiantamento: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PagarReceber.Numero, PagarReceber.Valor_Total, PagarReceb' +
        'er.Data_Documento, PagarReceber.Banco, PagarReceber.Forma_Tipo, ' +
        'PagarReceber.Numero_FormaTipo FROM PagarReceber'
      'WHERE PagarReceber.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Valor_Total) AS Total_Adiantamentos'
      'FROM   PagarReceber,'
      '       Fornecedores,'
      '       ClassificacaoFinanceira'
      'WHERE  (Processo = '#39'1'#39') AND '
      
        '       (ClassificacaoFinanceira.Codigo=PagarReceber.Classificaca' +
        'o) AND '
      '       (ClassificacaoFinanceira.Adiantamento = 1) AND '
      '       (Fornecedores.Codigo = Fornecedor)')
    FetchRows = 1
    Left = 464
    Top = 8
  end
  object tBaixa: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Data) FROM PagarReceberBaixas')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 561
    Top = 56
  end
  object tLancamento: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'Select MAX(Numero) AS Numero FROM Lancamentos')
    FetchRows = 1
    Left = 664
    Top = 8
    object tLancamentoNumero: TSmallintField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object tExiste: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 560
    Top = 8
  end
  object tData: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Data) AS Data_Baixa'
      'FROM PagarReceberBaixas'
      'WHERE (Numero = 37661)')
    FetchRows = 1
    ReadOnly = True
    Left = 601
    Top = 8
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 112
    Top = 17
  end
  object Navios: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PagarReceber.Numero, PagarReceber.Valor_Total, PagarReceb' +
        'er.Data_Documento, PagarReceber.Banco, PagarReceber.Forma_Tipo, ' +
        'PagarReceber.Numero_FormaTipo FROM PagarReceber'
      'WHERE PagarReceber.Numero = :Numero ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT Registro'
      '      ,Ordem'
      '      ,Processo'
      '      ,Navio'
      'FROM  ControleNavios'
      '')
    FetchRows = 1
    Left = 430
    Top = 64
    object NaviosRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object NaviosOrdem: TIntegerField
      FieldName = 'Ordem'
    end
    object NaviosProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object NaviosNavio: TStringField
      FieldName = 'Navio'
      Size = 30
    end
  end
  object dsNavios: TDataSource
    DataSet = Navios
    Left = 430
    Top = 110
  end
  object Filiais: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PagarReceber.Numero, PagarReceber.Valor_Total, PagarReceb' +
        'er.Data_Documento, PagarReceber.Banco, PagarReceber.Forma_Tipo, ' +
        'PagarReceber.Numero_FormaTipo FROM PagarReceber'
      'WHERE PagarReceber.Numero = :Numero ')
    Connection = Dados.Banco
    SQL.Strings = (
      'select Filial = isnull(Numero_Filial, 0)'
      
        '      ,Nome   = iif(isnull(Numero_Filial, 0) = 0, '#39'MATRIZ'#39', '#39'FIL' +
        'IAL '#39'+cast(Numero_Filial as char(2)))'
      
        '      ,CNPJ   = substring(CNPJ,1,2)+'#39'.'#39'+substring(CNPJ,3,3)+'#39'.'#39'+' +
        'substring(CNPJ,6,3)+'#39'/'#39'+substring(CNPJ,9,4)+'#39'-'#39'+substring(CNPJ,1' +
        '3,2)'
      '      ,Estado'
      '      ,Banco_Dados'
      'from Empresas'
      
        'where substring(CNPJ, 1, 8) = (select substring(CNPJ, 1, 8) from' +
        ' Cybersoft_Cadastros.dbo.Empresas where Codigo = 143)'
      'order by Filial')
    FetchRows = 1
    Left = 496
    Top = 65
    object FiliaisFilial: TSmallintField
      DisplayWidth = 5
      FieldName = 'Filial'
      ReadOnly = True
    end
    object FiliaisNome: TStringField
      DisplayWidth = 7
      FieldName = 'Nome'
      ReadOnly = True
      Size = 9
    end
    object FiliaisCNPJ: TStringField
      DisplayWidth = 10
      FieldName = 'CNPJ'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object FiliaisEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object FiliaisBanco_Dados: TStringField
      FieldName = 'Banco_Dados'
      Size = 50
    end
  end
  object dsFiliais: TDataSource
    DataSet = Filiais
    Left = 496
    Top = 111
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 114
    Top = 71
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Processo '
      '      ,Numero_Declaracao'
      '      ,Navio_Ordem'
      
        '      ,Navio_Nome = (select Navio from Cybersoft_Cadastros.dbo.C' +
        'ontroleNavios where Ordem = Navio_Ordem)'
      'from ProcessosDocumentos')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 451
    Top = 302
    object tProcessosProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object tProcessosNumero_Declaracao: TStringField
      DisplayWidth = 10
      FieldName = 'Numero_Declaracao'
      Size = 15
    end
    object tProcessosNavio_Ordem: TIntegerField
      FieldName = 'Navio_Ordem'
    end
    object tProcessosNavio_Nome: TStringField
      FieldName = 'Navio_Nome'
      ReadOnly = True
      Size = 30
    end
  end
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 452
    Top = 353
  end
  object tBeneAdiant: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PagarReceber.Numero, PagarReceber.Valor_Total, PagarReceb' +
        'er.Data_Documento, PagarReceber.Banco, PagarReceber.Forma_Tipo, ' +
        'PagarReceber.Numero_FormaTipo FROM PagarReceber'
      'WHERE PagarReceber.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Distinct '
      
        '       CNPJ = iif(pr.Tipo = '#39'P'#39', (select CNPJ from Fornecedores ' +
        'fr where fr.Codigo = pr.Fornecedor), (select CNPJ from Clientes ' +
        'cl where cl.Codigo = pr.Cliente))'
      
        '      ,Adiantamento_Numero = isnull(Fornecedor, 0) + isnull(Clie' +
        'nte, 0)'
      
        '      ,Beneficiario = CASE WHEN PR.Tipo = '#39'P'#39' THEN (SELECT Nome ' +
        'FROM Fornecedores FR WHERE FR.Codigo = PR.Fornecedor) ELSE (SELE' +
        'CT Nome FROM Clientes CL WHERE CL.Codigo = PR.Cliente) END'
      'from PagarReceber PR'
      'where Processo = '#39#39
      
        'and (select Adiantamento from Cybersoft_Cadastros.dbo.Classifica' +
        'caoFinanceira where Codigo = Classificacao) = 1'
      'order by Beneficiario')
    FetchRows = 1
    Left = 544
    Top = 303
  end
  object dstBeneAdiant: TDataSource
    DataSet = tBeneAdiant
    Left = 544
    Top = 352
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.pdf'
    Filter = '*.pdf'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = 'Documentos'
    Left = 627
    Top = 167
  end
  object tTemp2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 115
    Top = 129
  end
end
