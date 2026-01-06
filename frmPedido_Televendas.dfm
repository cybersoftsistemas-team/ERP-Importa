object Pedido_Televendas: TPedido_Televendas
  Left = 612
  Top = 227
  BorderStyle = bsDialog
  Caption = 'Pedido_Televendas'
  ClientHeight = 751
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 802
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitLeft = -8
    ExplicitTop = 2
    ExplicitWidth = 763
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 91
    Height = 21
    Caption = 'TELEVENDAS'
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
    Width = 144
    Height = 18
    Caption = 'Pedidos de Televendas.'
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
    Top = 719
    Width = 802
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 297
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      DataSource = Dados.dsPedidosRepresentantes
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
      TabOrder = 1
      TabStop = True
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bSair: TButton
      AlignWithMargins = True
      Left = 739
      Top = 2
      Width = 62
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bPesquisar: TButton
      AlignWithMargins = True
      Left = 300
      Top = 2
      Width = 67
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens do pedido.   '
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object bItens: TButton
      AlignWithMargins = True
      Left = 368
      Top = 2
      Width = 72
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens do pedido.   '
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Itens [000]'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bItensClick
    end
    object bOrcamento: TButton
      AlignWithMargins = True
      Left = 441
      Top = 2
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens do pedido.   '
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Or'#231'amento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bOrcamentoClick
    end
    object bEmail: TBitBtn
      AlignWithMargins = True
      Left = 657
      Top = 2
      Width = 72
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&E-Mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFF08FFF
        FFFFFFFF0000FFFFFF7708FFFFFFFFFF0000FFFFF00F808FFFFFFFFF0000FFFF
        07FFFF08FFFFFFFF0000FFF00FFFFF808FFFFFFF0000FF07FFFFFFFF08FFFFFF
        0000F70F8FFFFFFF808FFFFF0000878F88FFF8F7F808FFFF0000F787FFFFCFCF
        8FF08FFF0000FF38FFFFFCFCFFF808FF0000FFF78FFFFFCF8FFFF08F0000FFFF
        7007FFFCFFFFF8080000FFF78FFFFF8FFFFFFF870000FFF0000FF87FFFFFFF78
        0000FF78FFFF87FFFFFFF77F0000F0770FF808FF28FF78FF00000888888070F7
        22F77FFF0000770000070F782878FFFF0000FF000000FFF7877FFFFF0000FFFF
        FFFFFFFF88FFFFFF0000}
      Margin = 6
      ParentFont = False
      TabOrder = 5
      OnClick = bEmailClick
    end
    object bExcel: TBitBtn
      AlignWithMargins = True
      Left = 591
      Top = 2
      Width = 65
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      Margin = 6
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = bExcelClick
    end
    object bProposta: TButton
      AlignWithMargins = True
      Left = 516
      Top = 2
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens do pedido.   '
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Proposta'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bPropostaClick
    end
  end
  object pPasta: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 51
    Width = 796
    Height = 608
    Margins.Top = 6
    ActivePage = TabSheet5
    Align = alTop
    TabHeight = 25
    TabOrder = 1
    TabWidth = 125
    OnChange = pPastaChange
    object TabSheet1: TTabSheet
      Caption = '&Pedido'
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 782
        Height = 567
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object bPesquisaCliente: TSpeedButton
          Left = 752
          Top = 49
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
          OnClick = bPesquisaClienteClick
        end
        object StaticText11: TStaticText
          Left = 5
          Top = 5
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pedido N'#186
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
        object cPedido: TDBEdit
          Left = 127
          Top = 5
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Pedido'
          DataSource = Dados.dsPedidosRepresentantes
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = cPedidoChange
        end
        object StaticText1: TStaticText
          Left = 5
          Top = 28
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Atendente'
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
        object cAtendente: TRxDBLookupCombo
          Left = 127
          Top = 28
          Width = 624
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Atendente'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Matricula'
          LookupDisplay = 'Matricula;Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsUsuarios
          ParentFont = False
          TabOrder = 3
          OnChange = cAtendenteChange
        end
        object cCliente: TRxDBLookupCombo
          Left = 127
          Top = 74
          Width = 624
          Height = 21
          DropDownCount = 15
          DropDownWidth = 680
          DisplayAllFields = True
          DataField = 'Cliente'
          DataSource = Dados.dsPedidosRepresentantes
          FieldsDelimiter = '|'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'CNPJ;Nome;Municipio;Estado'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsClientes
          ParentFont = False
          TabOrder = 5
        end
        object lCliente: TStaticText
          Left = 5
          Top = 74
          Width = 120
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
          TabOrder = 33
          Transparent = False
          StyleElements = []
          OnClick = lClienteClick
        end
        object StaticText2: TStaticText
          Left = 229
          Top = 5
          Width = 69
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Pedido'
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
        object DBDateEdit6: TDBDateEdit
          Left = 300
          Top = 5
          Width = 117
          Height = 21
          DataField = 'Data'
          DataSource = Dados.dsPedidosRepresentantes
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
          TabOrder = 1
        end
        object StaticText3: TStaticText
          Left = 5
          Top = 143
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade Pgto'
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
        object cModalidade: TRxDBLookupCombo
          Left = 127
          Top = 143
          Width = 624
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Modalidade_Pagamento'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Descricao'
          LookupSource = Dados.dsModalidadesPgto
          ParentFont = False
          TabOrder = 8
        end
        object StaticText7: TStaticText
          Left = 5
          Top = 235
          Width = 120
          Height = 50
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
          TabOrder = 36
          Transparent = False
          StyleElements = []
        end
        object DBMemo1: TDBMemo
          Left = 127
          Top = 235
          Width = 624
          Height = 50
          DataField = 'Observacao'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText4: TStaticText
          Left = 5
          Top = 189
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Frete Empresa'
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
        object DBEdit1: TDBEdit
          Left = 127
          Top = 189
          Width = 147
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_FreteEmpresa'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object StaticText5: TStaticText
          Left = 5
          Top = 212
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Frete Cliente'
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
          Left = 127
          Top = 212
          Width = 147
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_FreteCliente'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText12: TStaticText
          Left = 5
          Top = 166
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade de Frete'
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
        object cModalideFrete: TRxDBComboBox
          Left = 127
          Top = 166
          Width = 624
          Height = 21
          DataField = 'Modalidade_Frete'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Contrata'#231#227'o do Frete por conta do Remetente (CIF)'
            'Contrata'#231#227'o do Frete por conta do Destinat'#225'rio (FOB)'
            'Contrata'#231#227'o do Frete por conta de Terceiros'
            'Transporte Pr'#243'prio por conta do Remetente'
            'Transporte Pr'#243'prio por conta do Destinat'#225'rio'
            'Sem Ocorr'#234'ncia de Transporte')
          ParentFont = False
          TabOrder = 9
          Values.Strings = (
            '0'
            '1'
            '2'
            '9')
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 127
          Top = 97
          Width = 624
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Transportador'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'CNPJ;Codigo;Nome'
          LookupDisplayIndex = 2
          LookupSource = Dados.dsFornecedores
          ParentFont = False
          TabOrder = 6
        end
        object StaticText15: TStaticText
          Left = 5
          Top = 97
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Transportador'
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
          OnClick = lClienteClick
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 127
          Top = 120
          Width = 624
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Banco'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Conta;Agencia; Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsBancos
          ParentFont = False
          TabOrder = 7
        end
        object StaticText16: TStaticText
          Left = 5
          Top = 120
          Width = 120
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
          TabOrder = 41
          Transparent = False
          StyleElements = []
          OnClick = lClienteClick
        end
        object StaticText17: TStaticText
          Left = 5
          Top = 287
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'INCOTERM'
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
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 127
          Top = 287
          Width = 624
          Height = 21
          DropDownCount = 8
          DataField = 'INCOTERM'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupSource = Dados.dsIncoterms
          ParentFont = False
          TabOrder = 13
        end
        object StaticText18: TStaticText
          Left = 5
          Top = 310
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Armaz'#233'm (Local Entrega)'
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
        object StaticText19: TStaticText
          Left = 5
          Top = 379
          Width = 120
          Height = 21
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
          TabOrder = 44
          Transparent = False
          StyleElements = []
        end
        object DBEdit4: TDBEdit
          Left = 127
          Top = 379
          Width = 133
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_Garantia'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit5: TDBEdit
          Left = 127
          Top = 402
          Width = 133
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_CustoPorto'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object StaticText20: TStaticText
          Left = 5
          Top = 402
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Custos Porto'
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
        object cDataJanIni: TDBDateEdit
          Left = 127
          Top = 425
          Width = 133
          Height = 21
          DataField = 'Data_JanelaIni'
          DataSource = Dados.dsPedidosRepresentantes
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
        object StaticText21: TStaticText
          Left = 5
          Top = 425
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Janela Entrega (Inicio)'
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
        object DBEdit6: TDBEdit
          Left = 127
          Top = 356
          Width = 624
          Height = 21
          DataField = 'Formacao_Preco'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object StaticText22: TStaticText
          Left = 5
          Top = 356
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pre'#231'o'
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
        object StaticText23: TStaticText
          Left = 263
          Top = 425
          Width = 112
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Janela Entrega (Final)'
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
        object cDataJanFim: TDBDateEdit
          Left = 377
          Top = 425
          Width = 113
          Height = 21
          DataField = 'Data_JanelaFim'
          DataSource = Dados.dsPedidosRepresentantes
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
          TabOrder = 21
        end
        object StaticText24: TStaticText
          Left = 5
          Top = 333
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Volumes (Descri'#231#227'o)'
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
        object DBEdit7: TDBEdit
          Left = 127
          Top = 333
          Width = 624
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Volume_Especie'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object cDataRetirada: TDBDateEdit
          Left = 127
          Top = 448
          Width = 133
          Height = 21
          DataField = 'Data_Retirada'
          DataSource = Dados.dsPedidosRepresentantes
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
          TabOrder = 23
        end
        object StaticText25: TStaticText
          Left = 5
          Top = 448
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Retirada'
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
        object cDataPgto: TDBDateEdit
          Left = 127
          Top = 471
          Width = 133
          Height = 21
          DataField = 'Data_Pagamento'
          DataSource = Dados.dsPedidosRepresentantes
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
          TabOrder = 24
        end
        object StaticText26: TStaticText
          Left = 5
          Top = 471
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Pgto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 51
          Transparent = False
          StyleElements = []
        end
        object StaticText27: TStaticText
          Left = 5
          Top = 494
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Percentual Diferen'#231'a'
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
        end
        object DBEdit8: TDBEdit
          Left = 127
          Top = 494
          Width = 133
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Percentual_Diferenca'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        end
        object StaticText28: TStaticText
          Left = 5
          Top = 517
          Width = 120
          Height = 22
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Demurrage'
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
        object DBComboBox1: TDBComboBox
          Left = 127
          Top = 517
          Width = 133
          Height = 21
          Style = csDropDownList
          Color = clBtnFace
          DataField = 'Demurrage'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'COMPRADOR'
            'VENDEDOR')
          ParentFont = False
          TabOrder = 26
        end
        object DBComboBox2: TDBComboBox
          Left = 326
          Top = 517
          Width = 100
          Height = 21
          Style = csDropDownList
          DataField = 'Inspetor'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'COMPRADOR'
            'VENDEDOR')
          ParentFont = False
          TabOrder = 27
        end
        object StaticText29: TStaticText
          Left = 263
          Top = 517
          Width = 62
          Height = 22
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Inspetor'
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
        object StaticText30: TStaticText
          Left = 429
          Top = 517
          Width = 62
          Height = 22
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'AFRMM'
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
        object DBComboBox3: TDBComboBox
          Left = 493
          Top = 517
          Width = 100
          Height = 21
          Style = csDropDownList
          DataField = 'AFRMM'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'COMPRADOR'
            'VENDEDOR')
          ParentFont = False
          TabOrder = 28
        end
        object DBComboBox4: TDBComboBox
          Left = 678
          Top = 517
          Width = 100
          Height = 21
          Style = csDropDownList
          DataField = 'Nacionalizacao'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'COMPRADOR'
            'VENDEDOR')
          ParentFont = False
          TabOrder = 29
        end
        object StaticText31: TStaticText
          Left = 596
          Top = 517
          Width = 80
          Height = 22
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nacionaliza'#231#227'o'
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
        object StaticText32: TStaticText
          Left = 426
          Top = 5
          Width = 83
          Height = 22
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Venda'
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
        end
        object DBComboBox5: TDBComboBox
          Left = 511
          Top = 5
          Width = 240
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'Tipo_Venda'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'SPOT'
            'HEATING OIL')
          ParentFont = False
          TabOrder = 2
        end
        object StaticText33: TStaticText
          Left = 520
          Top = 425
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Multa Atraso'
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
        object DBEdit9: TDBEdit
          Left = 597
          Top = 425
          Width = 115
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_MultaAtraso'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
        end
        object StaticText34: TStaticText
          Left = 263
          Top = 379
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modal.Carregamento'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 59
          Transparent = False
          StyleElements = []
        end
        object cModalCarreg: TDBComboBox
          Left = 377
          Top = 379
          Width = 374
          Height = 21
          DataField = 'Modal_Carregamento'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'BOMBEIO'
            'RODOVI'#193'RIO'
            'TRANSFER'#202'NCIA EM TANQUES')
          ParentFont = False
          TabOrder = 18
        end
        object StaticText35: TStaticText
          Left = 5
          Top = 541
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Volumes (Quantidade)'
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
        object cVolumes: TDBEdit
          Left = 127
          Top = 541
          Width = 133
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Volume_Quantidade'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object cArmazem: TRxDBLookupCombo
          Left = 127
          Top = 310
          Width = 624
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Armazem'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'CNPJ;Codigo;Nome'
          LookupDisplayIndex = 2
          LookupSource = dsTerminais
          ParentFont = False
          TabOrder = 14
        end
        object StaticText36: TStaticText
          Left = 5
          Top = 51
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Nota'
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
          OnClick = lClienteClick
        end
        object cTipoNota: TRxDBLookupCombo
          Left = 127
          Top = 51
          Width = 624
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Tipo_Nota'
          DataSource = Dados.dsPedidosRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsTipoNota
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 3
      object StaticText8: TStaticText
        Left = 1
        Top = 2
        Width = 60
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Atendente'
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
      object cFiltroAtendente: TRxDBLookupCombo
        Left = 63
        Top = 2
        Width = 442
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Matricula'
        LookupDisplay = 'Matricula;Nome'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsUsuarios
        ParentFont = False
        TabOrder = 1
        OnChange = cFiltroAtendenteChange
      end
      object GradeFiltro: TDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 25
        Width = 781
        Height = 466
        DataSource = dstFiltraPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = GradeFiltroDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 73
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
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 282
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_Produtos'
            Title.Alignment = taCenter
            Title.Caption = 'Total Produtos'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Total Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Situacao'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end>
      end
      object cTotalAtendente: TCurrencyEdit
        Left = 624
        Top = 520
        Width = 120
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16766935
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object cTotalPedidosProd: TCurrencyEdit
        Left = 502
        Top = 543
        Width = 120
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16766935
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object StaticText9: TStaticText
        Left = 337
        Top = 520
        Width = 103
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total do Atendente'
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
      object StaticText10: TStaticText
        Left = 337
        Top = 543
        Width = 103
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Geral'
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
      object cFaturados: TCheckBox
        Left = 7
        Top = 513
        Width = 165
        Height = 17
        Caption = 'Mostrar pedidos faturados.'
        TabOrder = 7
        OnClick = cFiltroAtendenteChange
      end
      object cQtdeAtendente: TCurrencyEdit
        Left = 442
        Top = 520
        Width = 58
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16766935
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object cQtdeGeral: TCurrencyEdit
        Left = 442
        Top = 543
        Width = 58
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16766935
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object cCancelados: TCheckBox
        Left = 7
        Top = 533
        Width = 165
        Height = 17
        Caption = 'Mostrar pedidos cancelados.'
        TabOrder = 10
        OnClick = cFiltroAtendenteChange
      end
      object StaticText13: TStaticText
        Left = 502
        Top = 497
        Width = 120
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total dos Produtos'
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
      object cTotalProdAtendente: TCurrencyEdit
        Left = 502
        Top = 520
        Width = 120
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16766935
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object StaticText14: TStaticText
        Left = 624
        Top = 497
        Width = 120
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total do Pedido'
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
      object cTotalPedidos: TCurrencyEdit
        Left = 624
        Top = 543
        Width = 120
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16766935
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Clientes'
      ImageIndex = 2
      DesignSize = (
        788
        573)
      object GradeClientes: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 782
        Height = 538
        Align = alTop
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeClientesCellClick
        OnDrawColumnCell = GradeClientesDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 330
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone1'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 165
            Visible = True
          end>
      end
      object cPesquisa: TEdit
        Left = 136
        Top = 547
        Width = 627
        Height = 21
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = cPesquisaChange
        OnKeyPress = cPesquisaKeyPress
      end
      object StaticText6: TStaticText
        Left = 3
        Top = 547
        Width = 132
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pesquisar Nome/Telefone'
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
    end
    object TabSheet2: TTabSheet
      Caption = 'Compras Realizadas'
      ImageIndex = 2
      object Gradeitens: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 324
        Width = 782
        Height = 246
        Align = alBottom
        DataSource = dstItensNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 70
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
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 477
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'QTDE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 99
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
            Title.Font.Style = [fsBold]
            Width = 107
            Visible = True
          end>
      end
      object GradeNotas: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 782
        Height = 269
        Align = alTop
        DataSource = dstNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 73
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
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_TotalNota'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Forma_Pgto'
            Title.Alignment = taCenter
            Title.Caption = 'Forma de Pagamento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 287
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Situacao'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end>
      end
      object bOrcamentoCompras: TButton
        Left = 349
        Top = 278
        Width = 74
        Height = 28
        Cursor = crHandPoint
        Hint = '   Mostrar os itens do pedido.   '
        Caption = '&Or'#231'amento'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bOrcamentoComprasClick
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Pedidos Aguardando'
      ImageIndex = 4
      object Grade: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 782
        Height = 567
        Align = alClient
        DataSource = Dados.dsPedidosRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
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
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Cliente'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 376
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Total Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Situacao_Televendas'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Pedidos Liberados'
      ImageIndex = 5
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 782
        Height = 532
        Align = alClient
        DataSource = dstLiberados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
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
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Cliente'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 376
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Total Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Situacao_Televendas'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end>
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 541
        Width = 782
        Height = 29
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 299
          Top = 3
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
        end
        object cPesqLib: TLabeledEdit
          Left = 61
          Top = 5
          Width = 238
          Height = 21
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Pesquisa '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 0
          OnChange = cPesqLibChange
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = -2
    Top = 661
    Width = 796
    Height = 54
    Caption = 'TOTAIS DO PEDIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Image5: TImage
      Left = 507
      Top = 16
      Width = 121
      Height = 31
      Stretch = True
    end
    object Image3: TImage
      Left = 8
      Top = 16
      Width = 121
      Height = 31
      Stretch = True
    end
    object Label13: TLabel
      Left = 12
      Top = 18
      Width = 80
      Height = 11
      Caption = 'ICMS Operacional:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Image4: TImage
      Left = 132
      Top = 16
      Width = 121
      Height = 31
      Stretch = True
    end
    object Label15: TLabel
      Left = 136
      Top = 18
      Width = 80
      Height = 11
      Caption = 'ICMS Substitutivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 511
      Top = 18
      Width = 107
      Height = 11
      Caption = 'Total dos Produtos + IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Image6: TImage
      Left = 382
      Top = 16
      Width = 121
      Height = 31
      Stretch = True
    end
    object Label19: TLabel
      Left = 386
      Top = 18
      Width = 41
      Height = 11
      Caption = 'Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Image7: TImage
      Left = 257
      Top = 16
      Width = 121
      Height = 31
      Stretch = True
    end
    object Label21: TLabel
      Left = 261
      Top = 18
      Width = 17
      Height = 11
      Caption = 'IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lTotalICMS: TLabel
      Left = 10
      Top = 27
      Width = 114
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lTotalICMSST: TLabel
      Left = 134
      Top = 27
      Width = 114
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lTotalIPI: TLabel
      Left = 259
      Top = 27
      Width = 114
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lTotalDesconto: TLabel
      Left = 384
      Top = 27
      Width = 114
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lTotalProdutos: TLabel
      Left = 509
      Top = 27
      Width = 114
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Image8: TImage
      Left = 632
      Top = 16
      Width = 157
      Height = 31
      Stretch = True
    end
    object Label1: TLabel
      Left = 636
      Top = 18
      Width = 72
      Height = 11
      Caption = 'Total c/Impostos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lTotalImpostos: TLabel
      Left = 634
      Top = 27
      Width = 150
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 90
    Top = 12
  end
  object tClientes: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 139
    Top = 10
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 182
    Top = 9
  end
  object pPedidos: TppDBPipeline
    DataSource = dstPedidos
    CloseDataSource = True
    UserName = 'pPedidos'
    Left = 480
    Top = 104
  end
  object pEmpresa: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresa'
    Left = 480
    Top = 55
    object pEmpresappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object pEmpresappField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
      Position = 1
    end
    object pEmpresappField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pEmpresappField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pEmpresappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pEmpresappField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pEmpresappField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object pEmpresappField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object pEmpresappField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pEmpresappField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object pEmpresappField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object pEmpresappField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object pEmpresappField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresappField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pEmpresappField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pEmpresappField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object pEmpresappField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pEmpresappField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pEmpresappField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pEmpresappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pEmpresappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pEmpresappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pEmpresappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresappField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object pEmpresappField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object pEmpresappField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object pEmpresappField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pEmpresappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pEmpresappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresappField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pEmpresappField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object pEmpresappField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pEmpresappField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object pEmpresappField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object pEmpresappField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresappField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresappField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object pEmpresappField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object pEmpresappField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresappField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresappField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object pEmpresappField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresappField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pEmpresappField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object pEmpresappField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object pEmpresappField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object pEmpresappField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object pEmpresappField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pEmpresappField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object pEmpresappField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object pEmpresappField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object pEmpresappField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object pEmpresappField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresappField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresappField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresappField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresappField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object pEmpresappField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object pEmpresappField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresappField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresappField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object pEmpresappField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresappField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object pEmpresappField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresappField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresappField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresappField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresappField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object pEmpresappField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object pEmpresappField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pEmpresappField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object pEmpresappField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresappField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pEmpresappField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresappField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresappField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object pEmpresappField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object pEmpresappField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object pEmpresappField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pEmpresappField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresappField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresappField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pEmpresappField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object pEmpresappField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pEmpresappField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pEmpresappField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresappField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresappField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresappField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresappField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresappField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object pEmpresappField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object pEmpresappField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresappField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresappField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresappField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object pEmpresappField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object pEmpresappField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object pEmpresappField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object pEmpresappField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresappField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresappField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresappField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object pEmpresappField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresappField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object pEmpresappField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object pEmpresappField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object pEmpresappField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresappField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object pEmpresappField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresappField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object pEmpresappField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresappField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresappField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object pEmpresappField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresappField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresappField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object pEmpresappField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresappField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pEmpresappField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresappField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresappField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object pEmpresappField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object pEmpresappField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresappField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresappField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresappField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object pEmpresappField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object pEmpresappField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresappField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pEmpresappField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresappField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object pEmpresappField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresappField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pEmpresappField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pEmpresappField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object pEmpresappField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object pEmpresappField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object pEmpresappField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object pEmpresappField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pEmpresappField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pEmpresappField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresappField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object pEmpresappField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pEmpresappField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object pEmpresappField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresappField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pEmpresappField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object pEmpresappField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object pEmpresappField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object pEmpresappField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object pEmpresappField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object pEmpresappField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object pEmpresappField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object pEmpresappField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pEmpresappField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object pEmpresappField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object pEmpresappField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object pEmpresappField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object pEmpresappField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object pEmpresappField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object pEmpresappField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresappField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object pEmpresappField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object pEmpresappField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pEmpresappField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresappField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresappField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresappField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object pEmpresappField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresappField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresappField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object pEmpresappField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object pEmpresappField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresappField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresappField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresappField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresappField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresappField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresappField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresappField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresappField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object pEmpresappField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object pEmpresappField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object pEmpresappField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresappField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresappField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresappField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object pEmpresappField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object pEmpresappField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object pEmpresappField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object pEmpresappField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object pEmpresappField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresappField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object pEmpresappField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object pEmpresappField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresappField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object pEmpresappField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object pEmpresappField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object pEmpresappField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object pEmpresappField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object pEmpresappField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object pEmpresappField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object pEmpresappField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object pEmpresappField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresappField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresappField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object pEmpresappField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object pEmpresappField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
    object pEmpresappField212: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ultimo_NSU'
      FieldName = 'Ultimo_NSU'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 211
    end
    object pEmpresappField213: TppField
      FieldAlias = 'UF_WEBServiceEPEC'
      FieldName = 'UF_WEBServiceEPEC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 212
    end
    object pEmpresappField214: TppField
      FieldAlias = 'Licensa_CTE_Util'
      FieldName = 'Licensa_CTE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 213
      Searchable = False
      Sortable = False
    end
    object pEmpresappField215: TppField
      FieldAlias = 'UF_WebServiceCTe'
      FieldName = 'UF_WebServiceCTe'
      FieldLength = 10
      DisplayWidth = 10
      Position = 214
    end
    object pEmpresappField216: TppField
      FieldAlias = 'Email_Criptografia'
      FieldName = 'Email_Criptografia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 215
    end
    object pEmpresappField217: TppField
      FieldAlias = 'Email_MsgFollowUp'
      FieldName = 'Email_MsgFollowUp'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 216
      Searchable = False
      Sortable = False
    end
    object pEmpresappField218: TppField
      FieldAlias = 'FCP_Interno'
      FieldName = 'FCP_Interno'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 217
    end
    object pEmpresappField219: TppField
      FieldAlias = 'ImportarPlanPed_Bloqueado'
      FieldName = 'ImportarPlanPed_Bloqueado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 218
    end
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *, '
      
        '      (SELECT Descricao FROM Cybersoft_Cadastros.dbo.Modalidades' +
        'Pagamento MP WHERE MP.Codigo = Modalidade_Pagamento) AS Descrica' +
        'o_Modalidade,'
      
        '      (SELECT Descricao FROM RamoAtividade RA WHERE RA.Codigo = ' +
        'Cliente_Ramo) AS Descricao_Ramo,'
      
        '      (SELECT Nome FROM Cybersoft_Cadastros.dbo.Usuarios WHERE M' +
        'atricula = Atendente) AS Atendente_Nome,'
      
        '      (SELECT SUM(Peso_Unitario*Quantidade) FROM PedidosRepresen' +
        'tantesItens PRI WHERE PRI.Pedido = PR.Pedido) AS Peso,'
      
        '      (SELECT '#39'AG: '#39'+ISNULL(Agencia, '#39#39')+'#39'  CC: '#39'+ISNULL(Conta, ' +
        #39#39')+'#39'  BANCO: '#39'+Nome FROM Bancos WHERE Codigo = Banco) AS Dados_' +
        'Bancarios'
      'FROM  PedidosRepresentantes PR'
      ''
      ''
      '')
    FetchRows = 1
    Left = 347
    Top = 8
  end
  object dstPedidos: TDataSource
    DataSet = tPedidos
    Left = 349
    Top = 57
  end
  object pItens: TppDBPipeline
    DataSource = dstItens
    CloseDataSource = True
    UserName = 'pItens'
    Left = 480
    Top = 8
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Item'
      '       ,Codigo_Mercadoria'
      '       ,Quantidade'
      
        '       ,Unidade        = (SELECT Unidade   FROM Produtos WHERE C' +
        'odigo = Codigo_Mercadoria)'
      
        '       ,Descricao      = CASE WHEN (SELECT CHARINDEX('#39'<{'#39', Descr' +
        'icao) FROM Produtos WHERE Codigo = Codigo_Mercadoria) > 0 THEN'
      
        '                              (SELECT SUBSTRING(CAST(Descricao A' +
        'S VARCHAR(500)), 1 , CHARINDEX('#39'<{'#39', Descricao)-1) FROM Produtos' +
        ' WHERE Codigo = Codigo_Mercadoria)'
      '                         ELSE'
      
        '                              (SELECT CAST(Descricao AS VARCHAR(' +
        '500)) FROM Produtos WHERE Codigo = Codigo_Mercadoria)'
      '                         END'
      '       ,Valor_Tabela   = (Valor_Tabela + Valor_IPI)'
      '       ,Preco_Liquido  = Valor_Unitario + Valor_IPI'
      '       ,Valor_Total    = Valor_Unitario * Quantidade'
      '       ,Desconto'
      '       ,Valor_Desconto'
      '       ,Total_Desconto = (Valor_Desconto * Quantidade)'
      
        '       ,Valor_TotalImp = (Valor_Unitario+Valor_ICMSST) * Quantid' +
        'ade'
      '       ,Total_Item      = Valor_Unitario+Valor_ICMSST'
      'FROM   PedidosRepresentantesItens')
    FetchRows = 1
    Left = 411
    Top = 9
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 411
    Top = 57
  end
  object PopupMenu1: TPopupMenu
    Left = 154
    Top = 244
    object ConfirmarPedido1: TMenuItem
      Caption = '&Confirmar Pedido'
      OnClick = ConfirmarPedido1Click
    end
    object ConfirmarTodososPedidos1: TMenuItem
      Caption = 'Confirmar &Todos os Pedidos'
      OnClick = ConfirmarTodososPedidos1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CancelarConfirmao1: TMenuItem
      Caption = 'Cancelar Con&firma'#231#227'o'
      OnClick = CancelarConfirmao1Click
    end
    object CancelarConfirmaodeTodososPedidos1: TMenuItem
      Caption = 'Cancelar Confir&ma'#231#227'o de Todos os Pedidos'
      OnClick = CancelarConfirmaodeTodososPedidos1Click
    end
  end
  object SMTP: TIdSMTP
    IOHandler = SSLSocket
    AuthType = satNone
    SASLMechanisms = <>
    Left = 602
    Top = 9
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
    Left = 602
    Top = 60
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 602
    Top = 109
  end
  object rOrcamento: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Or'#231'amento'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\Televendas_Orcam' +
      'ento.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
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
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 699
    Top = 246
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 68263
      mmPrintPosition = 0
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape6'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 83608
        mmTop = 30163
        mmWidth = 101865
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape5'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 39688
        mmTop = 30163
        mmWidth = 43392
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 0
        mmTop = 30163
        mmWidth = 39158
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresa'
        mmHeight = 7676
        mmLeft = 27516
        mmTop = 2381
        mmWidth = 256650
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OR'#199'AMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7938
        mmLeft = 27516
        mmTop = 11377
        mmWidth = 256650
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape15'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 132292
        mmTop = 43392
        mmWidth = 46038
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 133086
        mmTop = 43921
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape16'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 0
        mmTop = 43392
        mmWidth = 131763
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 795
        mmTop = 44186
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Cliente_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 28415
        mmTop = 44980
        mmWidth = 102126
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Cliente_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 142346
        mmTop = 44980
        mmWidth = 34131
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Cliente'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 14392
        mmTop = 44980
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape9'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 178859
        mmTop = 43392
        mmWidth = 36513
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 179652
        mmTop = 43921
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Cliente_IE'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 188913
        mmTop = 44980
        mmWidth = 24606
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 17198
        mmTop = 45244
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 795
        mmTop = 30692
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        Color = clSilver
        DataField = 'Pedido'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 4763
        mmLeft = 13229
        mmTop = 30692
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Brush.Color = 16766935
        Pen.Style = psClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25665
        mmWidth = 284163
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3429
        mmLeft = 795
        mmTop = 25930
        mmWidth = 282311
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 40481
        mmTop = 30692
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        Color = clSilver
        DataField = 'Data'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 4763
        mmLeft = 49213
        mmTop = 30692
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'MODAL.PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 84402
        mmTop = 30692
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Descricao_Modalidade'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 99748
        mmTop = 32280
        mmWidth = 84402
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape7'
        Brush.Color = 16766935
        Pen.Style = psClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4234
        mmLeft = 0
        mmTop = 38894
        mmWidth = 284163
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3429
        mmLeft = 795
        mmTop = 39159
        mmWidth = 282311
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape8'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 0
        mmTop = 49742
        mmWidth = 98690
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 795
        mmTop = 50536
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Cliente_Rua'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 13401
        mmTop = 51330
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape10'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 99219
        mmTop = 49742
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 100013
        mmTop = 50536
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Cliente_RuaNumero'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 105304
        mmTop = 51330
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape101'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 132292
        mmTop = 49742
        mmWidth = 83079
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COMPL.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 133086
        mmTop = 50536
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'Cliente_Complemento'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 142082
        mmTop = 51330
        mmWidth = 71702
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape12'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 215900
        mmTop = 49742
        mmWidth = 68263
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 216430
        mmTop = 50536
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'Cliente_Bairro'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 226484
        mmTop = 51330
        mmWidth = 56356
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape13'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 99219
        mmTop = 56092
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 100013
        mmTop = 56886
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Cliente_Estado'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 105304
        mmTop = 57680
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape14'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 125148
        mmTop = 56092
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 125942
        mmTop = 56886
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Cliente_CEP'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 130969
        mmTop = 57680
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 0
        mmTop = 56092
        mmWidth = 98690
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 795
        mmTop = 56886
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'Cliente_MunicipioNome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 13401
        mmTop = 57680
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 158221
        mmTop = 56092
        mmWidth = 40481
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 159015
        mmTop = 56886
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'Cliente_Telefone'
        DataPipeline = pPedidos
        DisplayFormat = '## #########;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 171450
        mmTop = 57680
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape17'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 215900
        mmTop = 43392
        mmWidth = 68263
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'RAMO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 216694
        mmTop = 43921
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'Descricao_Ramo'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 225955
        mmTop = 44980
        mmWidth = 56886
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape18'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 199232
        mmTop = 56092
        mmWidth = 84931
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTATO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 200025
        mmTop = 56886
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'Cliente_Contato'
        DataPipeline = pPedidos
        DisplayFormat = '## #########;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 212461
        mmTop = 57680
        mmWidth = 70379
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape19'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 0
        mmTop = 62442
        mmWidth = 124619
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'EMAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 795
        mmTop = 63236
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'Cliente_Email'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 13401
        mmTop = 64030
        mmWidth = 107421
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape20'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 186002
        mmTop = 30163
        mmWidth = 70379
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ATENDENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 187061
        mmTop = 30692
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'Atendente_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 202142
        mmTop = 32280
        mmWidth = 52917
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape41: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape202'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 256911
        mmTop = 30163
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label44'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SITUA'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 257969
        mmTop = 30692
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText202'
        Border.mmPadding = 0
        DataField = 'Situacao_Televendas'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 258498
        mmTop = 32280
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape34: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape34'
        Pen.Color = 4194368
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 125148
        mmTop = 62442
        mmWidth = 159015
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label36'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DADOS BANC'#193'RIOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 125942
        mmTop = 63236
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Dados_Bancarios'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 148696
        mmTop = 64030
        mmWidth = 133879
        BandType = 0
        LayerName = Foreground1
      end
      object OrcamentoLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'HeatingLogo1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 20726
        mmLeft = 0
        mmTop = 0
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Or'#231'amento'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pItens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7938
            mmPrintPosition = 0
            object ppShape24: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape24'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 120121
              mmTop = 4498
              mmWidth = 5292
              BandType = 1
              LayerName = Foreground
            end
            object ppShape23: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape23'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 28575
              mmTop = 4498
              mmWidth = 91281
              BandType = 1
              LayerName = Foreground
            end
            object ppShape22: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape22'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 7144
              mmTop = 4498
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel23: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label23'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'C'#211'DIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 7144
              mmTop = 4763
              mmWidth = 21167
              BandType = 1
              LayerName = Foreground
            end
            object ppShape21: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape21'
              Brush.Color = 16766935
              Pen.Style = psClear
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 4234
              mmLeft = 0
              mmTop = 0
              mmWidth = 284163
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label25'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'ITENS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3429
              mmLeft = 1058
              mmTop = 265
              mmWidth = 282311
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel24: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label24'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DESCRI'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 28575
              mmTop = 4763
              mmWidth = 91281
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel26: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label26'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'UM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 120121
              mmTop = 4763
              mmWidth = 5292
              BandType = 1
              LayerName = Foreground
            end
            object ppShape25: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape25'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 125677
              mmTop = 4498
              mmWidth = 14817
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel27: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label27'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'QTDE.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 125677
              mmTop = 4763
              mmWidth = 14817
              BandType = 1
              LayerName = Foreground
            end
            object ppShape26: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape26'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 140759
              mmTop = 4498
              mmWidth = 17463
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label28'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'P.TABELA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 140759
              mmTop = 4763
              mmWidth = 17463
              BandType = 1
              LayerName = Foreground
            end
            object ppShape27: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape27'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 158486
              mmTop = 4498
              mmWidth = 9790
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label29'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DESC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 158486
              mmTop = 4763
              mmWidth = 9790
              BandType = 1
              LayerName = Foreground
            end
            object ppShape28: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape28'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 168540
              mmTop = 4498
              mmWidth = 13494
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label30'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'VLR.DESC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 168540
              mmTop = 4763
              mmWidth = 13228
              BandType = 1
              LayerName = Foreground
            end
            object ppShape29: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape29'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 182298
              mmTop = 4498
              mmWidth = 14552
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label301'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'P.L'#205'QUIDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 182298
              mmTop = 4763
              mmWidth = 14552
              BandType = 1
              LayerName = Foreground
            end
            object ppShape30: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape30'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 197115
              mmTop = 4498
              mmWidth = 13229
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label302'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'T.DESC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 197115
              mmTop = 4763
              mmWidth = 13229
              BandType = 1
              LayerName = Foreground
            end
            object ppShape31: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape301'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 265907
              mmTop = 4498
              mmWidth = 18256
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label33'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'VLR.TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 265907
              mmTop = 4763
              mmWidth = 18256
              BandType = 1
              LayerName = Foreground
            end
            object ppShape32: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape302'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 210609
              mmTop = 4498
              mmWidth = 23813
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label34'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'IPI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 210609
              mmTop = 4763
              mmWidth = 23813
              BandType = 1
              LayerName = Foreground
            end
            object ppShape33: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape33'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 234686
              mmTop = 4498
              mmWidth = 15346
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label35'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'ICMS ST'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 234686
              mmTop = 4763
              mmWidth = 15346
              BandType = 1
              LayerName = Foreground
            end
            object ppShape35: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape35'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 0
              mmTop = 4498
              mmWidth = 6879
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel38: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label38'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'ITEM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 0
              mmTop = 4763
              mmWidth = 6879
              BandType = 1
              LayerName = Foreground
            end
            object ppShape40: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape40'
              Pen.Color = 4194368
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3440
              mmLeft = 250296
              mmTop = 4498
              mmWidth = 15346
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel43: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label43'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL UNIT.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3006
              mmLeft = 250296
              mmTop = 4763
              mmWidth = 15346
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            AfterPrint = ppDetailBand2AfterPrint
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText21'
              Border.mmPadding = 0
              DataField = 'Codigo_Mercadoria'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3006
              mmLeft = 7673
              mmTop = 0
              mmWidth = 20638
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText23'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Unidade'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3006
              mmLeft = 119856
              mmTop = 0
              mmWidth = 5292
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText24'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 125677
              mmTop = 0
              mmWidth = 14288
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText25'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_Tabela'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 140759
              mmTop = 0
              mmWidth = 16934
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText26'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Desconto'
              DataPipeline = pItens
              DisplayFormat = ',##0.00%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 158486
              mmTop = 0
              mmWidth = 9261
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText27'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_Desconto'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 168539
              mmTop = 0
              mmWidth = 13228
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText28'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Preco_Liquido'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 182299
              mmTop = 0
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText29'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Total_Desconto'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 197115
              mmTop = 0
              mmWidth = 12700
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText30'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_TotalImp'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 265908
              mmTop = 0
              mmWidth = 17727
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText31'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_IPI'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 220135
              mmTop = 0
              mmWidth = 13759
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText32'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_ICMSST'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 234686
              mmTop = 0
              mmWidth = 14816
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText33'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Aliquota_IPI'
              DataPipeline = pItens
              DisplayFormat = ',##0.00%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 210610
              mmTop = 0
              mmWidth = 8202
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText35: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText35'
              Border.mmPadding = 0
              DataField = 'Item'
              DataPipeline = pItens
              DisplayFormat = '0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3006
              mmLeft = 0
              mmTop = 0
              mmWidth = 6879
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText38: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText38'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Total_Item'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3005
              mmLeft = 250297
              mmTop = 0
              mmWidth = 14816
              BandType = 4
              LayerName = Foreground
            end
            object ppDBMemo1: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo1'
              ForceJustifyLastLine = True
              KeepTogether = True
              Border.mmPadding = 0
              CharWrap = True
              DataField = 'Descricao'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 28575
              mmTop = 0
              mmWidth = 91281
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 119856
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 28310
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 6879
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 0
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 125413
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 140494
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 158221
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 168275
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 182034
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 196850
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line101'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 210344
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 234421
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 250032
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 265642
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line19'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              ParentHeight = True
              Position = lpRight
              StretchWithParent = True
              mmHeight = 2910
              mmLeft = 282840
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppFooterBand2: TppFooterBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 30427
            mmPrintPosition = 0
            object ppShape38: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape38'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 18521
              mmLeft = 0
              mmTop = 11906
              mmWidth = 170657
              BandType = 7
              LayerName = Foreground
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 284163
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Valor_Tabela'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'pItens'
              mmHeight = 3006
              mmLeft = 140759
              mmTop = 529
              mmWidth = 16934
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'Valor_Desconto'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 168539
              mmTop = 529
              mmWidth = 13228
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'Preco_Liquido'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 182299
              mmTop = 529
              mmWidth = 14023
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc5'
              Border.mmPadding = 0
              DataField = 'Total_Desconto'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 197115
              mmTop = 529
              mmWidth = 12700
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc6: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc6'
              Border.mmPadding = 0
              DataField = 'Valor_IPI'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 220135
              mmTop = 529
              mmWidth = 13759
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc7: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc7'
              Border.mmPadding = 0
              DataField = 'Valor_ICMSST'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 234686
              mmTop = 529
              mmWidth = 14816
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc8: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc8'
              Border.mmPadding = 0
              DataField = 'Valor_TotalImp'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 265908
              mmTop = 529
              mmWidth = 17727
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel37: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label37'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAIS:  '
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              mmHeight = 2910
              mmLeft = 529
              mmTop = 529
              mmWidth = 124619
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc9: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc9'
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 125677
              mmTop = 529
              mmWidth = 14288
              BandType = 7
              LayerName = Foreground
            end
            object ppShape36: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape201'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 5821
              mmLeft = 249238
              mmTop = 18256
              mmWidth = 34925
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel39: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label39'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'PESO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2381
              mmLeft = 250032
              mmTop = 18785
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText36: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText201'
              Border.mmPadding = 0
              DataField = 'Peso'
              DataPipeline = pPedidos
              DisplayFormat = ',##0.000 Kg'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pPedidos'
              mmHeight = 3440
              mmLeft = 260880
              mmTop = 19844
              mmWidth = 21960
              BandType = 7
              LayerName = Foreground
            end
            object ppShape37: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape37'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 5821
              mmLeft = 249238
              mmTop = 11906
              mmWidth = 34925
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel40: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label40'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'VOLUMES:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2381
              mmLeft = 250032
              mmTop = 12435
              mmWidth = 10848
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc10: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc10'
              Border.mmPadding = 0
              DataField = 'Item'
              DataPipeline = pItens
              DisplayFormat = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 260880
              mmTop = 13758
              mmWidth = 21960
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel41: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label41'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Observa'#231#245'es:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 0
              mmLeft = 1058
              mmTop = 8467
              mmWidth = 15081
              BandType = 7
              LayerName = Foreground
            end
            object ppDBText37: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText37'
              Border.mmPadding = 0
              DataField = 'Observacao'
              DataPipeline = pPedidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              WordWrap = True
              DataPipelineName = 'pPedidos'
              mmHeight = 17463
              mmLeft = 1058
              mmTop = 12435
              mmWidth = 169069
              BandType = 7
              LayerName = Foreground
            end
            object ppShape39: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape39'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 5821
              mmLeft = 249238
              mmTop = 24606
              mmWidth = 34925
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel42: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label401'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2381
              mmLeft = 250032
              mmTop = 25135
              mmWidth = 10848
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc11: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc11'
              Border.mmPadding = 0
              DataField = 'Valor_TotalImp'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 260880
              mmTop = 26458
              mmWidth = 21960
              BandType = 7
              LayerName = Foreground
            end
            object lMediaDesconto: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'lMediaDesconto'
              Border.mmPadding = 0
              BlankWhenZero = True
              CalcOrder = 0
              DataType = dtDouble
              DisplayFormat = ',##0.00%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 2910
              mmLeft = 158486
              mmTop = 529
              mmWidth = 9261
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Total_Item'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 250297
              mmTop = 529
              mmWidth = 14816
              BandType = 7
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 529
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 125413
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line102'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 140494
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line26'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 158221
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line27'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 168275
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line28'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 182034
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine29: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line29'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 196850
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine30: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line30'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 210344
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine31: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line31'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 234421
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine32: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line32'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 250032
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine33: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line33'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 265642
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine34: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line34'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 0
              Position = lpRight
              StretchWithParent = True
              mmHeight = 3969
              mmLeft = 282840
              mmTop = 0
              mmWidth = 1323
              BandType = 7
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 1058
              mmLeft = 0
              mmTop = 3969
              mmWidth = 284163
              BandType = 7
              LayerName = Foreground
            end
          end
          object raCodeModule1: TraCodeModule
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 0
        mmTop = 529
        mmWidth = 43519
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 109009
        mmTop = 529
        mmWidth = 65088
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 174361
        mmTop = 529
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 0
        mmWidth = 5821
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 268553
        mmTop = 529
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3704
        mmLeft = 265642
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground1
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object tItensNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo_Mercadoria'
      '      ,Descricao = CAST(Descricao_Mercadoria AS VARCHAR(500))'
      '      ,Quantidade'
      '      ,Valor_Unitario'
      '      ,Nota'
      'FROM  NotasItens NI'
      'WHERE Nota = 1389'
      'UNION ALL'
      'SELECT Codigo_Mercadoria'
      
        '      ,Descricao = CAST((SELECT Descricao FROM Produtos WHERE Co' +
        'digo = Codigo_Mercadoria) AS VARCHAR(500))'
      '      ,Quantidade'
      '      ,Valor_Unitario'
      '      ,Pedido'
      'FROM  PedidosRepresentantesItens PRI'
      'WHERE Pedido = 6'
      'ORDER BY Codigo_Mercadoria')
    FetchRows = 1
    Left = 285
    Top = 9
    object tItensNotasCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = '.'
      ReadOnly = True
    end
    object tItensNotasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 500
    end
    object tItensNotasQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tItensNotasValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tItensNotasNota: TIntegerField
      FieldName = 'Nota'
      Origin = '.'
      ReadOnly = True
    end
  end
  object dstItensNotas: TDataSource
    DataSet = tItensNotas
    Left = 289
    Top = 58
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Nota = Numero'
      '      ,Pedido = '#39'T0'#39
      '      ,Data = Data_Emissao'
      '      ,Valor_TotalNota'
      
        '      ,Forma_Pgto = ( SELECT Descricao FROM Cybersoft_Cadastros.' +
        'dbo.ModalidadesPagamento MP WHERE Codigo = Modalidade_Pgto)'
      '      ,Situacao  = '#39'FATURADO'#39
      'FROM  NotasFiscais NF'
      '--WHERE Cliente_Codigo = 44'
      'UNION ALL'
      'SELECT Nota = 0'
      '      ,Pedido = '#39'T0'#39
      '      ,Data'
      '      ,0'
      
        '      ,Forma_Pgto = (SELECT Descricao FROM Cybersoft_Cadastros.d' +
        'bo.ModalidadesPagamento MP WHERE Codigo = Modalidade_Pagamento)'
      '      ,Situacao  = Situacao'
      'FROM  PedidosRepresentantes PR'
      '--WHERE Faturado = 0 AND Cliente = 44'
      'ORDER BY Data desc'
      '')
    FetchRows = 1
    AfterScroll = tNotasAfterScroll
    Left = 222
    Top = 10
    object tNotasPedido: TStringField
      FieldName = 'Pedido'
      ReadOnly = True
      Size = 2
    end
    object tNotasNota: TIntegerField
      FieldName = 'Nota'
      Origin = '.'
      ReadOnly = True
    end
    object tNotasData: TDateTimeField
      FieldName = 'Data'
      Origin = '.'
      ReadOnly = True
    end
    object tNotasValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tNotasForma_Pgto: TStringField
      FieldName = 'Forma_Pgto'
      Origin = '.'
      ReadOnly = True
      Size = 40
    end
    object tNotasSituacao: TStringField
      FieldName = 'Situacao'
      Origin = '.'
      ReadOnly = True
      Size = 15
    end
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 221
    Top = 58
  end
  object tFiltraPed: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  Pedido'
      '       ,Data'
      '       ,Modalidade_Pagamento'
      '       ,Cliente_Nome'
      '       ,Cliente_Estado'
      
        '       ,(SELECT Descricao FROM Cybersoft_Cadastros.dbo.Modalidad' +
        'esPagamento MP WHERE MP.Codigo = Modalidade_Pagamento) AS Descri' +
        'cao_Modalidade'
      
        '       ,(SELECT Descricao FROM RamoAtividade RA WHERE RA.Codigo ' +
        '= Cliente_Ramo) AS Descricao_Ramo'
      
        '       ,(SELECT Nome FROM Cybersoft_Cadastros.dbo.Usuarios WHERE' +
        ' Matricula = Atendente) AS Atendente_Nome'
      
        '       ,(SELECT SUM(Peso_Unitario*Quantidade) FROM PedidosRepres' +
        'entantesItens PRI WHERE PRI.Pedido = PR.Pedido) AS Peso'
      '       ,Total_Pedido'
      
        '       ,(SELECT SUM((Valor_Unitario-Valor_IPI) * Quantidade) FRO' +
        'M PedidosRepresentantesItens PRI WHERE PRI.Pedido = PR.Pedido) A' +
        'S Total_Produtos'
      '       ,Situacao '
      '       ,Cancelado'
      '       ,Faturado'
      'FROM  PedidosRepresentantes PR')
    FetchRows = 1
    Left = 602
    Top = 245
    object tFiltraPedPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tFiltraPedData: TDateTimeField
      FieldName = 'Data'
      Origin = 'Cybersoft_MV..PedidosRepresentantes.Data'
    end
    object tFiltraPedModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
      Origin = 'Cybersoft_MV..PedidosRepresentantes.Modalidade_Pagamento'
    end
    object tFiltraPedCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Origin = 'Cybersoft_MV..PedidosRepresentantes.Cliente_Nome'
      Size = 50
    end
    object tFiltraPedCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Origin = 'Cybersoft_MV..PedidosRepresentantes.Cliente_Estado'
      Size = 2
    end
    object tFiltraPedDescricao_Modalidade: TStringField
      FieldName = 'Descricao_Modalidade'
      Origin = '.'
      ReadOnly = True
      Size = 40
    end
    object tFiltraPedDescricao_Ramo: TStringField
      FieldName = 'Descricao_Ramo'
      Origin = '.'
      ReadOnly = True
      Size = 40
    end
    object tFiltraPedAtendente_Nome: TStringField
      FieldName = 'Atendente_Nome'
      Origin = '.'
      ReadOnly = True
      Size = 50
    end
    object tFiltraPedPeso: TFloatField
      FieldName = 'Peso'
      Origin = '.'
      ReadOnly = True
    end
    object tFiltraPedTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      Origin = 'Cybersoft_MV..PedidosRepresentantes.Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tFiltraPedSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'Cybersoft_MV..PedidosRepresentantes.Situacao'
    end
    object tFiltraPedCancelado: TBooleanField
      FieldName = 'Cancelado'
      Origin = 'Cybersoft_MV..PedidosRepresentantes.Cancelado'
    end
    object tFiltraPedFaturado: TBooleanField
      FieldName = 'Faturado'
      Origin = 'Cybersoft_MV..PedidosRepresentantes.Faturado'
    end
    object tFiltraPedTotal_Produtos: TFloatField
      FieldName = 'Total_Produtos'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
  end
  object dstFiltraPed: TDataSource
    DataSet = tFiltraPed
    Left = 602
    Top = 298
  end
  object tSomaPed: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 521
    Top = 247
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 432
    Top = 248
  end
  object mPlan: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 431
    Top = 301
  end
  object rHeating: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'PROPOSTA - HEATING OIL'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
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
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\Televendas_Orcam' +
      'ento.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rHeatingBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
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
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 704
    Top = 367
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 53975
      mmPrintPosition = 0
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresa'
        mmHeight = 5821
        mmLeft = 331
        mmTop = 34396
        mmWidth = 197776
        BandType = 0
        LayerName = BandLayer4
      end
      object HeatingLogo: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'HeatingLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 24423
        mmLeft = 87521
        mmTop = 3900
        mmWidth = 28494
        BandType = 0
        LayerName = BandLayer4
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 199761
      mmPrintPosition = 0
      object ppShape42: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape42'
        Brush.Style = bsClear
        mmHeight = 169326
        mmLeft = 5608
        mmTop = 6119
        mmWidth = 185616
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label46'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 7158
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText40'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresa'
        mmHeight = 3704
        mmLeft = 37945
        mmTop = 7158
        mmWidth = 151422
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line21'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Color = 6052956
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 169331
        mmLeft = 35447
        mmTop = 6119
        mmWidth = 1773
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line22'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 5871
        mmTop = 11286
        mmWidth = 185340
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label47'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COMPRADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 12449
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line35'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2057
        mmLeft = 5677
        mmTop = 16717
        mmWidth = 185340
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label48'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 18006
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText42'
        Border.mmPadding = 0
        DataField = 'Descricao'
        DataPipeline = pItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 3704
        mmLeft = 37945
        mmTop = 18006
        mmWidth = 151422
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line36'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5899
        mmTop = 22649
        mmWidth = 185340
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label49'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 23826
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line37'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5882
        mmTop = 28531
        mmWidth = 185340
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText44'
        Border.mmPadding = 0
        DataField = 'INCOTERM'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 37945
        mmTop = 23946
        mmWidth = 6396
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label50'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VOLUMES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3705
        mmLeft = 7646
        mmTop = 29646
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line38'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5882
        mmTop = 34265
        mmWidth = 185340
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label501'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PRE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 35467
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText46'
        Border.mmPadding = 0
        DataField = 'Formacao_Preco'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 37945
        mmTop = 35467
        mmWidth = 151422
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line39'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5677
        mmTop = 39729
        mmWidth = 185340
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label52'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONDI'#199#213'ES DE PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 32157
        mmLeft = 7646
        mmTop = 40376
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line40'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5677
        mmTop = 73411
        mmWidth = 185340
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label53'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'GARANTIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6357
        mmLeft = 7646
        mmTop = 74314
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line41'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5607
        mmTop = 80847
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label54'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CSTOS PORTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 82034
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line42'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5744
        mmTop = 86241
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label55'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DEMURRAGE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 87061
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText50'
        Border.mmPadding = 0
        DataField = 'Demurrage'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 37968
        mmTop = 86778
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line43'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5914
        mmTop = 91045
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label56'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'INSPETOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 91559
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText501'
        Border.mmPadding = 0
        DataField = 'Inspetor'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 37968
        mmTop = 91660
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line44'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5914
        mmTop = 95724
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label57'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'AFRMM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 96851
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText502'
        Border.mmPadding = 0
        DataField = 'AFRMM'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 37968
        mmTop = 96730
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line45'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5677
        mmTop = 101013
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label58'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NACIONALIZA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 7646
        mmTop = 101878
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText503'
        Border.mmPadding = 0
        DataField = 'Nacionalizacao'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 37968
        mmTop = 102055
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line46'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5628
        mmTop = 105880
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label59'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IMPOSTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 12544
        mmLeft = 7646
        mmTop = 106679
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line47'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5709
        mmTop = 119762
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label60'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'JANELA DE ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 15248
        mmLeft = 7519
        mmTop = 120052
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line48'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5914
        mmTop = 135449
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label601'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PER'#205'ODO DE PRECIFICA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 15346
        mmLeft = 7477
        mmTop = 136435
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line49'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5634
        mmTop = 152310
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label62'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TRIGGER DE PRECIFICA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 11310
        mmLeft = 7543
        mmTop = 153209
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line50'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 5700
        mmTop = 164909
        mmWidth = 185209
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label64'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OUTROS TERMOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftText
        FormFieldSettings.FieldTitle = 'TESTE'
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 8993
        mmLeft = 7519
        mmTop = 165670
        mmWidth = 25400
        BandType = 4
        LayerName = BandLayer4
      end
      object lComprador: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lComprador'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lComprador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 37945
        mmTop = 12449
        mmWidth = 151426
        BandType = 4
        LayerName = BandLayer4
      end
      object lNumPropostaHet: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lTitulo'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 2.000000000000000000
        Border.mmPadding = 0
        Caption = 'PROPOSTA  N'#186
        Color = 4896767
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 6892
        mmLeft = 5524
        mmTop = -334
        mmWidth = 185881
        BandType = 4
        LayerName = BandLayer4
      end
      object lCondPgto: TppMemo
        DesignLayer = ppDesignLayer4
        UserName = 'lCondPgto'
        Border.mmPadding = 0
        Caption = 'lCondPgto'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 32199
        mmLeft = 37968
        mmTop = 40522
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lGarantia: TppMemo
        DesignLayer = ppDesignLayer4
        UserName = 'lGarantia'
        Border.mmPadding = 0
        Caption = 'lGarantia'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6342
        mmLeft = 37968
        mmTop = 74364
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lCustoPorto: TppMemo
        DesignLayer = ppDesignLayer4
        UserName = 'lCustoPorto'
        Border.mmPadding = 0
        Caption = 'lCustoPorto'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4132
        mmLeft = 37968
        mmTop = 81941
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lImpostos: TppMemo
        DesignLayer = ppDesignLayer4
        UserName = 'lImpostos'
        Border.mmPadding = 0
        Caption = 'lImpostos'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 12530
        mmLeft = 37968
        mmTop = 106682
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lJanela: TppMemo
        DesignLayer = ppDesignLayer4
        UserName = 'lJanela'
        Border.mmPadding = 0
        Caption = 'lJanela'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 14519
        mmLeft = 37921
        mmTop = 120539
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lPeriodo: TppMemo
        DesignLayer = ppDesignLayer4
        UserName = 'lPeriodo'
        Border.mmPadding = 0
        Caption = 'lPeriodo'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 15182
        mmLeft = 37921
        mmTop = 136418
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lTrigger: TppMemo
        DesignLayer = ppDesignLayer4
        UserName = 'lTrigger'
        Border.mmPadding = 0
        Caption = 'lTrigger'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 11204
        mmLeft = 37915
        mmTop = 153203
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lOutros: TppMemo
        DesignLayer = ppDesignLayer4
        UserName = 'lOutros'
        Border.mmPadding = 0
        Caption = 'lOutros'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 8994
        mmLeft = 37921
        mmTop = 165517
        mmWidth = 151694
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText43'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Terminal_Entrega'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 44904
        mmTop = 24089
        mmWidth = 144452
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText45'
        Border.mmPadding = 0
        DataField = 'Volume'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3705
        mmLeft = 37945
        mmTop = 29646
        mmWidth = 151422
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppFooterBand4: TppFooterBand
      Save = True
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 0
        mmTop = 529
        mmWidth = 43519
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 74193
        mmTop = 529
        mmWidth = 65088
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 169069
        mmTop = 529
        mmWidth = 24077
        BandType = 8
        LayerName = BandLayer4
      end
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 0
        mmWidth = 5821
        BandType = 8
        LayerName = BandLayer4
      end
      object ppLine63: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 265
        mmTop = 0
        mmWidth = 193268
        BandType = 8
        LayerName = BandLayer4
      end
    end
    object raCodeModule4: TraCodeModule
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pRecap: TppDBPipeline
    DataSource = Dados.dsRecapPadrao
    CloseDataSource = True
    UserName = 'pRecap'
    Left = 480
    Top = 153
    object pRecapppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pRecapppField2: TppField
      FieldAlias = 'Condicao_Pgto'
      FieldName = 'Condicao_Pgto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pRecapppField3: TppField
      FieldAlias = 'Garantia'
      FieldName = 'Garantia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pRecapppField4: TppField
      FieldAlias = 'Demurrage'
      FieldName = 'Demurrage'
      FieldLength = 9
      DisplayWidth = 9
      Position = 3
    end
    object pRecapppField5: TppField
      FieldAlias = 'Inspetor'
      FieldName = 'Inspetor'
      FieldLength = 9
      DisplayWidth = 9
      Position = 4
    end
    object pRecapppField6: TppField
      FieldAlias = 'AFRMM'
      FieldName = 'AFRMM'
      FieldLength = 9
      DisplayWidth = 9
      Position = 5
    end
    object pRecapppField7: TppField
      FieldAlias = 'Nacionalizacao'
      FieldName = 'Nacionalizacao'
      FieldLength = 9
      DisplayWidth = 9
      Position = 6
    end
    object pRecapppField8: TppField
      FieldAlias = 'Impostos'
      FieldName = 'Impostos'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pRecapppField9: TppField
      FieldAlias = 'Janela_Entrega'
      FieldName = 'Janela_Entrega'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pRecapppField10: TppField
      FieldAlias = 'Periodo_Precif'
      FieldName = 'Periodo_Precif'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pRecapppField11: TppField
      FieldAlias = 'Trigger_Precif'
      FieldName = 'Trigger_Precif'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pRecapppField12: TppField
      FieldAlias = 'Outros_Termos'
      FieldName = 'Outros_Termos'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pRecapppField13: TppField
      FieldAlias = 'Custo_Porto'
      FieldName = 'Custo_Porto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pRecapppField14: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 13
    end
  end
  object rSpot: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'PROPOSTA - HEATING OIL'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
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
      'C:\Sistemas_XE\Faturamento\Codigo_Fonte\Relatorios\Televendas_Ve' +
      'nda_Spot.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rSpotBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
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
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 701
    Top = 305
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresa'
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 12965
        mmWidth = 152929
        BandType = 0
        LayerName = BandLayer5
      end
      object SpotLogo: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'HeatingLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 20556
        mmLeft = 3173
        mmTop = 3438
        mmWidth = 22998
        BandType = 0
        LayerName = BandLayer5
      end
      object lSpotEnd_Emp: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'lSpotEnd_Emp'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          'RUA XV DE NOVEMBRO, 964, CONJ 30 ANDAR 03 COND INTER WALTER SPRE' +
          'NGE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 16933
        mmWidth = 152929
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText59'
        Border.mmPadding = 0
        DataField = 'CEP'
        DataPipeline = pEmpresa
        DisplayFormat = '#####-###,;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresa'
        mmHeight = 3704
        mmLeft = 54769
        mmTop = 20902
        mmWidth = 21167
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'lSpotEnd_Empresa1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 20902
        mmWidth = 10319
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText60'
        Border.mmPadding = 0
        DataField = 'Estado'
        DataPipeline = pEmpresa
        DisplayFormat = '## - ;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresa'
        mmHeight = 3704
        mmLeft = 73010
        mmTop = 21072
        mmWidth = 7754
        BandType = 0
        LayerName = BandLayer5
      end
      object lSpotMun_Emp: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'lSpotMun_Emp'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          'RUA XV DE NOVEMBRO, 964, CONJ 30 ANDAR 03 COND INTER WALTER SPRE' +
          'NGE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 83079
        mmTop = 20902
        mmWidth = 116681
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label65'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 24871
        mmWidth = 11906
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText61'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pEmpresa
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresa'
        mmHeight = 3704
        mmLeft = 56356
        mmTop = 24871
        mmWidth = 35983
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label66'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'E-Mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 28840
        mmWidth = 15875
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText62'
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresa'
        mmHeight = 3704
        mmLeft = 60325
        mmTop = 28840
        mmWidth = 139436
        BandType = 0
        LayerName = BandLayer5
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 208492
      mmPrintPosition = 0
      object ppShape43: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape43'
        Brush.Style = bsClear
        Pen.Width = 0
        mmHeight = 30692
        mmLeft = 24342
        mmTop = 8731
        mmWidth = 168275
        BandType = 4
        LayerName = BandLayer5
      end
      object lNumPropostaSpot: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'lSpotEnd_Emp1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 5821
        mmLeft = 24342
        mmTop = 2117
        mmWidth = 168540
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label67'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 9260
        mmWidth = 9260
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText63'
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 78052
        mmTop = 9260
        mmWidth = 35190
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line51'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 24342
        mmTop = 14023
        mmWidth = 168275
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label68'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Para:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 14552
        mmWidth = 9260
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText64'
        Border.mmPadding = 0
        DataField = 'Cliente_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 78052
        mmTop = 14552
        mmWidth = 112713
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText65'
        Border.mmPadding = 0
        DataField = 'Cliente_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 78581
        mmTop = 34573
        mmWidth = 33338
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line52'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 24342
        mmTop = 19050
        mmWidth = 168275
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label70'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Aten'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 19315
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line53'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 24342
        mmTop = 23548
        mmWidth = 168275
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText66'
        Border.mmPadding = 0
        DataField = 'Cliente_Contato'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 78052
        mmTop = 19315
        mmWidth = 112977
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label701'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'E-Mails:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 24342
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText67'
        Border.mmPadding = 0
        DataField = 'Cliente_Email'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 78052
        mmTop = 24342
        mmWidth = 112977
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line54'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 24342
        mmTop = 28575
        mmWidth = 168275
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label72'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#250'mero Trade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 29104
        mmWidth = 25929
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line55'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 24342
        mmTop = 33602
        mmWidth = 168275
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label73'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#250'mero Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 25665
        mmTop = 34396
        mmWidth = 25665
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText68'
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.500000000000000000
        Border.mmPadding = 0
        DataField = 'Descricao'
        DataPipeline = pItens
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pItens'
        mmHeight = 3704
        mmLeft = 24342
        mmTop = 43127
        mmWidth = 168540
        BandType = 4
        LayerName = BandLayer5
      end
      object lItens: TppMemo
        DesignLayer = ppDesignLayer3
        UserName = 'lItens'
        Border.mmPadding = 0
        Caption = 'lItens'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          '1. VENDEDOR: NIMOFAST BRASIL S/A - 77.696.235/0001-94;'
          ''
          
            '2. COMPRADOR: DISTRIBUIDORA DE COMBUSTIVEIS SAARA S.A. EM RECUPE' +
            ' - 97.471.676/0005-29;'
          ''
          
            '3. PRODUTO: '#211'LEO DIESEL AS10 (SPEC ANP) 10 PPM COM TEMPERATURA A' +
            ' 20'#186' (VINTE GRAUS CELSIUS);'
          ''
          '4. ENTREGA: DPU CBL TERMINAL, PORTO DE PARANAGUA;'
          ''
          
            '5. ARMAZENAMENTO: AT'#201' 20 DE DEZEMBRO DE 2023, EM CASO DE ATRASO ' +
            'NA RETIRADA, HAVER'#193' PENALIDADE'
          
            'DE R$140,00 POR METRO C'#218'BICO POR M'#202'S EM QUE O PRODUTO ESTIVER EM' +
            ' ATRASO;'
          ''
          '6. QUANTIDADE: 46,000 metros c'#250'bicos +/- 5%;'
          ''
          '7. DATAS DE ENTREGAS: A PARTIR DE 14 DE DEZEMBRO DE 2023;'
          ''
          
            '8. PRE'#199'O: 4.572,37/m3 (QUATRO MIL, QUINHENTOS E SETENTA E DOIS R' +
            'EAIS E TRINTA E SETE CENTAVOS'
          'por metro c'#250'bico);'
          ''
          '9. PAGAMENTO: 15 DE DEZEMBRO DE 2023;'
          'VALOR TOTAL DE R$ 210.329,02 DEVER'#192' SER DEPOSITADO NA CONTA:'
          'Titular: NIMOFAST BRASIL S/A'
          'CNPJ: 77.696.235/0001-94'
          'Ag'#234'ncia: 3945'
          'Conta/C: 130036226'
          'Banco: BANCO SANTANDER CONTA CORRENTE'
          ''
          
            '10. RETIRADA: AP'#211'S O PAGAMENTO INTEGRAL, O COMPRADOR DEVER'#193' ENVI' +
            'AR AGENDAMENTO PR'#201'VIO COM 1(UM)'
          'DIA DE ANTECED'#202'NCIA NO E-MAIL DO VENDEDOR;'
          ''
          
            '11. MODAL ENTREGA: O CLIENTE PODER'#193' CARREGAR RODOVI'#193'RIO NO TERMI' +
            'NAL CBL - COMPANHIA BRASILEIRA'
          
            'DE LOGISTICA S/A, PARANAGUA/PR COM AS GRADES DISPONIBILIZADAS PE' +
            'LO TERMINAL SUFICIENTES PARA'
          'CARREGAR O VOLUME COMBINADO;'
          ''
          '12. DIREITO: DIREITO BRASILEIRO, ARBITRAGEM ICC CURITIBA;'
          ''
          
            '13. OS VALORES E OBRIGA'#199#213'ES CONTIDOS NESTE DOCUMENTO S'#195'O L'#205'QUIDO' +
            'S, CERTOS E EXIG'#205'VEIS;'
          ''
          
            '14. O PAGAMENTO DEVE OCORRER AT'#201' '#192'S 16h, AP'#211'S ESSE HOR'#193'RIO O FAT' +
            'URAMENTO OCORRER'#193' NO DIA SEGUINTE;'
          ''
          
            '15. O COMPROVANTE DE PAGAMENTO DEVE SER ENVIADO JUNTO AO PEDIDO ' +
            'O QUAL O PAGAMENTO SE REFERE;'
          ''
          '16. O PAGAMENTO GARANTE O VOLUME;'
          ''
          
            '17. O FATURAMENTO APENAS SER'#193' LIBERADO AP'#211'S A ASSINATURA DESTE D' +
            'OCUMENTO.'
          ''
          
            '18. CADA PARTE DEVER'#193' RECOLHER SEUS IMPOSTOS CONFORME A LEGISLA'#199 +
            #195'O TRIBUT'#193'RIA')
        RemoveEmptyLines = False
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 145786
        mmLeft = 11245
        mmTop = 50800
        mmWidth = 180799
        BandType = 4
        LayerName = BandLayer5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lData: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'lData'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 265
        mmTop = 204788
        mmWidth = 197644
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText69'
        Border.mmPadding = 0
        DataField = 'Representante'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 78050
        mmTop = 29561
        mmWidth = 112977
        BandType = 4
        LayerName = BandLayer5
      end
    end
    object ppFooterBand3: TppFooterBand
      Save = True
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 0
        mmTop = 529
        mmWidth = 43519
        BandType = 8
        LayerName = BandLayer5
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 74193
        mmTop = 529
        mmWidth = 65088
        BandType = 8
        LayerName = BandLayer5
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 169069
        mmTop = 529
        mmWidth = 24077
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLine71: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 0
        mmWidth = 5821
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLine72: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 265
        mmTop = 0
        mmWidth = 193268
        BandType = 8
        LayerName = BandLayer5
      end
    end
    object raCodeModule3: TraCodeModule
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'BandLayer5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object pMuni: TppDBPipeline
    DataSource = Dados.dsMunicipios
    CloseDataSource = True
    UserName = 'pMuni'
    Left = 481
    Top = 204
    object pMunippField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pMunippField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pMunippField3: TppField
      FieldAlias = 'Nome'
      FieldName = 'Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pMunippField4: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
  end
  object tTerminais: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Codigo, CNPJ, Nome '
      'from Fornecedores')
    FetchRows = 1
    Left = 520
    Top = 308
    object tTerminaisCodigo: TIntegerField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object tTerminaisCNPJ: TStringField
      DisplayWidth = 12
      FieldName = 'CNPJ'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object tTerminaisNome: TStringField
      DisplayWidth = 40
      FieldName = 'Nome'
      Size = 60
    end
  end
  object dsTerminais: TDataSource
    DataSet = tTerminais
    Left = 520
    Top = 361
  end
  object tLiberados: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Data'
      '      ,Total_Pedido'
      '      ,Situacao_Televendas'
      
        '      ,Nome_Cliente = (select Nome from Clientes cl where cl.Cod' +
        'igo = Cliente)'
      'from PedidosRepresentantes'
      'where  Origem_Pedido = '#39'TELEVENDAS'#39
      'and Local < 5'
      'and isnull(Cancelado, 0) = 0'
      'and isnull(Faturado, 0) = 0')
    FetchRows = 1
    Left = 432
    Top = 357
    object tLiberadosPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tLiberadosData: TDateTimeField
      FieldName = 'Data'
    end
    object tLiberadosTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tLiberadosSituacao_Televendas: TStringField
      FieldName = 'Situacao_Televendas'
      Size = 10
    end
    object tLiberadosNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      ReadOnly = True
      Size = 50
    end
  end
  object dstLiberados: TDataSource
    DataSet = tLiberados
    Left = 433
    Top = 410
  end
end
