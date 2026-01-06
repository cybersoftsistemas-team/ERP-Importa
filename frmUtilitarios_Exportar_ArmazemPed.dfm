object Utilitarios_Exportar_ArmazemPed: TUtilitarios_Exportar_ArmazemPed
  Left = 500
  Top = 149
  BorderStyle = bsDialog
  Caption = 'Utilitarios_Exportar_ArmazemPed'
  ClientHeight = 624
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 594
    Width = 813
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
    DesignSize = (
      813
      30)
    object bSair: TButton
      Left = 743
      Top = 1
      Width = 69
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
  end
  object cMsg: TMemo
    Left = 8
    Top = 432
    Width = 805
    Height = 153
    BevelOuter = bvRaised
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
    WantTabs = True
  end
  object PageControl2: TPageControl
    Left = 8
    Top = 105
    Width = 805
    Height = 322
    ActivePage = TabSheet5
    TabHeight = 25
    TabOrder = 2
    object TabSheet5: TTabSheet
      Caption = 'Servidor REST'
      object PageControl1: TPageControl
        Left = 3
        Top = 3
        Width = 800
        Height = 279
        ActivePage = TabSheet1
        TabHeight = 25
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Enviar Entrada'
          object GradeNotas: TDBGrid
            Left = 6
            Top = 5
            Width = 777
            Height = 204
            DataSource = Dados.dsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = GradeCellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Pedido_Nota'
                Title.Alignment = taCenter
                Title.Caption = 'Nota'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Natureza_Codigo'
                Title.Alignment = taCenter
                Title.Caption = 'CFOP'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Processo'
                Title.Alignment = taCenter
                Title.Caption = 'Processo N'#186
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Destinatario_Nome'
                Title.Alignment = taCenter
                Title.Caption = 'Cliente/Fornecedor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 430
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor_TotalNota'
                Title.Alignment = taCenter
                Title.Caption = 'Total do Pedido'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 114
                Visible = True
              end>
          end
          object Panel2: TPanel
            Left = 0
            Top = 214
            Width = 792
            Height = 30
            Align = alBottom
            BevelOuter = bvLowered
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object bEnviarPed: TButton
              Left = 1
              Top = 1
              Width = 65
              Height = 28
              Hint = 'Enviar arquivo para armaz'#233'm'
              Caption = '&Enviar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bEnviarPedClick
            end
            object Button3: TButton
              Left = 67
              Top = 1
              Width = 86
              Height = 28
              Hint = 'Enviar arquivo para armaz'#233'm'
              Caption = '&Marcar Todos'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Visible = False
              OnClick = bSelecaoClick
            end
            object Button1: TButton
              Left = 376
              Top = 2
              Width = 55
              Height = 28
              Caption = 'Teste'
              TabOrder = 2
              Visible = False
              OnClick = Button1Click
            end
            object ProgressBar1: TProgressBar
              Left = 520
              Top = 7
              Width = 257
              Height = 17
              TabOrder = 3
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Itens da Nota'
          ImageIndex = 2
          object RxDBGrid2: TRxDBGrid
            Left = 0
            Top = 0
            Width = 792
            Height = 244
            Align = alClient
            DataSource = dstItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = GradeCellClick
            MultiSelect = True
            RowColor2 = 16776176
            Columns = <
              item
                Expanded = False
                FieldName = 'Item'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sku'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao_Mercadoria'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o Mercadoria'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 267
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Codigo_Fabricante'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Fab'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCM'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 62
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor_Total'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 86
                Visible = True
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Log'
          ImageIndex = 2
          object Memo1: TMemo
            Left = 0
            Top = 0
            Width = 789
            Height = 244
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Servidor FTP'
      ImageIndex = 1
      object Grade: TRxDBGrid
        Left = 2
        Top = 1
        Width = 792
        Height = 251
        DataSource = Dados.dsPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeCellClick
        MultiSelect = True
        RowColor2 = 16776176
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 114
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DI'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da DI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destinatario_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente/Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 322
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_TotalNota'
            Title.Alignment = taCenter
            Title.Caption = 'Total do Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Envio_Armazem'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 257
        Width = 797
        Height = 30
        Align = alBottom
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object bSelecao: TButton
          Left = 1
          Top = 1
          Width = 86
          Height = 28
          Hint = 'Enviar arquivo para armaz'#233'm'
          Caption = '&Marcar Todos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bSelecaoClick
        end
        object bEnviarSai: TButton
          Left = 87
          Top = 1
          Width = 65
          Height = 28
          Hint = 'Enviar arquivo para armaz'#233'm'
          Caption = '&Enviar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bEnviarSaiClick
        end
        object cTodos: TCheckBox
          Left = 208
          Top = 9
          Width = 97
          Height = 17
          Caption = 'cTodos'
          TabOrder = 2
        end
      end
    end
  end
  object StaticText1: TStaticText
    Left = 9
    Top = 10
    Width = 73
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Armaz'#233'm'
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
  object cArmazem: TRxDBLookupCombo
    Left = 84
    Top = 10
    Width = 553
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;CNPJ;Nome'
    LookupDisplayIndex = 2
    LookupSource = Dados.dsFornecedores
    ParentFont = False
    TabOrder = 4
    OnChange = cArmazemChange
  end
  object StaticText38: TStaticText
    Left = 9
    Top = 32
    Width = 73
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Usu'#225'rio'
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
  object cUsuario: TDBEdit
    Left = 84
    Top = 32
    Width = 152
    Height = 21
    DataField = 'FTP_Usuario'
    DataSource = Dados.dsFornecedores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object StaticText39: TStaticText
    Left = 9
    Top = 55
    Width = 73
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Senha'
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
  object cSenha: TDBEdit
    Left = 84
    Top = 55
    Width = 152
    Height = 21
    DataField = 'FTP_Senha'
    DataSource = Dados.dsFornecedores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object StaticText40: TStaticText
    Left = 9
    Top = 78
    Width = 73
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Endere'#231'o (IP)'
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
  object cIP: TDBEdit
    Left = 84
    Top = 78
    Width = 553
    Height = 21
    DataField = 'FTP_IP'
    DataSource = Dados.dsFornecedores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object DBCheckBox23: TDBCheckBox
    Left = 643
    Top = 80
    Width = 90
    Height = 17
    Caption = 'Passive mode'
    DataField = 'FTP_Passive'
    DataSource = Dados.dsFornecedores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_ANMA'
      
        'select CNPJ = (SELECT CNPJ FROM Fornecedores WHERE Codigo = (SEL' +
        'ECT Transportador_Codigo FROM Pedidos WHERE Numero = Pedido))'
      '      ,Pedido'
      '      ,Pedido_Nota = Pedido'
      '      ,Item'
      '      ,Codigo_Mercadoria'
      '      ,Codigo_Fabricante'
      
        '      ,Sku = (SELECT Codigo_SKU FROM Produtos WHERE Codigo = Cod' +
        'igo_Mercadoria)'
      
        '      ,Descricao_Mercadoria = CAST(Descricao_Mercadoria AS VARCH' +
        'AR(120))'
      '      ,cod_unid_med     = upper(Unidade_Medida)'
      '      ,Quantidade'
      '      ,Valor_Unitario'
      
        '      ,CNPJ_Dest        = (select Destinatario_CNPJ_CPF from Ped' +
        'idos where Numero = Pedido)'
      
        '      ,Nome_Dest        = (select Destinatario_Nome from Pedidos' +
        ' where Numero = Pedido)'
      
        '      ,Endereco_Dest    = (select isnull(Destinatario_Rua, '#39#39')+'#39 +
        ' N'#186' '#39'+isnull(Destinatario_RuaNumero, '#39#39') from Pedidos where Nume' +
        'ro = Pedido)'
      
        '      ,Compl_Dest       = (select isnull(Destinatario_Complement' +
        'o, '#39#39') from Pedidos where Numero = Pedido)'
      
        '      ,CEP_Dest         = (select isnull(Destinatario_CEP, '#39#39') f' +
        'rom Pedidos where Numero = Pedido)'
      
        '      ,Muni_Dest        = (select isnull(Destinatario_MunicipioN' +
        'ome, '#39#39') from Pedidos where Numero = Pedido)'
      
        '      ,UF_dest          = (select isnull(Destinatario_Estado, '#39#39 +
        ') from Pedidos where Numero = Pedido)'
      '      ,Tipo_Estoque     = '#39#39' '
      '      ,Restricao_Est    = '#39#39' '
      '      ,Lote_Ini         = '#39#39' '
      '      ,Lote_Fim         = '#39#39' '
      'from  PedidosItens'
      'where Pedido IN(1)'
      'order by Item')
    Left = 252
    Top = 241
    object tItensCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 14
    end
    object tItensPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tItensItem: TSmallintField
      FieldName = 'Item'
    end
    object tItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
    end
    object tItensCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
    end
    object tItensSku: TStringField
      FieldName = 'Sku'
      ReadOnly = True
    end
    object tItenscod_unid_med: TStringField
      FieldName = 'cod_unid_med'
      ReadOnly = True
      Size = 3
    end
    object tItensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object tItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object tItensCNPJ_Dest: TStringField
      FieldName = 'CNPJ_Dest'
      ReadOnly = True
      Size = 14
    end
    object tItensNome_Dest: TStringField
      FieldName = 'Nome_Dest'
      ReadOnly = True
      Size = 60
    end
    object tItensEndereco_Dest: TStringField
      FieldName = 'Endereco_Dest'
      ReadOnly = True
      Size = 54
    end
    object tItensCompl_Dest: TStringField
      FieldName = 'Compl_Dest'
      ReadOnly = True
    end
    object tItensCEP_Dest: TStringField
      FieldName = 'CEP_Dest'
      ReadOnly = True
      Size = 8
    end
    object tItensMuni_Dest: TStringField
      FieldName = 'Muni_Dest'
      ReadOnly = True
      Size = 40
    end
    object tItensTipo_Estoque: TStringField
      FieldName = 'Tipo_Estoque'
      ReadOnly = True
      Size = 1
    end
    object tItensRestricao_Est: TStringField
      FieldName = 'Restricao_Est'
      ReadOnly = True
      Size = 1
    end
    object tItensLote_Ini: TStringField
      FieldName = 'Lote_Ini'
      ReadOnly = True
      Size = 1
    end
    object tItensLote_Fim: TStringField
      FieldName = 'Lote_Fim'
      ReadOnly = True
      Size = 1
    end
    object tItensDescricao_Mercadoria: TStringField
      FieldName = 'Descricao_Mercadoria'
      ReadOnly = True
      Size = 120
    end
    object tItensUF_dest: TStringField
      FieldName = 'UF_dest'
      ReadOnly = True
      Size = 2
    end
    object tItensPedido_Nota: TIntegerField
      FieldName = 'Pedido_Nota'
    end
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 552
    Top = 384
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPUT
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 552
    Top = 433
  end
  object RESTResponse1: TRESTResponse
    Left = 672
    Top = 488
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://apiteste.leolog-sc.com.br:8091/produtos/cadastrar?deposit' +
      '=3297566542&token=DkjtzVECTkazwo/jABMIQ'
    ContentType = 'application/json'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 632
    Top = 384
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 632
    Top = 433
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 252
    Top = 296
  end
  object RESTRequest3: TRESTRequest
    Client = RESTClient3
    Method = rmPUT
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 712
    Top = 433
  end
  object RESTClient3: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://apiteste.leolog-sc.com.br:8091/produtos/cadastrar?deposit' +
      '=3297566542&token=DkjtzVECTkazwo/jABMIQ'
    ContentType = 'application/json'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 712
    Top = 384
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 30000
    Left = 668
    Top = 25
  end
end
