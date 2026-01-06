object Financeiro_SolicitacaoPagamentos: TFinanceiro_SolicitacaoPagamentos
  Left = 352
  Top = 191
  BorderStyle = bsDialog
  Caption = 'Financeiro_SolicitacaoPagamentos'
  ClientHeight = 536
  ClientWidth = 944
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
    Width = 944
    Height = 46
    Align = alTop
    Stretch = True
  end
  object bLimpaFiltro: TSpeedButton
    Left = 754
    Top = 79
    Width = 65
    Height = 54
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
  object bPesquisar: TSpeedButton
    Left = 689
    Top = 79
    Width = 65
    Height = 54
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
    OnClick = bPesquisarClick
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
    Width = 173
    Height = 18
    Caption = 'Solicita'#231#227'o de pagamentos.'
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
    Top = 507
    Width = 944
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      944
      29)
    object bSair: TButton
      Left = 869
      Top = 1
      Width = 75
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
    object bDesmarcar: TButton
      Left = 363
      Top = 1
      Width = 98
      Height = 28
      Cursor = crHandPoint
      Hint = '  Salva as informa'#231#245'es no banco de dados.'
      Caption = '&Desmarcar Tudo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bDesmarcarClick
    end
    object bSelecionar: TButton
      Left = 265
      Top = 1
      Width = 98
      Height = 28
      Cursor = crHandPoint
      Hint = '  Salva as informa'#231#245'es no banco de dados.'
      Caption = 'Se&lecionar Tudo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSelecionarClick
    end
    object bGerar: TButton
      Left = 461
      Top = 1
      Width = 64
      Height = 28
      Cursor = crHandPoint
      Hint = '  Salva as informa'#231#245'es no banco de dados.'
      Caption = '&Gerar SP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bGerarClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 264
      Height = 28
      Cursor = crHandPoint
      DataSource = dstTitulos
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
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 47
    Width = 681
    Height = 87
    Caption = 'Filtros'
    TabOrder = 1
    object lBorderoData: TStaticText
      Left = 7
      Top = 14
      Width = 66
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
      TabOrder = 6
      Transparent = False
      StyleElements = []
    end
    object StaticText1: TStaticText
      Left = 7
      Top = 37
      Width = 66
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
      TabOrder = 7
      Transparent = False
      StyleElements = []
    end
    object cProcesso: TComboBox
      Left = 75
      Top = 37
      Width = 133
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 211
      Top = 14
      Width = 121
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Classifica'#231#227'o Financeira'
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
    object cClassificacao: TRxDBLookupCombo
      Left = 334
      Top = 14
      Width = 340
      Height = 21
      DropDownCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsClassificacaoFinanceira
      ParentFont = False
      TabOrder = 1
    end
    object cSelecionar: TCheckBox
      Left = 422
      Top = 63
      Width = 241
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Selecionar registros filtrados automaticamente'
      TabOrder = 5
    end
    object cData: TDateEdit
      Left = 75
      Top = 14
      Width = 133
      Height = 21
      CheckOnExit = True
      Ctl3D = True
      DialogTitle = 'Selecione a data'
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
      ButtonWidth = 20
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      PopupColor = clWhite
      TabOrder = 0
    end
    object StaticText3: TStaticText
      Left = 211
      Top = 37
      Width = 121
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Benficiario'
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
    object cBeneficiario: TRxDBLookupCombo
      Left = 334
      Top = 37
      Width = 340
      Height = 21
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      IndexSwitch = False
      LookupField = 'Beneficiario_Nome'
      LookupDisplay = 'Beneficiario_Nome;Beneficiario_Codigo'
      LookupSource = dstBeneficiario
      ParentFont = False
      TabOrder = 3
    end
    object StaticText4: TStaticText
      Left = 7
      Top = 60
      Width = 66
      Height = 21
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
      TabOrder = 10
      Transparent = False
      StyleElements = []
    end
    object cObservacao: TEdit
      Left = 75
      Top = 60
      Width = 342
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 138
    Width = 937
    Height = 364
    Color = 14024703
    DataSource = dstTitulos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Pitch = fpFixed
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    OnKeyUp = GradeKeyUp
    OnTitleClick = GradeTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Solicitacao_Pgto'
        Title.Alignment = taCenter
        Title.Caption = 'SP'
        Width = 47
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Vencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Data Venc.'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Classificacao'
        Title.Alignment = taCenter
        Title.Caption = 'Classifica'#231#227'o'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_Documento'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' DOC.'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Beneficiario'
        Title.Alignment = taCenter
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Documento'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Doc.'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Parcela'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end>
  end
  object cQtdeTitulos: TCurrencyEdit
    Left = 737
    Top = 53
    Width = 80
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object StaticText5: TStaticText
    Left = 691
    Top = 53
    Width = 44
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'T'#237'tulos'
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
  object tTitulos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT DISTINCT'
      '       Numero,'
      '       PagarReceber.Tipo,'
      
        '       (SELECT Descricao FROM ClassificacaoFinanceira WHERE (Cla' +
        'ssificacaoFinanceira.Codigo = Classificacao)) AS Classificacao,'
      
        '       (SELECT Cambio    FROM ClassificacaoFinanceira WHERE (Cla' +
        'ssificacaoFinanceira.Codigo = Classificacao)) AS Cambio,'
      '       Data_Vencimento,'
      '       Processo,'
      '       Valor_Documento,'
      '       Valor_Parcela,'
      '       Valor_Total,'
      '       Multa,'
      '       Juros,'
      '       Desconto,'
      '       Valor_Operacao,'
      '       Valor_Baixado,'
      '       Parcela,'
      
        '       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.TiposDocum' +
        'entos WHERE(Codigo = PagarReceber.Documento)) AS Documento_Descr' +
        'icao,'
      '       Numero_Documento,'
      '       Data_Documento,'
      
        '       CASE WHEN Fornecedor <> 0  THEN ( SELECT Nome FROM Fornec' +
        'edores WHERE (Fornecedores.Codigo = Fornecedor) )'
      
        '            WHEN Cliente    <> 0  THEN ( SELECT Nome FROM Client' +
        'es     WHERE (Clientes.Codigo     = Cliente) )'
      
        '            WHEN Orgao      <> '#39#39' THEN ( SELECT Nome FROM Cybers' +
        'oft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.' +
        'OrgaosPublicos.Codigo = Orgao) )'
      '       END AS Beneficiario,'
      '       Solicitacao_Pgto'
      'FROM   PagarReceber'
      'WHERE (Valor_Baixado < Valor_Parcela OR Valor_Baixado IS NULL)'
      '      AND (PagarReceber.Tipo = '#39'P'#39')'
      'ORDER BY Numero DESC')
    Left = 256
    Top = 9
    object tTitulosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'PagarReceber.Tipo'
      FixedChar = True
      Size = 1
    end
    object tTitulosClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = '.'
      Size = 60
    end
    object tTitulosData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'PagarReceber.Data_Vencimento'
    end
    object tTitulosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'PagarReceber.Processo'
      Size = 15
    end
    object tTitulosValor_Documento: TCurrencyField
      FieldName = 'Valor_Documento'
      Origin = 'PagarReceber.Valor_Documento'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tTitulosValor_Parcela: TCurrencyField
      FieldName = 'Valor_Parcela'
      Origin = 'PagarReceber.Valor_Parcela'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tTitulosValor_Operacao: TCurrencyField
      FieldName = 'Valor_Operacao'
      Origin = 'PagarReceber.Valor_Operacao'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tTitulosParcela: TStringField
      FieldName = 'Parcela'
      Origin = 'PagarReceber.Parcela'
      FixedChar = True
    end
    object tTitulosBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tTitulosNumero: TLargeintField
      FieldName = 'Numero'
      Origin = 'PagarReceber.Numero'
    end
    object tTitulosValor_Baixado: TCurrencyField
      FieldName = 'Valor_Baixado'
      Origin = 'PagarReceber.Valor_Baixado'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tTitulosValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'PagarReceber.Valor_Total'
      DisplayFormat = '#,##0.00'
    end
    object tTitulosDocumento_Descricao: TStringField
      FieldName = 'Documento_Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 30
    end
    object tTitulosNumero_Documento: TStringField
      FieldName = 'Numero_Documento'
      Origin = 'PagarReceber.Numero_Documento'
      Size = 15
    end
    object tTitulosData_Documento: TDateTimeField
      FieldName = 'Data_Documento'
      Origin = 'PagarReceber.Data_Documento'
    end
    object tTitulosMulta: TCurrencyField
      FieldName = 'Multa'
      Origin = 'PagarReceber.Multa'
    end
    object tTitulosJuros: TCurrencyField
      FieldName = 'Juros'
      Origin = 'PagarReceber.Juros'
    end
    object tTitulosDesconto: TCurrencyField
      FieldName = 'Desconto'
      Origin = 'PagarReceber.Desconto'
    end
    object tTitulosCambio: TBooleanField
      FieldName = 'Cambio'
      Origin = '.'
      ReadOnly = True
    end
    object tTitulosSolicitacao_Pgto: TIntegerField
      FieldName = 'Solicitacao_Pgto'
      Origin = 'PagarReceber.Solicitacao_Pgto'
    end
  end
  object dstTitulos: TDataSource
    DataSet = tTitulos
    Left = 288
    Top = 9
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 320
    Top = 9
  end
  object tBeneficiarios: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT CAST(Codigo AS varchar(10)) AS Beneficiario_Codigo,'
      '       '#39'F'#39' AS Beneficiario_Tipo, '
      '       CAST(Nome AS varchar(50)) AS Beneficiario_Nome'
      'FROM   Fornecedores'
      'UNION ALL'
      'SELECT CAST(Codigo AS varchar(10)), '
      '       '#39'C'#39', '
      '       CAST(Nome AS varchar(50))'
      'FROM   Clientes'
      'UNION ALL'
      'SELECT Codigo, '
      '       '#39'O'#39', '
      '       CAST(Nome AS varchar(50))'
      'FROM   Cybersoft_Cadastros.dbo.OrgaosPublicos'
      'ORDER BY Beneficiario_Nome')
    Left = 352
    Top = 9
    object tBeneficiariosBeneficiario_Codigo: TStringField
      DisplayWidth = 10
      FieldName = 'Beneficiario_Codigo'
      Origin = '.'
      ReadOnly = True
      Size = 10
    end
    object tBeneficiariosBeneficiario_Nome: TStringField
      FieldName = 'Beneficiario_Nome'
      Origin = 'Fornecedores.Nome'
      ReadOnly = True
      Size = 50
    end
    object tBeneficiariosBeneficiario_Tipo: TStringField
      FieldName = 'Beneficiario_Tipo'
      Origin = '.'
      ReadOnly = True
      Size = 1
    end
  end
  object dstBeneficiario: TDataSource
    DataSet = tBeneficiarios
    Left = 384
    Top = 9
  end
  object tRegistro: TMSQuery
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas')
    Left = 416
    Top = 9
  end
  object tSolicitacao: TMSQuery
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
    Left = 447
    Top = 10
  end
end
