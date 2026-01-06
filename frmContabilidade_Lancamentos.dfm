object Contabilidade_Lancamentos: TContabilidade_Lancamentos
  Left = 451
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Contabilidade_Lancamentos'
  ClientHeight = 680
  ClientWidth = 1047
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
    Width = 1047
    Height = 41
    Align = alTop
    Stretch = True
    ExplicitWidth = 685
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = 2
    Width = 193
    Height = 21
    Caption = 'LAN'#199'AMENTOS CONTABEIS'
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
  object RxLabel4: TRxLabel
    Left = 5
    Top = 19
    Width = 260
    Height = 18
    Caption = 'Manuten'#231#227'o dos Lan'#231'amentos Contabeis.'
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
  object Panel7: TPanel
    Left = 315
    Top = 41
    Width = 732
    Height = 605
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BevelOuter = bvLowered
    Caption = 'Panel7'
    TabOrder = 2
    object Panel8: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 451
      Width = 726
      Height = 117
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 11
        Top = 3
        Width = 169
        Height = 107
        Caption = 'Total do Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label6: TLabel
          Left = 6
          Top = 18
          Width = 21
          Height = 13
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label8: TLabel
          Left = 6
          Top = 40
          Width = 36
          Height = 13
          Caption = 'D'#233'bitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label11: TLabel
          Left = 6
          Top = 62
          Width = 40
          Height = 13
          Caption = 'Cr'#233'ditos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label14: TLabel
          Left = 6
          Top = 84
          Width = 46
          Height = 13
          Caption = 'Diferen'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object DBEdit7: TDBEdit
          Left = 59
          Top = 36
          Width = 105
          Height = 21
          AutoSize = False
          DataField = 'DebLote'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cDifLote: TDBEdit
          Left = 59
          Top = 80
          Width = 105
          Height = 21
          AutoSize = False
          DataField = 'DifLote'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          StyleElements = [seFont, seBorder]
        end
        object DBEdit8: TDBEdit
          Left = 59
          Top = 58
          Width = 105
          Height = 21
          AutoSize = False
          DataField = 'CredLote'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 104
          Top = 14
          Width = 60
          Height = 21
          DataField = 'LanLote'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 59
          Top = 14
          Width = 44
          Height = 21
          DataField = 'Lote'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 189
        Top = 3
        Width = 169
        Height = 107
        Caption = 'Total do Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 6
          Top = 18
          Width = 26
          Height = 13
          Caption = 'Lotes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label2: TLabel
          Left = 6
          Top = 40
          Width = 36
          Height = 13
          Caption = 'D'#233'bitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label3: TLabel
          Left = 6
          Top = 62
          Width = 40
          Height = 13
          Caption = 'Cr'#233'ditos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label4: TLabel
          Left = 6
          Top = 84
          Width = 46
          Height = 13
          Caption = 'Diferen'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object DBEdit10: TDBEdit
          Left = 59
          Top = 14
          Width = 44
          Height = 21
          DataField = 'LotesDia'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 104
          Top = 14
          Width = 60
          Height = 21
          DataField = 'LanDia'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit12: TDBEdit
          Left = 59
          Top = 36
          Width = 105
          Height = 21
          DataField = 'DebDia'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 59
          Top = 58
          Width = 105
          Height = 21
          DataField = 'CredDia'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object cDifDia: TDBEdit
          Left = 59
          Top = 80
          Width = 105
          Height = 21
          DataField = 'DifDia'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          StyleElements = [seFont, seBorder]
        end
      end
      object GroupBox3: TGroupBox
        Left = 367
        Top = 3
        Width = 169
        Height = 107
        Caption = 'Total do M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 6
          Top = 18
          Width = 26
          Height = 13
          Caption = 'Lotes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label7: TLabel
          Left = 6
          Top = 40
          Width = 36
          Height = 13
          Caption = 'D'#233'bitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label9: TLabel
          Left = 6
          Top = 62
          Width = 40
          Height = 13
          Caption = 'Cr'#233'ditos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label10: TLabel
          Left = 6
          Top = 84
          Width = 46
          Height = 13
          Caption = 'Diferen'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object DBEdit15: TDBEdit
          Left = 59
          Top = 14
          Width = 44
          Height = 21
          DataField = 'LotesMes'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit16: TDBEdit
          Left = 104
          Top = 14
          Width = 60
          Height = 21
          DataField = 'LanMes'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit17: TDBEdit
          Left = 59
          Top = 36
          Width = 105
          Height = 21
          DataField = 'DebMes'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit18: TDBEdit
          Left = 59
          Top = 58
          Width = 105
          Height = 21
          DataField = 'CredMes'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object cDifMes: TDBEdit
          Left = 59
          Top = 80
          Width = 105
          Height = 21
          DataField = 'DifMes'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          StyleElements = [seFont, seBorder]
        end
      end
      object GroupBox4: TGroupBox
        Left = 545
        Top = 3
        Width = 169
        Height = 107
        Caption = 'Total do Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label12: TLabel
          Left = 6
          Top = 18
          Width = 26
          Height = 13
          Caption = 'Lotes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label13: TLabel
          Left = 6
          Top = 40
          Width = 36
          Height = 13
          Caption = 'D'#233'bitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label15: TLabel
          Left = 6
          Top = 62
          Width = 40
          Height = 13
          Caption = 'Cr'#233'ditos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object Label16: TLabel
          Left = 6
          Top = 84
          Width = 46
          Height = 13
          Caption = 'Diferen'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          StyleElements = [seClient, seBorder]
        end
        object DBEdit1: TDBEdit
          Left = 59
          Top = 14
          Width = 44
          Height = 21
          DataField = 'LotesAno'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 104
          Top = 14
          Width = 60
          Height = 21
          DataField = 'LanAno'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit14: TDBEdit
          Left = 59
          Top = 36
          Width = 105
          Height = 21
          DataField = 'DebAno'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 59
          Top = 58
          Width = 105
          Height = 21
          DataField = 'CredAno'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object cDifAno: TDBEdit
          Left = 59
          Top = 80
          Width = 105
          Height = 21
          DataField = 'DifAno'
          DataSource = dstTotaliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          StyleElements = [seFont, seBorder]
        end
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 726
      Height = 210
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 1
      object SpeedButton2: TSpeedButton
        Left = 506
        Top = 27
        Width = 28
        Height = 24
        Hint = '  Atualiza os dados do endere'#231'o'
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
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 506
        Top = 50
        Width = 28
        Height = 24
        Hint = '  Atualiza os dados do endere'#231'o'
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
        OnClick = SpeedButton3Click
      end
      object SpeedButton1: TSpeedButton
        Left = 688
        Top = 142
        Width = 28
        Height = 24
        Hint = '  Atualiza os dados do endere'#231'o'
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
        OnClick = SpeedButton1Click
      end
      object StaticText2: TStaticText
        Left = 7
        Top = 29
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Conta D'#233'bito'
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
      object cCodigoDeb: TDBEdit
        Left = 82
        Top = 29
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Conta_Debito'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText3: TStaticText
        Left = 7
        Top = 98
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor'
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
      object cValor: TDBEdit
        Left = 82
        Top = 98
        Width = 128
        Height = 21
        DataField = 'Valor'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText4: TStaticText
        Left = 7
        Top = 52
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Conta Cr'#233'dito'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 14
        Transparent = False
        StyleElements = []
      end
      object cCodigoCred: TDBEdit
        Left = 82
        Top = 52
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Conta_Credito'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object cContaCred: TRxDBLookupCombo
        Left = 145
        Top = 52
        Width = 362
        Height = 21
        DropDownCount = 15
        DropDownWidth = 450
        DisplayAllFields = True
        DataField = 'Conta_Credito'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Conta;Descricao'
        LookupDisplayIndex = 2
        LookupSource = dstPlano
        ParentFont = False
        TabOrder = 3
      end
      object cContaDeb: TRxDBLookupCombo
        Left = 145
        Top = 29
        Width = 362
        Height = 21
        DropDownCount = 15
        DropDownWidth = 450
        DisplayAllFields = True
        DataField = 'Conta_Debito'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Conta;Descricao'
        LookupDisplayIndex = 2
        LookupSource = dstPlano
        ParentFont = False
        TabOrder = 1
      end
      object StaticText10: TStaticText
        Left = 538
        Top = 29
        Width = 50
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
        TabOrder = 15
        Transparent = False
        StyleElements = []
      end
      object cProcesso: TRxDBLookupCombo
        Left = 590
        Top = 29
        Width = 130
        Height = 21
        DropDownCount = 15
        DropDownWidth = 340
        DataField = 'Processo_Debito'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Processo'
        LookupDisplay = 'Processo;DI;Tipo'
        LookupSource = dstProcessos
        ParentFont = False
        TabOrder = 5
      end
      object StaticText12: TStaticText
        Left = 7
        Top = 121
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo Documento'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
        Transparent = False
        StyleElements = []
      end
      object StaticText13: TStaticText
        Left = 385
        Top = 121
        Width = 50
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Data Doc'
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
      end
      object StaticText14: TStaticText
        Left = 544
        Top = 121
        Width = 49
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero'
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
      object DBEdit5: TDBEdit
        Left = 595
        Top = 121
        Width = 120
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Documento'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBDateEdit1: TDBDateEdit
        Left = 437
        Top = 121
        Width = 103
        Height = 21
        Cursor = crArrow
        DataField = 'Data_Documento'
        DataSource = dmContab.dsLancamentos
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
        PopupColor = clHighlight
        TabOrder = 7
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 82
        Top = 121
        Width = 299
        Height = 21
        DropDownCount = 15
        DataField = 'Tipo_Documento'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsTiposDocumentos
        ParentFont = False
        TabOrder = 6
      end
      object lHistorico: TStaticText
        Left = 7
        Top = 144
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Hist'#243'rico'
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
      object cHistoricoCodigo: TDBEdit
        Left = 82
        Top = 144
        Width = 56
        Height = 21
        DataField = 'Historico_Codigo'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnExit = cHistoricoClick
      end
      object StaticText7: TStaticText
        Left = 7
        Top = 167
        Width = 73
        Height = 36
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Hist'#243'rico Complemento '
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
      end
      object cHistCompl: TDBMemo
        Left = 82
        Top = 167
        Width = 633
        Height = 36
        DataField = 'Historico_Complemento'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object cHistorico: TDBLookupComboBox
        Left = 140
        Top = 144
        Width = 547
        Height = 21
        DataField = 'Historico_Codigo'
        DataSource = dmContab.dsLancamentos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dmContab.dsHistoricos
        ParentFont = False
        TabOrder = 10
        TabStop = False
        OnClick = cHistoricoClick
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 590
        Top = 52
        Width = 130
        Height = 21
        DropDownCount = 15
        DropDownWidth = 340
        DataField = 'Processo_Credito'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Processo'
        LookupDisplay = 'Processo;DI;Tipo'
        LookupSource = dstProcessos
        ParentFont = False
        TabOrder = 21
      end
      object StaticText5: TStaticText
        Left = 538
        Top = 52
        Width = 50
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
        TabOrder = 22
        Transparent = False
        StyleElements = []
      end
      object StaticText6: TStaticText
        Left = 7
        Top = 75
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Benefici'#225'rio'
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
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 82
        Top = 75
        Width = 492
        Height = 21
        DropDownCount = 15
        DropDownWidth = 450
        DisplayAllFields = True
        DataField = 'Beneficiario'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Nome'
        LookupDisplayIndex = 2
        LookupSource = dstBenef
        ParentFont = False
        TabOrder = 24
      end
      object StaticText16: TStaticText
        Left = 7
        Top = 6
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Origem'
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
      object DBEdit20: TDBEdit
        Left = 82
        Top = 6
        Width = 634
        Height = 21
        DataField = 'Origem'
        DataSource = dmContab.dsLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
      end
    end
    object gLanc: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 217
      Width = 726
      Height = 230
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabStop = False
      Align = alClient
      DataSource = dmContab.dsLancamentos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Numero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Lan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 32
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Conta_Debito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cta.D'#233'b'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Debito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o D'#233'bito'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 230
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Conta_Credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cta.Cr'#233'd'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Cr'#233'dito'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Processo_Debito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Processo Deb'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Processo_Credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Processo Cred'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Origem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 572
      Width = 726
      Height = 30
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      BevelOuter = bvLowered
      ParentBackground = False
      TabOrder = 3
      object Navega: TDBNavigator
        Left = 1
        Top = 1
        Width = 416
        Height = 28
        Cursor = crHandPoint
        ParentCustomHint = False
        DataSource = dmContab.dsLancamentos
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
        ConfirmDelete = False
        ShowHint = True
        TabOrder = 0
        BeforeAction = NavegaBeforeAction
        OnClick = NavegaClick
      end
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 648
    Width = 1043
    Height = 30
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1043
      30)
    object bSair: TButton
      Left = 967
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bPesquisar: TButton
      Left = 796
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bPesquisarClick
    end
    object Button4: TButton
      Left = 871
      Top = 1
      Width = 96
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Ver Diferen'#231'as'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 41
    Width = 315
    Height = 605
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 1
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 43
      Width = 309
      Height = 142
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 0
      object StaticText1: TStaticText
        Left = 7
        Top = 51
        Width = 55
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
        TabOrder = 5
        Transparent = False
        StyleElements = []
      end
      object StaticText8: TStaticText
        Left = 136
        Top = 5
        Width = 55
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Lote'
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
      object cLote: TDBEdit
        Left = 193
        Top = 5
        Width = 34
        Height = 21
        CharCase = ecUpperCase
        Color = 13828095
        DataField = 'Lote'
        DataSource = dmContab.dsLotes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        StyleElements = [seFont, seBorder]
      end
      object StaticText9: TStaticText
        Left = 7
        Top = 74
        Width = 55
        Height = 21
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
        TabOrder = 7
        Transparent = False
        StyleElements = []
      end
      object DBEdit2: TDBEdit
        Left = 64
        Top = 74
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        Color = 13828095
        DataField = 'Descricao'
        DataSource = dmContab.dsLotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        StyleElements = [seFont, seBorder]
      end
      object cDataLote: TDBDateEdit
        Left = 64
        Top = 51
        Width = 107
        Height = 21
        ParentCustomHint = False
        DataField = 'Data'
        DataSource = dmContab.dsLotes
        CheckOnExit = True
        Color = 13828095
        Ctl3D = True
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
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupAlign = epaLeft
        PopupColor = 13828095
        ShowHint = False
        TabOrder = 3
      end
      object StaticText11: TStaticText
        Left = 7
        Top = 28
        Width = 55
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Origem'
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
      object DBEdit3: TDBEdit
        Left = 64
        Top = 28
        Width = 107
        Height = 21
        CharCase = ecUpperCase
        Color = 13828095
        DataField = 'Origem'
        DataSource = dmContab.dsLotes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        StyleElements = [seFont, seBorder]
      end
      object StaticText15: TStaticText
        Left = 7
        Top = 5
        Width = 55
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Registro'
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
      object cRegistro: TDBEdit
        Left = 64
        Top = 5
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        Color = 13828095
        DataField = 'Registro'
        DataSource = dmContab.dsLotes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        StyleElements = [seFont, seBorder]
        OnChange = cRegistroChange
      end
      object cAberto: TToggleSwitch
        Left = 192
        Top = 117
        Width = 108
        Height = 18
        Alignment = taLeftJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'Aberto'
        StateCaptions.CaptionOff = 'Fechado'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 10
        TabStop = False
        ThumbWidth = 12
      end
      object cContabilizar: TToggleSwitch
        Left = 192
        Top = 101
        Width = 108
        Height = 18
        Alignment = taLeftJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'Contabilizar'
        StateCaptions.CaptionOff = 'N'#227'o Contabilizar'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 11
        TabStop = False
        ThumbWidth = 12
      end
    end
    object gLotes: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 220
      Width = 309
      Height = 382
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabStop = False
      Align = alClient
      Color = 13828095
      DataSource = dmContab.dsLotes
      FixedColor = 13828095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      StyleElements = [seBorder]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Lote'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 161
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Contabilizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Webdings'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'CT'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 15
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Aberto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Webdings'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'AB'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 15
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 187
      Width = 313
      Height = 31
      Align = alTop
      BevelOuter = bvLowered
      Color = 13828095
      ParentBackground = False
      TabOrder = 2
      object NavegaLote: TDBNavigator
        Left = 1
        Top = 1
        Width = 311
        Height = 29
        Cursor = crHandPoint
        DataSource = dmContab.dsLotes
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alClient
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
        TabOrder = 0
        BeforeAction = NavegaLoteBeforeAction
        OnClick = NavegaLoteClick
      end
    end
    object Panel10: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 309
      Height = 36
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 3
      object bFiltro: TSpeedButton
        Left = 278
        Top = 3
        Width = 28
        Height = 28
        Hint = '  Atualiza os dados do endere'#231'o'
        Glyph.Data = {
          AA030000424DAA03000000000000360000002800000011000000110000000100
          18000000000074030000C40E0000C40E00000000000000000000A449A3A449A3
          A449A3A449A3A449A3A449A3B04EA58035937E3393803897B04EA5A449A3A449
          A3A449A3A449A3A449A3A449A300A449A3A449A3A449A3A449A3A449A3AB4CA4
          6A2B8E0019CC0F33C70000A96A2E92AB4CA4A449A3A449A3A449A3A449A3A449
          A300A449A3A449A3A449A3A449A3A449A3B04EA5310F7D0838FF3765FF0006CB
          321483B04EA5A449A3A449A3A449A3A449A3A449A300A449A3A449A3A449A3A4
          49A3A449A3B04EA536117E0735FF3561FA0005C8371684B04EA5A449A3A449A3
          A449A3A449A3A449A300A449A3A449A3A449A3A449A3A449A3B34FA639127D08
          36FF3764FA0005C73A1682B34FA6A449A3A449A3A449A3A449A3A449A300A449
          A3A449A3A449A3A449A3A64AA3A6489F240F8A0018E30022FB0020D5241496A7
          499FA64AA3A449A3A449A3A449A3A449A300A449A3A449A3A449A3A64AA3BB51
          A4160A870426DC072EFF001DFE001FEC0016C4160C8CBC52A5A64AA3A449A3A4
          49A3A449A300A449A3A449A3A74AA3A949A01809851741E91E4AFF0A31FF0528
          FF001EF6001EDD0016C2180B86AA4AA1A74AA3A449A3A449A300A449A3A64AA3
          AC4AA01E0F8D173DDE3364FF224EFF143CFF062BFF0122FF001DE80221D40013
          B11D0F8CAD4CA2A64AA3A449A300A74AA3B550A41C0E8D1941E33363FF315FFF
          2C59FF173CFD0E2FFF021CFF001CF9001CDB011EC60014AE1A0D8BB650A5A74A
          A300AA4BA31807800116AD021CC9000DB90004A40000912E64B600399C003798
          060B800810AF050AA1020A9B00049317057EA94BA300130885000399000EA391
          520D8D531D593F570005C03E8EDB34FAEE00C6D60883912345D92D55F9294CF1
          283BF6071FBC130887008A3E9D03008FC98714F7DB67ECC746EDAC0040346700
          00A73468C528F4FF00DFF7006C750D1BCC0D1DAF02AE0806007C903CA300A94B
          A4AF46ACBE9866FBF4C2EFDA8BE1AF207C3E565521964F0E859190C731C1D562
          1D8650208A009B0A00E0002B5E0EA64BA000A449A3A040A7BC956BFFFFF4F1E6
          A2DCAF25B15668AC4BABAD4CA4A7429FA455ABBD3EB314B60C00E40000FF0000
          B9001B630C00A449A3A348A3A145A2A96C5FAA6C6AAE5556A144B1A449A3A449
          A3A448A2A546A1A646A59F4B9F11AB1100DF001858089F4A9D00A449A3A449A3
          A348A3A243A8A243A8A246AAA449A3A449A3A449A3A449A3A449A3A449A3AA44
          A8A14BA010AD10A0439DAA47A900}
        OnClick = bFiltroClick
      end
      object cAno: TSpinEdit
        Left = 34
        Top = 6
        Width = 53
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 0
      end
      object lAno: TStaticText
        Left = 4
        Top = 6
        Width = 29
        Height = 22
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Ano'
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
      object lMes: TStaticText
        Left = 89
        Top = 6
        Width = 29
        Height = 22
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'M'#234's'
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
      object cMes: TComboBox
        Left = 120
        Top = 6
        Width = 91
        Height = 21
        Style = csDropDownList
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Items.Strings = (
          'JANEIRO'
          'FEVEREIRO'
          'MAR'#199'O'
          'ABRIL'
          'MAIO'
          'JUNHO'
          'JULHO'
          'AGOSTO'
          'SETEMBRO'
          'OUTUBRO'
          'NOVEMBRO'
          'DEZEMBRO')
      end
      object StaticText17: TStaticText
        Left = 213
        Top = 6
        Width = 21
        Height = 22
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Dia'
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
      object cDia: TSpinEdit
        Left = 236
        Top = 6
        Width = 41
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxValue = 31
        MinValue = 0
        ParentFont = False
        TabOrder = 5
        Value = 0
      end
    end
  end
  object tData: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PlanoContas.Conta, PlanoContas.Codigo, PlanoContas.Descri' +
        'cao, PlanoContas.Saldo, PlanoContas.Debito, PlanoContas.Credito ' +
        'FROM PlanoContas'
      'WHERE PlanoContas.Conta = :Conta ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Data) AS Data FROM Lancamentos')
    FetchRows = 1
    Left = 385
    Top = 8
  end
  object tMes: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PlanoContas.Conta, PlanoContas.Codigo, PlanoContas.Descri' +
        'cao, PlanoContas.Saldo, PlanoContas.Debito, PlanoContas.Credito ' +
        'FROM PlanoContas'
      'WHERE PlanoContas.Conta = :Conta ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Data) AS Data FROM Lancamentos')
    FetchRows = 1
    Left = 388
    Top = 56
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Contabilidade
    Left = 512
    Top = 8
  end
  object tPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT Conta'
      '      ,Codigo'
      '      ,Descricao'
      '      ,Saldo_Anterior'
      '      ,Debito'
      '      ,Credito'
      '      ,Empresa'
      'FROM  PlanoContas'
      'WHERE (ISNULL(Sintetica, 0) = 0)')
    FetchRows = 1
    Left = 457
    Top = 8
    object tPlanoConta: TStringField
      DisplayWidth = 10
      FieldName = 'Conta'
      Origin = '.'
      ReadOnly = True
      Size = 15
    end
    object tPlanoCodigo: TStringField
      DisplayWidth = 5
      FieldName = 'Codigo'
      ReadOnly = True
      Size = 6
    end
    object tPlanoDescricao: TStringField
      DisplayWidth = 35
      FieldName = 'Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 50
    end
    object tPlanoSaldo_Anterior: TCurrencyField
      FieldName = 'Saldo_Anterior'
      Origin = '.'
      ReadOnly = True
    end
    object tPlanoDebito: TCurrencyField
      FieldName = 'Debito'
      Origin = '.'
      ReadOnly = True
    end
    object tPlanoCredito: TCurrencyField
      FieldName = 'Credito'
      Origin = '.'
      ReadOnly = True
    end
    object tPlanoEmpresa: TStringField
      FieldName = 'Empresa'
      ReadOnly = True
      Size = 14
    end
  end
  object dstPlano: TDataSource
    DataSet = tPlano
    Left = 459
    Top = 56
  end
  object tTotaliza: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT Lote     = 1'
      
        '      ,LanLote  = (select count(*)   from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and Lote = 1)'
      
        '      ,DebLote  = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and Lote = 1 and isnull(Conta_Debito , '#39#39') <> '#39#39 +
        ')'
      
        '      ,CredLote = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and Lote = 1 and isnull(Conta_Credito, '#39#39') <> '#39#39 +
        ')'
      
        '      ,DifLote  = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and Lote = 1 and isnull(Conta_Debito , '#39#39') <> '#39#39 +
        ') - (select sum(Valor) from Lancamentos where Data = '#39'02/21/2022' +
        #39' and Lote = 1 and isnull(Conta_Credito, '#39#39') <> '#39#39')'
      '      ,LotesDia = 0'
      
        '      ,LanDia   = (select count(*)   from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39')'
      
        '      ,DebDia   = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and isnull(Conta_Debito , '#39#39') <> '#39#39')'
      
        '      ,CredDia  = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and isnull(Conta_Credito, '#39#39') <> '#39#39')'
      
        '      ,DifDia   = (select sum(Valor) from Lancamentos where Data' +
        ' = '#39'02/21/2022'#39' and isnull(Conta_Debito , '#39#39') <> '#39#39') - (select s' +
        'um(Valor) from Lancamentos where Data = '#39'02/21/2022'#39' and isnull(' +
        'Conta_Credito, '#39#39') <> '#39#39')'
      ''
      '      ,LotesMes = 0'
      
        '      ,LanMes   = (select count(*)   from Lancamentos where mont' +
        'h(Data) = month('#39'02/21/2022'#39'))'
      
        '      ,DebMes   = (select sum(Valor) from Lancamentos where mont' +
        'h(Data) = month('#39'02/21/2022'#39') and isnull(Conta_Debito , '#39#39') <> '#39 +
        #39')'
      
        '      ,CredMes  = (select sum(Valor) from Lancamentos where mont' +
        'h(Data) = month('#39'02/21/2022'#39') and isnull(Conta_Credito, '#39#39') <> '#39 +
        #39')'
      
        '      ,DifMes   = (select sum(Valor) from Lancamentos where mont' +
        'h(Data) = month('#39'02/21/2022'#39') and isnull(Conta_Debito , '#39#39') <> '#39 +
        #39') - (select sum(Valor) from Lancamentos where month(Data) = mon' +
        'th('#39'02/21/2022'#39') and isnull(Conta_Credito, '#39#39') <> '#39#39')'
      '      ,LotesAno = 0'
      '      ,LanAno   = 0'
      '      ,DebAno   = cast(0 as money)'
      '      ,CredAno  = cast(0 as money)'
      '      ,DifAno   = cast(0 as money)')
    FetchRows = 1
    Left = 321
    Top = 8
    object tTotalizaLote: TIntegerField
      FieldName = 'Lote'
      ReadOnly = True
      DisplayFormat = '000'
    end
    object tTotalizaLanLote: TIntegerField
      FieldName = 'LanLote'
      ReadOnly = True
      DisplayFormat = '00000'
    end
    object tTotalizaDebLote: TCurrencyField
      FieldName = 'DebLote'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaCredLote: TCurrencyField
      FieldName = 'CredLote'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaDifLote: TCurrencyField
      FieldName = 'DifLote'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaLotesDia: TIntegerField
      FieldName = 'LotesDia'
      ReadOnly = True
      DisplayFormat = '000'
    end
    object tTotalizaLanDia: TIntegerField
      FieldName = 'LanDia'
      ReadOnly = True
      DisplayFormat = '00000'
    end
    object tTotalizaDebDia: TCurrencyField
      FieldName = 'DebDia'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaCredDia: TCurrencyField
      FieldName = 'CredDia'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaDifDia: TCurrencyField
      FieldName = 'DifDia'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaLotesMes: TIntegerField
      FieldName = 'LotesMes'
      ReadOnly = True
      DisplayFormat = '000'
    end
    object tTotalizaLanMes: TIntegerField
      FieldName = 'LanMes'
      ReadOnly = True
      DisplayFormat = '00000'
    end
    object tTotalizaDebMes: TCurrencyField
      FieldName = 'DebMes'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaCredMes: TCurrencyField
      FieldName = 'CredMes'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaDifMes: TCurrencyField
      FieldName = 'DifMes'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaLotesAno: TIntegerField
      FieldName = 'LotesAno'
      ReadOnly = True
      DisplayFormat = '000'
    end
    object tTotalizaLanAno: TIntegerField
      FieldName = 'LanAno'
      ReadOnly = True
      DisplayFormat = '00000'
    end
    object tTotalizaDebAno: TCurrencyField
      FieldName = 'DebAno'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaCredAno: TCurrencyField
      FieldName = 'CredAno'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalizaDifAno: TCurrencyField
      FieldName = 'DifAno'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Processo'
      '      ,Tipo'
      '      ,DI = Numero_Declaracao'
      'FROM ProcessosDocumentos')
    Left = 568
    Top = 8
    object tProcessosProcesso: TStringField
      DisplayWidth = 10
      FieldName = 'Processo'
      Size = 15
    end
    object tProcessosTipo: TStringField
      DisplayWidth = 5
      FieldName = 'Tipo'
      FixedChar = True
      Size = 15
    end
    object tProcessosDI: TStringField
      DisplayWidth = 10
      FieldName = 'DI'
      Size = 15
    end
  end
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 569
    Top = 55
  end
  object dstTotaliza: TDataSource
    DataSet = tTotaliza
    Left = 323
    Top = 56
  end
  object tBenef: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Codigo = '#39'C'#39'+cast(Codigo as varchar(15))'
      '      ,Nome = ltrim(rtrim(Nome))'
      '      ,CNPJ_CPF = isnull(CNPJ, '#39#39') + isnull(CPF, '#39#39')'
      #9'  ,Tipo = '#39'C'#39
      'from Clientes'
      'union all'
      'select Codigo = '#39'F'#39'+cast(Codigo as varchar(15))'
      '      ,Nome = ltrim(rtrim(Nome))'
      '      ,CNPJ_CPF = isnull(CNPJ, '#39#39') + isnull(CPF, '#39#39')'
      #9'  ,Tipo = '#39'F'#39
      'FROM Fornecedores'
      'order by Codigo')
    Left = 648
    Top = 8
    object tBenefCodigo: TStringField
      DisplayWidth = 5
      FieldName = 'Codigo'
      ReadOnly = True
      Size = 16
    end
    object tBenefNome: TStringField
      FieldName = 'Nome'
      ReadOnly = True
      Size = 60
    end
    object tBenefCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ReadOnly = True
      Size = 28
    end
    object tBenefTipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 1
    end
  end
  object dstBenef: TDataSource
    DataSet = tBenef
    Left = 649
    Top = 56
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select CNPJ, Banco_Dados from empresas')
    Left = 728
    Top = 8
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 729
    Top = 56
  end
end
