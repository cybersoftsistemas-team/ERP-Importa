object NotaFiscal_TerceirosReferenciaItens: TNotaFiscal_TerceirosReferenciaItens
  Left = 305
  Top = 84
  ActiveControl = cNotaReferencia
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_TerceirosReferenciaItens'
  ClientHeight = 622
  ClientWidth = 1189
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
    Width = 1189
    Height = 39
    Align = alTop
    Stretch = True
    ExplicitWidth = 903
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 0
    Width = 196
    Height = 21
    Caption = 'NOTA FISCAL DE TERCEIROS'
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
    Left = 8
    Top = 16
    Width = 312
    Height = 18
    Caption = 'Manuten'#231#227'o dos itens da nota fiscal de refer'#234'ncia.'
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
  object GroupBox2: TGroupBox
    Left = 5
    Top = 355
    Width = 895
    Height = 223
    Caption = 'Itens da Nota Fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      895
      223)
    object Grade2: TDBGrid
      Left = 5
      Top = 17
      Width = 885
      Height = 202
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnEnter = Grade2Enter
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 424
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NCM'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
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
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Liquido'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
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
          FieldName = 'Nota_Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'NF.Ref.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'DT.Ref.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 589
    Width = 1183
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      Left = 1112
      Top = 1
      Width = 70
      Height = 28
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
      Width = 184
      Height = 28
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotasTerceirosItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      Ctl3D = True
      Hints.Strings = (
        '  Vai para o primeiro registro.  '
        '  Volta para o registro anterior.  '
        '  Vai para o pr'#243'ximo registro.  '
        '  Vai para o '#250'ltimo registro.  '
        '  Inlcuir um novo registro.  '
        '  Deletar o registro atual.  '
        '  Altera o reistro atual. '
        '  Salvar o registro no banco de dados.  '
        '  Cancelar as modifica'#231#245'es feitas no registro atual.  '
        '  Atualizar inform'#231#245'es do banco de dados.  ')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object bInclui_Item: TButton
      Left = 185
      Top = 1
      Width = 88
      Height = 28
      Hint = '  Adiciona um item ao pedido.  '
      Align = alLeft
      Caption = 'Adicionar &Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bInclui_ItemClick
    end
    object bInclui_Todos: TButton
      Left = 381
      Top = 1
      Width = 100
      Height = 28
      Hint = 
        '  Adiciona todas os itens da nota fiscal de refer'#234'ncia ao pedido' +
        '.  '
      Align = alLeft
      Caption = 'Adicionar &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bInclui_TodosClick
    end
    object bRemove_Item: TButton
      Left = 571
      Top = 1
      Width = 88
      Height = 28
      Hint = '  Remove um item do pedido.  '
      Align = alLeft
      Caption = '&Remover Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bRemove_ItemClick
    end
    object bRemove_Todos: TButton
      Left = 659
      Top = 1
      Width = 98
      Height = 28
      Hint = '  Remove todos os itens do pedido.  '
      Align = alLeft
      Caption = 'Rem&over Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bRemove_TodosClick
    end
    object bIncluir_nota: TButton
      Left = 481
      Top = 1
      Width = 90
      Height = 28
      Hint = 
        '  Adiciona todas os itens da nota fiscal de refer'#234'ncia ao pedido' +
        '.  '
      Align = alLeft
      Caption = 'Adicionar &Nota'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bIncluir_notaClick
    end
    object bInclui_Interv: TButton
      Left = 273
      Top = 1
      Width = 108
      Height = 28
      Hint = '  Adiciona um item ao pedido.  '
      Align = alLeft
      Caption = 'Adicionar Inter&valo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bInclui_IntervClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 92
    Width = 895
    Height = 223
    Caption = 'Itens da Nota Fiscal de Refer'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      895
      223)
    object Grade1: TDBGrid
      Left = 7
      Top = 17
      Width = 885
      Height = 202
      Anchors = [akLeft, akTop, akBottom]
      Color = 14286847
      DataSource = dmFiscal.dsNotasItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = bInclui_ItemClick
      OnEnter = Grade1Enter
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 491
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NCM'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
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
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Disponivel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Dispon'#237'vel'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 3
    Top = 44
    Width = 1180
    Height = 44
    BevelOuter = bvLowered
    TabOrder = 3
    object bPesquisar: TSpeedButton
      Left = 743
      Top = 4
      Width = 89
      Height = 35
      Cursor = crHandPoint
      Hint = '  Limpar os filtros atuais  '
      Caption = '&Pesquisar'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = bPesquisarClick
    end
    object StaticText3: TStaticText
      Left = 362
      Top = 12
      Width = 101
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nota Referencia N'#186
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
    object StaticText17: TStaticText
      Left = 587
      Top = 12
      Width = 32
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
      TabOrder = 3
      Transparent = False
      StyleElements = []
    end
    object cNotaReferencia: TCurrencyEdit
      Left = 465
      Top = 12
      Width = 112
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
      TabOrder = 0
    end
    object cDataReferencia: TDateEdit
      Left = 621
      Top = 12
      Width = 106
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
      TabOrder = 1
    end
  end
  object cPesquisa: TEdit
    Left = 67
    Top = 317
    Width = 830
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnChange = cPesquisaChange
  end
  object StaticText1: TStaticText
    Left = 4
    Top = 317
    Width = 61
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisar'
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
  object GroupBox3: TGroupBox
    Left = 904
    Top = 92
    Width = 279
    Height = 486
    Caption = 'Chassis/Seriais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object GradeSer: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 269
      Height = 219
      Align = alClient
      Color = 14286847
      DataSource = dstSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = bInclui_ItemClick
      OnEnter = Grade1Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'Produto_Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Chassi/Serial'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 175
          Visible = True
        end>
    end
    object GradeSerNF: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 243
      Width = 269
      Height = 238
      Align = alBottom
      Color = 14286847
      DataSource = dstSeriaisNF
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = bInclui_ItemClick
      OnEnter = Grade1Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'Produto_Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Chassi/Serial'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 175
          Visible = True
        end>
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 184
    object mnIncluiItem: TMenuItem
      Caption = 'Adicionar &Item'
    end
    object mnIncluiAdicao: TMenuItem
      Caption = 'Adicionar &Adi'#231#227'o'
    end
    object mnIncluiTodos: TMenuItem
      Caption = 'Adicionar &Todos'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnRemoveItem: TMenuItem
      Caption = '&Remover Item'
    end
    object mnRemoveAdicao: TMenuItem
      Caption = 'Re&mover Adi'#231#227'o'
    end
    object mnRemoveTodos: TMenuItem
      Caption = '&Rem&over Todos'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnSair: TMenuItem
      Caption = '&Sair'
    end
  end
  object mMacro: TCalcExpress
    Formula = '0'
    Left = 152
    Top = 184
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Item) AS Item FROM NotasTerceirosItens')
    Left = 280
    Top = 192
  end
  object tAdicoes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Item) AS Item FROM NotasTerceirosItens')
    Left = 328
    Top = 192
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 375
    Top = 192
  end
  object tSeriais: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'use Cybersoft_XGMA_Matriz'
      'SELECT Produto_Codigo'
      '      ,Numero'
      'from ProdutosSeriaisNotas')
    CachedUpdates = True
    Left = 428
    Top = 192
  end
  object dstSeriais: TDataSource
    DataSet = tSeriais
    Left = 428
    Top = 240
  end
  object tSeriaisNF: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'use Cybersoft_XGMA_Matriz'
      'SELECT Produto_Codigo'
      '      ,Numero'
      'from ProdutosSeriaisNotas')
    CachedUpdates = True
    Left = 492
    Top = 192
  end
  object dstSeriaisNF: TDataSource
    DataSet = tSeriaisNF
    Left = 492
    Top = 240
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 280
    Top = 240
  end
  object tDisp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 329
    Top = 239
  end
end
