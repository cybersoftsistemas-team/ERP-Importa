object Contabilidade_LancamentosPesquisar: TContabilidade_LancamentosPesquisar
  Left = 196
  Top = 186
  BorderStyle = bsToolWindow
  Caption = 'Contabilidade_LancamentosPesquisar'
  ClientHeight = 480
  ClientWidth = 1174
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 450
    Width = 1174
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1174
      30)
    object bOK: TButton
      Left = 1024
      Top = 1
      Width = 74
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&OK'
      TabOrder = 0
      OnClick = bOKClick
    end
    object bCancelar: TButton
      Left = 1099
      Top = 1
      Width = 74
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 234
    Top = 6
    Width = 931
    Height = 437
    BevelOuter = bvLowered
    TabOrder = 1
    object Label7: TLabel
      Left = 68
      Top = 2
      Width = 65
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'LOTE / LANC'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      GlowSize = 100
      ParentColor = False
      ParentFont = False
      Transparent = False
      StyleElements = [seBorder]
    end
    object Label9: TLabel
      Left = 2
      Top = 2
      Width = 65
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'DATA'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      GlowSize = 100
      ParentColor = False
      ParentFont = False
      Transparent = False
      StyleElements = [seBorder]
    end
    object Label10: TLabel
      Left = 134
      Top = 2
      Width = 286
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'CONTAS'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      GlowSize = 100
      ParentColor = False
      ParentFont = False
      Transparent = False
      StyleElements = [seBorder]
    end
    object Label11: TLabel
      Left = 421
      Top = 2
      Width = 360
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'HIST'#211'RICO'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      GlowSize = 100
      ParentColor = False
      ParentFont = False
      Transparent = False
      StyleElements = [seBorder]
    end
    object Label12: TLabel
      Left = 782
      Top = 2
      Width = 130
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'VALOR'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      GlowSize = 100
      ParentColor = False
      ParentFont = False
      Transparent = False
      StyleElements = [seBorder]
    end
    object Grade: TDBCtrlGrid
      Left = 2
      Top = 15
      Width = 927
      Height = 420
      AllowDelete = False
      AllowInsert = False
      Color = clWhite
      DataSource = dstPesquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      PanelHeight = 30
      PanelWidth = 910
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      RowCount = 14
      SelectedColor = 13433082
      StyleElements = [seBorder]
      OnDblClick = GradeDblClick
      object Label4: TLabel
        Left = 135
        Top = 2
        Width = 35
        Height = 13
        Caption = 'D'#233'bito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 135
        Top = 15
        Width = 38
        Height = 13
        Caption = 'Cr'#233'dito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 3
        Top = 8
        Width = 60
        Height = 16
        Alignment = taCenter
        Color = clBlack
        DataField = 'Data'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 98
        Top = 8
        Width = 27
        Height = 16
        Alignment = taRightJustify
        Color = clBlack
        DataField = 'Numero'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 785
        Top = 8
        Width = 120
        Height = 12
        Alignment = taRightJustify
        Color = clBlack
        DataField = 'Valor'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 175
        Top = 2
        Width = 40
        Height = 12
        Alignment = taRightJustify
        Color = clBlack
        DataField = 'CodigoD'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 175
        Top = 15
        Width = 40
        Height = 12
        Alignment = taRightJustify
        Color = clBlack
        DataField = 'CodigoC'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText7: TDBText
        Left = 220
        Top = 2
        Width = 191
        Height = 12
        Color = clBlack
        DataField = 'DescricaoD'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 220
        Top = 15
        Width = 191
        Height = 12
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Color = clBlack
        DataField = 'DescricaoC'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText10: TDBText
        Left = 425
        Top = 8
        Width = 27
        Height = 12
        Alignment = taRightJustify
        Color = clBlack
        DataField = 'Historico'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 131
        Top = 1
        Width = 12
        Height = 38
        Shape = bsLeftLine
      end
      object Bevel2: TBevel
        Left = 418
        Top = -1
        Width = 12
        Height = 38
        Shape = bsLeftLine
      end
      object Bevel3: TBevel
        Left = 779
        Top = -1
        Width = 12
        Height = 38
        Shape = bsLeftLine
      end
      object Bevel4: TBevel
        Left = 65
        Top = -3
        Width = 12
        Height = 38
        Shape = bsLeftLine
      end
      object Label1: TLabel
        Left = 93
        Top = 8
        Width = 5
        Height = 13
        Caption = '/'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 67
        Top = 8
        Width = 24
        Height = 16
        Alignment = taRightJustify
        Color = clBlack
        DataField = 'Lote'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 459
        Top = 2
        Width = 316
        Height = 28
        Color = clBlack
        DataField = 'Historico_Descricao'
        DataSource = dstPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
    end
  end
  object Panel4: TPanel
    Left = 5
    Top = 6
    Width = 227
    Height = 436
    BevelOuter = bvLowered
    TabOrder = 2
    object bPesquisa: TSpeedButton
      Left = 117
      Top = 340
      Width = 55
      Height = 55
      Hint = '  Executar pesquisa  '
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
      ParentShowHint = False
      ShowHint = True
      OnClick = bPesquisaClick
    end
    object bLimpar: TSpeedButton
      Left = 56
      Top = 340
      Width = 55
      Height = 55
      Hint = '  Executar pesquisa  '
      Glyph.Data = {
        C2050000424DC205000000000000820300002800000018000000180000000100
        08000000000040020000120B0000120B0000D3000000D300000000000000FFFF
        FF00FF00FF000082000000810000005F0000005E0000005C0000005500000051
        0000004D0000004B000001820200018101000288030000800100018703000187
        0400017803000289040001550300026B0400038B0500037F060002550300048E
        07000590080006910A00035C060008680D0006640C000D9C1600096C10000FA4
        1A000C72130007951300067611000997150010A61C0011A71E000F8B190013AA
        200015AD230001500A0017B1280019B52B00138420001BB82E00067B15001BB8
        2F001CBA31001EBC33001AA62D00189029001A962D001C9A31000F8B260021AA
        390020A438001F9F35002ACF48002BD14A0023AB3D002DD34D0013AB320032DA
        560021AA410036E15E0035DE5A0035DA5B000C81290018B43F0018AB3E0039E5
        630038E362003AE7650036D45E003CDE67001BB445003ADA650045F6780046F6
        79001889400019836600167D73000F6C6500219599000B647800288BC2004CBD
        FE004DBFFF003EACF20041B0F40045B4F80048B7FE004CBDFF0060A7D300339E
        E70037A3EB003AA6F2003AA6EE003BA6EF003EA9F40041ACF20043B1F800248A
        D9002991DE002E95E5002F96E6002E97E200339EEB0037A3F2003397DE003DAA
        FC003AA4F2003EAAFC0041AFFF0042B0FF0043B1FF0003569800035596000354
        95000354930004589C000559A00005599E00116CB8001F82D3002386D9002990
        E2002C8EDE003096ED003097E90036A0FA0038A3FC0038A1F600379FF2003EAA
        FE00055AA300065CA700065BA500075DAB00075DA900085EAD000960B1000A63
        B6000A62B4000B64B400116EC5001473C7001574C900197ACE002286E1002184
        D9002486DD002483DA002687DD002582D7002F95F4003097F300349AF600349A
        F40037A0FF0037A0FE0038A1FF0039A3FF000A63B7000B64BA000C65BC000D68
        C2000D67C0000E69C6000F6AC1001370CA00176DC4001C77D300267FDA002886
        E3002784DD002C8FEE003092F2002D659D000F6BCB000F6AC900116ED100106C
        CC00116DCF001372DA001370D800136FD5001473DD001978E1001B79E1001C7D
        E2001E7AD9001B6DC4002482E6001160C0001675E3001573DE001776E6001674
        E1001878EB001877EA001877E9001877E300165CAF001C6DC900166AD4000A4B
        AA001357B5000202020202020202020202020202020202020202020202020202
        0202020202020202CACCC9BB02020202020202020202020202020202020202CD
        CAC8C7BCB8B60202020202020202020202020202020296C1CBC6BEBDBAB7A9A8
        91020202020202020202020202947F6D646F6F98B9ABAAA7928F8B7C02020202
        0202020202976A625C5D595A6399ACA6908D8C7D777A0202020202029569615B
        6582675F5E667681938E8A7B787A0202020202572BAD856C9BC35A686B727489
        87A59F7E797A020202022B55B52BD1BFD071689C9D75738486A2A2A280020202
        020A20526EB2C42B2BD2C0C588A09A83A4A2A20202020202021D3A4D50425358
        CFB42B2BCEAEAFA1A3A20202020202021E3B4F51493C2F1F305470B09EB12BB3
        0202020202020202374C514B3D322119030312465660C2020202020202020202
        3522393F33261A03031125474E380202020202020202020202020B34271B0304
        10234048380202020202020202020202020B3E41210F06071524140202020202
        02020202020202020B3644290D0802020202020202020202020202020202020B
        2E432A0C080202020202020202020202020202020202021D4A2C0E0802020202
        020202020202020202020202020218452D130502020202020202020202020202
        0202020202021C31160602020202020202020202020202020202020202022817
        0902020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        020202020202}
      ParentShowHint = False
      ShowHint = True
      OnClick = bLimparClick
    end
    object lValorDocumento: TStaticText
      Left = 7
      Top = 76
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#186' Lan'#231'amento'
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
    object StaticText2: TStaticText
      Left = 7
      Top = 7
      Width = 87
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
      TabOrder = 1
      Transparent = False
      StyleElements = []
    end
    object StaticText4: TStaticText
      Left = 7
      Top = 98
      Width = 87
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
      TabOrder = 2
      Transparent = False
      StyleElements = []
    end
    object StaticText5: TStaticText
      Left = 7
      Top = 121
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Conta'
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
    object StaticText7: TStaticText
      Left = 7
      Top = 144
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo Reduzido'
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
    object cNumLan: TCurrencyEdit
      Left = 96
      Top = 76
      Width = 123
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
      TabOrder = 5
    end
    object cData: TDateEdit
      Left = 96
      Top = 7
      Width = 123
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
      TabOrder = 6
    end
    object cValorLan: TCurrencyEdit
      Left = 96
      Top = 98
      Width = 123
      Height = 21
      AutoSize = False
      DisplayFormat = ',##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText1: TStaticText
      Left = 7
      Top = 30
      Width = 87
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
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object StaticText3: TStaticText
      Left = 7
      Top = 53
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o Lote'
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
    object cDescLote: TEdit
      Left = 96
      Top = 53
      Width = 123
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object cNumLote: TCurrencyEdit
      Left = 96
      Top = 30
      Width = 123
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
      TabOrder = 11
    end
    object cConta: TEdit
      Left = 96
      Top = 121
      Width = 123
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object StaticText6: TStaticText
      Left = 7
      Top = 167
      Width = 87
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
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
    object cHist: TCurrencyEdit
      Left = 96
      Top = 167
      Width = 123
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
      TabOrder = 14
    end
    object StaticText8: TStaticText
      Left = 7
      Top = 190
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Desc.Hist'#243'rico'
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
    object cDescHist: TEdit
      Left = 96
      Top = 190
      Width = 123
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object StaticText9: TStaticText
      Left = 7
      Top = 213
      Width = 87
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
      TabOrder = 17
      Transparent = False
      StyleElements = []
    end
    object cProcesso: TEdit
      Left = 96
      Top = 213
      Width = 123
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object cCodRed: TCurrencyEdit
      Left = 96
      Top = 144
      Width = 123
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
      TabOrder = 19
    end
    object StaticText10: TStaticText
      Left = 7
      Top = 236
      Width = 87
      Height = 21
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
      TabOrder = 20
      Transparent = False
      StyleElements = []
    end
    object cDocumento: TEdit
      Left = 96
      Top = 236
      Width = 123
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object StaticText11: TStaticText
      Left = 7
      Top = 259
      Width = 87
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
      TabOrder = 22
      Transparent = False
      StyleElements = []
    end
    object cBeneficiario: TEdit
      Left = 96
      Top = 259
      Width = 123
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
    end
    object StaticText12: TStaticText
      Left = 7
      Top = 282
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Tipo Nota'
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
    object cTipoNota: TCurrencyEdit
      Left = 96
      Top = 282
      Width = 123
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
      TabOrder = 25
    end
  end
  object tPesquisa: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Lancamentos'
      
        '  (Data, Numero, Conta_Debito, Conta_Credito, Historico_Codigo, ' +
        'Historico_Complemento, Valor)'
      'VALUES'
      
        '  (:Data, :Numero, :Conta_Debito, :Conta_Credito, :Historico_Cod' +
        'igo, :Historico_Complemento, :Valor)')
    SQLDelete.Strings = (
      'DELETE FROM Lancamentos'
      'WHERE'
      '  Data = :Old_Data AND Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE Lancamentos'
      'SET'
      
        '  Data = :Data, Numero = :Numero, Conta_Debito = :Conta_Debito, ' +
        'Conta_Credito = :Conta_Credito, Historico_Codigo = :Historico_Co' +
        'digo, Historico_Complemento = :Historico_Complemento, Valor = :V' +
        'alor'
      'WHERE'
      '  Data = :Old_Data AND Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT Lancamentos.Data, Lancamentos.Numero, Lancamentos.Conta_D' +
        'ebito, Lancamentos.Conta_Credito, Lancamentos.Historico_Codigo, ' +
        'Lancamentos.Historico_Complemento, Lancamentos.Valor FROM Lancam' +
        'entos'
      'WHERE Lancamentos.Data = :Data AND Lancamentos.Numero = :Numero ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'select Lote'
      
        '      ,Lote_Descricao = (select Descricao from Lotes where Lotes' +
        '.Lote = Lancamentos.Lote and Lotes.Data = Lancamentos.Data)'
      '      ,Numero'
      '      ,Origem'
      '      ,Data = cast(Data as Date)'
      '      ,CodigoD = cast(Conta_Debito as int)'
      
        '      ,ContaD  = (select Conta from PlanoContas where Codigo = C' +
        'onta_Debito)'
      '      ,Valor'
      
        '      ,DescricaoD = (select Descricao from PlanoContas where Cod' +
        'igo = Conta_Debito)'
      '      ,CodigoC    = cast(Conta_Credito as int)'
      
        '      ,ContaC     = (select Conta from PlanoContas where Codigo ' +
        '= Conta_Credito)'
      
        '      ,DescricaoC = (select Descricao from PlanoContas where Cod' +
        'igo = Conta_Credito)'
      '      ,Historico = Historico_Codigo'
      
        '      ,Historico_Descricao = isnull((select Descricao from Histo' +
        'ricoPadrao where Codigo = Historico_Codigo), '#39#39') + isnull(cast(H' +
        'istorico_Complemento as varchar(120)), '#39#39')'
      '      ,Empresa'
      '      ,Processo_Debito'
      '      ,Processo_Credito'
      'from  Lancamentos'
      'where Numero is not null '
      
        'and   ((select Conta from PlanoContas where Codigo = Conta_Debit' +
        'o) = '#39'1101020107'#39' or (select Conta from PlanoContas where Codigo' +
        ' = Conta_Credito) = '#39'1101020107'#39')'
      'order by Data desc, Lote')
    FetchRows = 1
    Left = 689
    Top = 150
    object tPesquisaLote: TLargeintField
      FieldName = 'Lote'
      DisplayFormat = '000'
    end
    object tPesquisaLote_Descricao: TStringField
      FieldName = 'Lote_Descricao'
      ReadOnly = True
      Size = 50
    end
    object tPesquisaNumero: TIntegerField
      FieldName = 'Numero'
      DisplayFormat = '0000'
    end
    object tPesquisaOrigem: TStringField
      FieldName = 'Origem'
      Size = 50
    end
    object tPesquisaData: TDateField
      FieldName = 'Data'
      ReadOnly = True
    end
    object tPesquisaValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
    object tPesquisaDescricaoD: TStringField
      FieldName = 'DescricaoD'
      ReadOnly = True
      Size = 50
    end
    object tPesquisaDescricaoC: TStringField
      FieldName = 'DescricaoC'
      ReadOnly = True
      Size = 50
    end
    object tPesquisaHistorico: TSmallintField
      FieldName = 'Historico'
      DisplayFormat = '0000'
    end
    object tPesquisaHistorico_Descricao: TStringField
      FieldName = 'Historico_Descricao'
      ReadOnly = True
      Size = 180
    end
    object tPesquisaEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 14
    end
    object tPesquisaProcesso_Debito: TStringField
      FieldName = 'Processo_Debito'
      Size = 15
    end
    object tPesquisaProcesso_Credito: TStringField
      FieldName = 'Processo_Credito'
      Size = 15
    end
    object tPesquisaCodigoD: TIntegerField
      FieldName = 'CodigoD'
      ReadOnly = True
    end
    object tPesquisaCodigoC: TIntegerField
      FieldName = 'CodigoC'
      ReadOnly = True
    end
    object tPesquisaContaD: TStringField
      FieldName = 'ContaD'
      ReadOnly = True
      Size = 15
    end
    object tPesquisaContaC: TStringField
      FieldName = 'ContaC'
      ReadOnly = True
      Size = 15
    end
  end
  object dstPesquisa: TDataSource
    DataSet = tPesquisa
    Left = 689
    Top = 198
  end
end
