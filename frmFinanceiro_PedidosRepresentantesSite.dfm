object Financeiro_PedidosRepresentantesSite: TFinanceiro_PedidosRepresentantesSite
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Financeiro_PedidosRepresentantesSite'
  ClientHeight = 643
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 613
    Width = 799
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      799
      30)
    object bSair: TButton
      Left = 723
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImportar: TButton
      Left = 647
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImportarClick
    end
    object bBuscar: TButton
      Left = 579
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Buscar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bBuscarClick
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 783
    Height = 593
    ActivePage = TabSheet1
    TabHeight = 24
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Pedidos Encontrados'
      object PageControl2: TPageControl
        Left = 7
        Top = 88
        Width = 760
        Height = 463
        ActivePage = pPedidos
        MultiLine = True
        TabHeight = 25
        TabOrder = 0
        object pPedidos: TTabSheet
          Caption = 'Pedidos'
          object gPedidos: TDBGrid
            Left = 0
            Top = 0
            Width = 752
            Height = 428
            Align = alClient
            DataSource = dstPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Consolas'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Consolas'
            TitleFont.Style = [fsBold]
          end
        end
        object pItens: TTabSheet
          Caption = 'Itens'
          ImageIndex = 1
          object gItens: TDBGrid
            Left = 0
            Top = 0
            Width = 752
            Height = 428
            Align = alClient
            DataSource = dstItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Consolas'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Consolas'
            TitleFont.Style = [fsBold]
          end
        end
        object pClientes: TTabSheet
          Caption = 'Clientes'
          ImageIndex = 2
          object gClientes: TDBGrid
            Left = 0
            Top = 0
            Width = 752
            Height = 428
            Align = alClient
            DataSource = dstClientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Consolas'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Consolas'
            TitleFont.Style = [fsBold]
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Log'
          ImageIndex = 3
          object cLog: TListBox
            Left = 0
            Top = 0
            Width = 752
            Height = 424
            Align = alClient
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clLime
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            IntegralHeight = True
            ItemHeight = 14
            MultiSelect = True
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object Panel3: TPanel
        Left = 7
        Top = 7
        Width = 760
        Height = 61
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        object lNome: TStaticText
          Left = 7
          Top = 8
          Width = 105
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data da '#250'ltima busca'
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
        object StaticText1: TStaticText
          Left = 7
          Top = 31
          Width = 105
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Hora da '#250'ltima busca'
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
        object cData: TDateTimePicker
          Left = 114
          Top = 8
          Width = 117
          Height = 21
          Date = 44413.000000000000000000
          Time = 0.722547442128416200
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          StyleElements = [seFont, seBorder]
        end
        object cHora: TDateTimePicker
          Left = 114
          Top = 31
          Width = 117
          Height = 21
          Date = 44413.000000000000000000
          Time = 0.790103009261656600
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Kind = dtkTime
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Retorno JSON'
      ImageIndex = 1
      object mJSON: TMemo
        Left = 0
        Top = 0
        Width = 775
        Height = 559
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Sans Typewriter'
        Font.Style = []
        Lines.Strings = (
          'mJSON')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 64
    Top = 232
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 64
    Top = 288
  end
  object RESTResponse1: TRESTResponse
    Left = 64
    Top = 344
  end
  object tPedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 264
    object tPedidosid: TIntegerField
      FieldName = 'id'
    end
    object tPedidosstatus: TStringField
      FieldName = 'status'
      Size = 15
    end
    object tPedidoscurrency: TStringField
      FieldName = 'currency'
      Size = 10
    end
    object tPedidosversion: TStringField
      FieldName = 'version'
      Size = 15
    end
    object tPedidosprices_include_tax: TBooleanField
      FieldName = 'prices_include_tax'
    end
    object tPedidosdate_created: TDateField
      FieldName = 'date_created'
    end
    object tPedidosdate_modified: TDateField
      FieldName = 'date_modified'
    end
    object tPedidosdiscount_total: TCurrencyField
      FieldName = 'discount_total'
      DisplayFormat = ',##0.00'
    end
    object tPedidosdiscount_tax: TFloatField
      FieldName = 'discount_tax'
    end
    object tPedidosshipping_total: TCurrencyField
      FieldName = 'shipping_total'
      DisplayFormat = ',##0.00'
    end
    object tPedidosshipping_tax: TCurrencyField
      FieldName = 'shipping_tax'
      DisplayFormat = ',##0.00'
    end
    object tPedidoscart_tax: TCurrencyField
      FieldName = 'cart_tax'
      DisplayFormat = ',##0.00'
    end
    object tPedidostotal: TCurrencyField
      FieldName = 'total'
      DisplayFormat = ',##0.00'
    end
    object tPedidostotal_tax: TCurrencyField
      FieldName = 'total_tax'
      DisplayFormat = ',##0.00'
    end
    object tPedidoscustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object tPedidosorder_key: TStringField
      FieldName = 'order_key'
      Size = 30
    end
    object tPedidosfirst_name: TStringField
      FieldName = 'first_name'
      Size = 60
    end
    object tPedidosbilling: TWideStringField
      FieldName = 'billing'
      Size = 2500
    end
    object tPedidosshipping: TWideStringField
      FieldName = 'shipping'
      Size = 2500
    end
    object tPedidospayment_method: TStringField
      FieldName = 'payment_method'
      Size = 30
    end
    object tPedidospayment_method_title: TStringField
      FieldName = 'payment_method_title'
      Size = 60
    end
    object tPedidostransaction_id: TStringField
      FieldName = 'transaction_id'
      Size = 30
    end
    object tPedidoscustomer_ip_address: TStringField
      FieldName = 'customer_ip_address'
      Size = 30
    end
    object tPedidoscustomer_user_agent: TStringField
      FieldName = 'customer_user_agent'
      Size = 120
    end
    object tPedidoscreated_via: TStringField
      FieldName = 'created_via'
    end
    object tPedidoscustomer_note: TStringField
      FieldName = 'customer_note'
      Size = 120
    end
    object tPedidosdate_completed: TDateField
      FieldKind = fkCalculated
      FieldName = 'date_completed'
      Calculated = True
    end
    object tPedidosdate_paid: TDateField
      FieldName = 'date_paid'
    end
    object tPedidoscart_hash: TStringField
      FieldName = 'cart_hash'
      Size = 30
    end
    object tPedidosnumber: TIntegerField
      FieldName = 'number'
    end
    object tPedidosmeta_data: TWideStringField
      FieldName = 'meta_data'
      Size = 2500
    end
    object tPedidosline_items: TWideStringField
      FieldName = 'line_items'
      Size = 2500
    end
    object tPedidostax_lines: TWideStringField
      FieldName = 'tax_lines'
      Size = 2500
    end
    object tPedidosshipping_lines: TWideStringField
      FieldName = 'shipping_lines'
      Size = 2500
    end
  end
  object dstPedidos: TDataSource
    DataSet = tPedidos
    Left = 264
    Top = 320
  end
  object tTempItens: TClientDataSet
    PersistDataPacket.Data = {
      7D0100009619E0BD01000000180000000D0000000000030000007D0102696404
      00010000000000046E616D650100490000000100055749445448020002007800
      0A70726F647563745F696404000100000000000C766172696174696F6E5F6964
      0400010000000000087175616E746974790800040000000000097461785F636C
      6173730100490000000100055749445448020002003C0008737562746F74616C
      080004000000010007535542545950450200490006004D6F6E6579000C737562
      746F74616C5F7461780100490000000100055749445448020002001E0005746F
      74616C080004000000010007535542545950450200490006004D6F6E65790009
      746F74616C5F746178080004000000010007535542545950450200490006004D
      6F6E657900057072696365080004000000010007535542545950450200490006
      004D6F6E6579000B706172656E745F6E616D6501004900000001000557494454
      48020002003C0003736B75010049000000010005574944544802000200140000
      00}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'product_id'
        DataType = ftInteger
      end
      item
        Name = 'variation_id'
        DataType = ftInteger
      end
      item
        Name = 'quantity'
        DataType = ftFloat
      end
      item
        Name = 'tax_class'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'subtotal'
        DataType = ftCurrency
      end
      item
        Name = 'subtotal_tax'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'total'
        DataType = ftCurrency
      end
      item
        Name = 'total_tax'
        DataType = ftCurrency
      end
      item
        Name = 'price'
        DataType = ftCurrency
      end
      item
        Name = 'parent_name'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'sku'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 336
    Top = 264
    object tTempItensid: TIntegerField
      FieldName = 'id'
    end
    object tTempItensname: TStringField
      FieldName = 'name'
      Size = 120
    end
    object tTempItensproduct_id: TIntegerField
      FieldName = 'product_id'
    end
    object tTempItensvariation_id: TIntegerField
      FieldName = 'variation_id'
    end
    object tTempItensquantity: TFloatField
      FieldName = 'quantity'
    end
    object tTempItenstax_class: TStringField
      FieldName = 'tax_class'
      Size = 60
    end
    object tTempItenssubtotal: TCurrencyField
      FieldName = 'subtotal'
    end
    object tTempItenssubtotal_tax: TStringField
      FieldName = 'subtotal_tax'
      Size = 30
    end
    object tTempItenstotal: TCurrencyField
      FieldName = 'total'
    end
    object tTempItenstotal_tax: TCurrencyField
      FieldName = 'total_tax'
    end
    object tTempItensprice: TCurrencyField
      FieldName = 'price'
    end
    object tTempItensparent_name: TStringField
      FieldName = 'parent_name'
      Size = 60
    end
    object tTempItenssku: TStringField
      FieldName = 'sku'
    end
  end
  object dstTempItens: TDataSource
    DataSet = tTempItens
    Left = 336
    Top = 320
  end
  object tItens: TClientDataSet
    PersistDataPacket.Data = {
      A50100009619E0BD01000000180000000F000000000003000000A50102696404
      00010000000000046E616D650100490000000100055749445448020002007800
      0A70726F647563745F696404000100000000000C766172696174696F6E5F6964
      0400010000000000087175616E746974790800040000000000097461785F636C
      6173730100490000000100055749445448020002003C0008737562746F74616C
      080004000000010007535542545950450200490006004D6F6E6579000C737562
      746F74616C5F7461780100490000000100055749445448020002001E0005746F
      74616C080004000000010007535542545950450200490006004D6F6E65790009
      746F74616C5F746178080004000000010007535542545950450200490006004D
      6F6E657900057072696365080004000000010007535542545950450200490006
      004D6F6E6579000B706172656E745F6E616D6501004900000001000557494454
      48020002003C000670656469646F010049000000010005574944544802000200
      0A000464617461080008000000000003736B7501004900000001000557494454
      480200020014000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'product_id'
        DataType = ftInteger
      end
      item
        Name = 'variation_id'
        DataType = ftInteger
      end
      item
        Name = 'quantity'
        DataType = ftFloat
      end
      item
        Name = 'tax_class'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'subtotal'
        DataType = ftCurrency
      end
      item
        Name = 'subtotal_tax'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'total'
        DataType = ftCurrency
      end
      item
        Name = 'total_tax'
        DataType = ftCurrency
      end
      item
        Name = 'price'
        DataType = ftCurrency
      end
      item
        Name = 'parent_name'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'pedido'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'data'
        DataType = ftDateTime
      end
      item
        Name = 'sku'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 400
    Top = 264
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'id'
    end
    object StringField1: TStringField
      DisplayWidth = 35
      FieldName = 'name'
      Size = 120
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'product_id'
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'variation_id'
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'quantity'
      DisplayFormat = ',##0.000'
    end
    object StringField2: TStringField
      DisplayWidth = 60
      FieldName = 'tax_class'
      Size = 60
    end
    object CurrencyField1: TCurrencyField
      DisplayWidth = 10
      FieldName = 'subtotal'
      DisplayFormat = ',##0.00'
    end
    object StringField3: TStringField
      DisplayWidth = 30
      FieldName = 'subtotal_tax'
      Size = 30
    end
    object CurrencyField2: TCurrencyField
      DisplayWidth = 10
      FieldName = 'total'
      DisplayFormat = ',##0.00'
    end
    object CurrencyField3: TCurrencyField
      DisplayWidth = 10
      FieldName = 'total_tax'
      DisplayFormat = ',##0.00'
    end
    object CurrencyField4: TCurrencyField
      DisplayWidth = 10
      FieldName = 'price'
      DisplayFormat = ',##0.00'
    end
    object StringField4: TStringField
      DisplayWidth = 60
      FieldName = 'parent_name'
      Size = 60
    end
    object tItenssku: TStringField
      FieldName = 'sku'
    end
    object tItenspedido: TStringField
      FieldName = 'pedido'
      Size = 10
    end
    object tItensdata: TDateTimeField
      FieldName = 'data'
    end
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 400
    Top = 320
  end
  object tClientes: TClientDataSet
    PersistDataPacket.Data = {
      5E0200009619E0BD0100000018000000150000000000030000005E020A666972
      73745F6E616D650100490000000100055749445448020002003C00096C617374
      5F6E616D650100490000000100055749445448020002003C0007636F6D70616E
      790100490000000100055749445448020002003C0009616464726573735F3101
      00490000000100055749445448020002003C0009616464726573735F32010049
      0000000100055749445448020002003C00046369747901004900000001000557
      49445448020002003C0008706F7374636F646501004900000001000557494454
      48020002000F0007636F756E7472790100490000000100055749445448020002
      003C0005656D61696C0100490000000100055749445448020002007800057068
      6F6E650100490000000100055749445448020002000F00066E756D6265720100
      490000000100055749445448020002000F000C6E65696768626F72686F6F6401
      00490000000100055749445448020002003C000A706572736F6E747970650100
      4900000001000557494454480200020002000363706601004900000001000557
      49445448020002000E000272670100490000000100055749445448020002000F
      0004636E706A0100490000000100055749445448020002000E00026965010049
      0000000100055749445448020002000F00096269727468646174650100490000
      000100055749445448020002000F000373657801004900000001000557494454
      480200020002000963656C6C70686F6E65010049000000010005574944544802
      0002000F000670656469646F0100490000000100055749445448020002000A00
      0000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 264
    object tClientesfirst_name: TStringField
      FieldName = 'first_name'
      Size = 60
    end
    object tClienteslast_name: TStringField
      FieldName = 'last_name'
      Size = 60
    end
    object tClientescompany: TStringField
      FieldName = 'company'
      Size = 60
    end
    object tClientesaddress_1: TStringField
      FieldName = 'address_1'
      Size = 60
    end
    object tClientesaddress_2: TStringField
      FieldName = 'address_2'
      Size = 60
    end
    object tClientescity: TStringField
      FieldName = 'city'
      Size = 60
    end
    object tClientesstate: TStringField
      FieldKind = fkCalculated
      FieldName = 'state'
      Size = 15
      Calculated = True
    end
    object tClientespostcode: TStringField
      FieldName = 'postcode'
      Size = 15
    end
    object tClientescountry: TStringField
      FieldName = 'country'
      Size = 60
    end
    object tClientesemail: TStringField
      FieldName = 'email'
      Size = 120
    end
    object tClientesphone: TStringField
      FieldName = 'phone'
      Size = 15
    end
    object tClientesnumber: TStringField
      FieldName = 'number'
      Size = 15
    end
    object tClientesneighborhood: TStringField
      FieldName = 'neighborhood'
      Size = 60
    end
    object tClientespersontype: TStringField
      FieldName = 'persontype'
      Size = 2
    end
    object tClientescpf: TStringField
      FieldName = 'cpf'
      Size = 14
    end
    object tClientesrg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object tClientescnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object tClientesie: TStringField
      FieldName = 'ie'
      Size = 15
    end
    object tClientesbirthdate: TStringField
      FieldName = 'birthdate'
      Size = 15
    end
    object tClientessex: TStringField
      FieldName = 'sex'
      Size = 2
    end
    object tClientescellphone: TStringField
      FieldName = 'cellphone'
      Size = 15
    end
    object tClientespedido: TStringField
      FieldName = 'pedido'
      Size = 10
    end
  end
  object dstClientes: TDataSource
    DataSet = tClientes
    Left = 544
    Top = 320
  end
  object tTempClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 264
    object StringField6: TStringField
      FieldName = 'last_name'
      Size = 60
    end
    object StringField5: TStringField
      FieldName = 'first_name'
      Size = 60
    end
    object StringField7: TStringField
      FieldName = 'company'
      Size = 60
    end
    object StringField8: TStringField
      FieldName = 'address_1'
      Size = 60
    end
    object StringField9: TStringField
      FieldName = 'address_2'
      Size = 60
    end
    object StringField10: TStringField
      FieldName = 'city'
      Size = 60
    end
    object StringField11: TStringField
      FieldName = 'state'
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'postcode'
      Size = 15
    end
    object StringField13: TStringField
      FieldName = 'country'
      Size = 60
    end
    object StringField14: TStringField
      FieldName = 'email'
      Size = 120
    end
    object StringField15: TStringField
      FieldName = 'phone'
      Size = 15
    end
    object StringField16: TStringField
      FieldName = 'number'
      Size = 15
    end
    object StringField17: TStringField
      FieldName = 'neighborhood'
      Size = 60
    end
    object StringField18: TStringField
      FieldName = 'persontype'
      Size = 2
    end
    object StringField19: TStringField
      FieldName = 'cpf'
      Size = 14
    end
    object StringField20: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object StringField21: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object StringField22: TStringField
      FieldName = 'ie'
      Size = 15
    end
    object StringField23: TStringField
      FieldName = 'birthdate'
      Size = 15
    end
    object StringField24: TStringField
      FieldName = 'sex'
      Size = 2
    end
    object StringField25: TStringField
      FieldName = 'cellphone'
      Size = 15
    end
  end
  object dstTempClientes: TDataSource
    DataSet = tTempClientes
    Left = 472
    Top = 320
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 615
    Top = 261
  end
end
