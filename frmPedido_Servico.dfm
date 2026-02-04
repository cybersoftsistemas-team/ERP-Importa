object Pedido_Servico: TPedido_Servico
  Left = 589
  Top = 195
  BorderStyle = bsDialog
  Caption = 'Pedido_Servico'
  ClientHeight = 743
  ClientWidth = 757
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
    Width = 757
    Height = 36
    Align = alTop
    Stretch = True
    ExplicitWidth = 744
  end
  object lTitulo: TRxLabel
    Left = 4
    Top = 15
    Width = 367
    Height = 18
    Caption = 'Confec'#231#227'o dos pedidos de nota fiscal de Servi'#231'os prestados.'
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
  object RxLabel3: TRxLabel
    Left = 4
    Top = -1
    Width = 262
    Height = 21
    Caption = 'PEDIDO DE NOTA FISCAL DE SERVI'#199'O'
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
  object Panel1: TPanel
    Left = 0
    Top = 713
    Width = 757
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 694
      Top = 1
      Width = 62
      Height = 28
      Cursor = crHandPoint
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
      Width = 360
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidoServico
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
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bDuplicatas: TButton
      Left = 361
      Top = 1
      Width = 94
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens da nota fiscal.'
      Align = alLeft
      Caption = 'Gerar &Duplicatas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bDuplicatasClick
    end
    object bImportar: TButton
      Left = 549
      Top = 1
      Width = 94
      Height = 28
      Cursor = crHandPoint
      Hint = 'Importart o XML da Nota'
      Align = alLeft
      Caption = 'Importar &XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImportarClick
    end
    object bEnviar: TButton
      Left = 455
      Top = 1
      Width = 94
      Height = 28
      Cursor = crHandPoint
      Hint = 'Enviar NF para SEFAZ'
      Align = alLeft
      Caption = 'Enviar SEFAZ'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = False
      OnClick = bEnviarClick
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 5
    Top = 41
    Width = 747
    Height = 667
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = TabSheet2
    Align = alClient
    TabHeight = 24
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&Pedidos'
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 733
        Height = 627
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object Image6: TImage
          Left = 559
          Top = 592
          Width = 162
          Height = 34
          Stretch = True
        end
        object Image5: TImage
          Left = 395
          Top = 592
          Width = 162
          Height = 34
          Stretch = True
        end
        object Image4: TImage
          Left = 231
          Top = 592
          Width = 162
          Height = 34
          Stretch = True
        end
        object Image3: TImage
          Left = 108
          Top = 592
          Width = 121
          Height = 34
          Stretch = True
        end
        object Label2: TLabel
          Left = 330
          Top = 231
          Width = 14
          Height = 16
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 111
          Top = 594
          Width = 56
          Height = 11
          Caption = 'Al'#237'quota ISS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 112
          Top = 606
          Width = 113
          Height = 16
          Alignment = taRightJustify
          DataField = 'Aliquota_ISS'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 234
          Top = 594
          Width = 57
          Height = 11
          Caption = 'Valor do ISS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cValorISS: TDBText
          Left = 235
          Top = 606
          Width = 154
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor_ISS'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 399
          Top = 594
          Width = 88
          Height = 11
          Caption = 'Impostos Dedut'#237'veis:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cTotalImpostos: TLabel
          Left = 522
          Top = 606
          Width = 31
          Height = 19
          Alignment = taRightJustify
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 563
          Top = 594
          Width = 47
          Height = 11
          Caption = 'Total Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cTotalNota: TDBText
          Left = 563
          Top = 606
          Width = 154
          Height = 16
          Alignment = taRightJustify
          DataField = 'Total_Nota'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object StaticText8: TStaticText
          Left = 5
          Top = 254
          Width = 101
          Height = 136
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Impostos'
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
        object StaticText4: TStaticText
          Left = 5
          Top = 231
          Width = 101
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Servi'#231'o'
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
        object cCliente: TDBLookupComboBox
          Left = 168
          Top = 97
          Width = 556
          Height = 21
          DataField = 'Cliente'
          DataSource = Dados.dsPedidoServico
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Nome;CNPJ'
          ListSource = Dados.dsClientes
          ParentFont = False
          TabOrder = 8
        end
        object cPedido: TDBEdit
          Left = 108
          Top = 5
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Numero'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object lCliente: TStaticText
          Left = 5
          Top = 97
          Width = 101
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
        object StaticText11: TStaticText
          Left = 5
          Top = 5
          Width = 101
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
          TabOrder = 34
          Transparent = False
          StyleElements = []
        end
        object StaticText9: TStaticText
          Left = 5
          Top = 74
          Width = 101
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Processo N'#186
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
        object cDescricao: TDBMemo
          Left = 108
          Top = 120
          Width = 615
          Height = 42
          Ctl3D = True
          DataField = 'Descricao_Servico'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object StaticText24: TStaticText
          Left = 5
          Top = 120
          Width = 101
          Height = 42
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Descri'#231#227'o Servi'#231'o'
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
        object cValorServico: TDBEdit
          Left = 108
          Top = 231
          Width = 112
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_Servico'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          MaxLength = 15
          ParentFont = False
          TabOrder = 11
          OnChange = cValorServicoChange
          OnExit = cValorServicoExit
        end
        object cImposto01: TDBLookupComboBox
          Left = 108
          Top = 254
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional01'
          DataSource = Dados.dsPedidoServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 15
          OnClick = cImposto01Click
          OnExit = cImposto01Exit
        end
        object cValor_Adicional01: TDBEdit
          Left = 592
          Top = 254
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional01'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnChange = cValor_Adicional01Change
        end
        object cImposto02: TDBLookupComboBox
          Left = 108
          Top = 277
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional02'
          DataSource = Dados.dsPedidoServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 18
          OnClick = cImposto02Click
          OnExit = cImposto02Exit
        end
        object cValor_Adicional02: TDBEdit
          Left = 592
          Top = 277
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional02'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          OnChange = cValor_Adicional02Change
        end
        object cImposto03: TDBLookupComboBox
          Left = 108
          Top = 300
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional03'
          DataSource = Dados.dsPedidoServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 21
          OnClick = cImposto03Click
          OnExit = cImposto03Exit
        end
        object cValor_Adicional03: TDBEdit
          Left = 592
          Top = 300
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional03'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          OnChange = cValor_Adicional03Change
        end
        object cImposto04: TDBLookupComboBox
          Left = 108
          Top = 323
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional04'
          DataSource = Dados.dsPedidoServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 24
          OnClick = cImposto04Click
          OnExit = cImposto04Exit
        end
        object cValor_Adicional04: TDBEdit
          Left = 592
          Top = 323
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional04'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          OnChange = cValor_Adicional04Change
        end
        object cImposto05: TDBLookupComboBox
          Left = 108
          Top = 346
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional05'
          DataSource = Dados.dsPedidoServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 27
          OnClick = cImposto05Click
          OnExit = cImposto05Exit
        end
        object cValor_Adicional05: TDBEdit
          Left = 592
          Top = 346
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional05'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
          OnChange = cValor_Adicional05Change
        end
        object cImposto06: TDBLookupComboBox
          Left = 108
          Top = 369
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional06'
          DataSource = Dados.dsPedidoServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 30
          OnClick = cImposto06Click
          OnExit = cImposto06Exit
        end
        object cValor_Adicional06: TDBEdit
          Left = 592
          Top = 369
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional06'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
          OnChange = cValor_Adicional06Change
        end
        object cAliquota_Adicional01: TDBEdit
          Left = 541
          Top = 254
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional01'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnChange = cAliquota_Adicional01Change
        end
        object cAliquota_Adicional02: TDBEdit
          Left = 541
          Top = 277
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional02'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          OnChange = cAliquota_Adicional02Change
        end
        object cAliquota_Adicional03: TDBEdit
          Left = 541
          Top = 300
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional03'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          OnChange = cAliquota_Adicional03Change
        end
        object cAliquota_Adicional04: TDBEdit
          Left = 541
          Top = 323
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional04'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          OnChange = cAliquota_Adicional04Change
        end
        object cAliquota_Adicional05: TDBEdit
          Left = 541
          Top = 346
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional05'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          OnChange = cAliquota_Adicional05Change
        end
        object cAliquota_Adicional06: TDBEdit
          Left = 541
          Top = 369
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional06'
          DataSource = Dados.dsPedidoServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
          OnChange = cAliquota_Adicional06Change
        end
        object StaticText10: TStaticText
          Left = 5
          Top = 592
          Width = 101
          Height = 34
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAIS'
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
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 108
          Top = 74
          Width = 149
          Height = 21
          DataField = 'Processo'
          DataSource = Dados.dsPedidoServico
          DropDownRows = 10
          DropDownWidth = 220
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Processo'
          ListField = 'Processo;Numero_Declaracao'
          ListSource = Dados.dsProcessosDOC
          ParentFont = False
          TabOrder = 6
        end
        object StaticText2: TStaticText
          Left = 223
          Top = 231
          Width = 58
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto'
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
        object cPercentualDesconto: TDBEdit
          Left = 283
          Top = 231
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_Percentual'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          TabOrder = 12
          OnExit = cPercentualDescontoExit
        end
        object cValorDesconto: TDBEdit
          Left = 350
          Top = 231
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_Valor'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          TabOrder = 13
          OnExit = cValorDescontoExit
        end
        object cTotalDesconto: TCurrencyEdit
          Left = 453
          Top = 231
          Width = 121
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
          TabOrder = 14
        end
        object cClienteCodigo: TDBEdit
          Left = 108
          Top = 97
          Width = 58
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cliente'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object lReferencia: TStaticText
          Left = 5
          Top = 28
          Width = 101
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Refer'#234'ncia Fiscal'
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
          OnClick = lReferenciaClick
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 168
          Top = 28
          Width = 556
          Height = 21
          DataField = 'Referencia_Fiscal'
          DataSource = Dados.dsPedidoServico
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsReferenciasFiscais
          ParentFont = False
          TabOrder = 4
          OnExit = DBLookupComboBox2Exit
        end
        object cReferencia: TDBEdit
          Left = 108
          Top = 28
          Width = 58
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Referencia_Fiscal'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = cReferenciaChange
        end
        object StaticText1: TStaticText
          Left = 5
          Top = 51
          Width = 101
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
          TabOrder = 42
          Transparent = False
          StyleElements = []
          OnClick = StaticText1Click
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 108
          Top = 51
          Width = 349
          Height = 21
          DataField = 'Centro_Custo'
          DataSource = Dados.dsPedidoServico
          DropDownRows = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCentroCusto
          ParentFont = False
          TabOrder = 5
        end
        object DBMemo1: TDBMemo
          Left = 108
          Top = 164
          Width = 615
          Height = 42
          Ctl3D = True
          DataField = 'Observacao'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object StaticText3: TStaticText
          Left = 5
          Top = 164
          Width = 101
          Height = 42
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
          TabOrder = 43
          Transparent = False
          StyleElements = []
        end
        object StaticText5: TStaticText
          Left = 190
          Top = 5
          Width = 76
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nota Fiscal N'#186
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
        object cNota: TDBEdit
          Left = 268
          Top = 5
          Width = 116
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Nota'
          DataSource = Dados.dsPedidoServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText6: TStaticText
          Left = 387
          Top = 5
          Width = 72
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
          TabOrder = 45
          Transparent = False
          StyleElements = []
        end
        object cDataEmissao: TDBDateEdit
          Left = 461
          Top = 5
          Width = 113
          Height = 21
          DataField = 'Data_Emissao'
          DataSource = Dados.dsPedidoServico
          CheckOnExit = True
          DialogTitle = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
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
          TabOrder = 2
          YearDigits = dyFour
        end
        object StaticText12: TStaticText
          Left = 5
          Top = 208
          Width = 102
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classifica'#231#227'o Servi'#231'o'
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
        object cClass: TDBLookupComboBox
          Left = 108
          Top = 208
          Width = 615
          Height = 21
          DataField = 'Classificacao_Servico'
          DataSource = Dados.dsPedidoServico
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsServicosClass
          ParentFont = False
          TabOrder = 47
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Notas Fiscais'
      ImageIndex = 1
      object Grade: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 447
        Width = 733
        Height = 183
        Align = alClient
        DataSource = dmFiscal.dsNotasServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_Emissao'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
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
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Servico'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Servi'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_ISS'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr ISS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Total Nota'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ClienteNome'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 285
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Referencia_Fiscal'
            Title.Alignment = taCenter
            Title.Caption = 'Ref'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end>
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 733
        Height = 438
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 1
        object Image2: TImage
          Left = 559
          Top = 392
          Width = 162
          Height = 34
          Stretch = True
        end
        object Image7: TImage
          Left = 395
          Top = 392
          Width = 162
          Height = 34
          Stretch = True
        end
        object Image8: TImage
          Left = 231
          Top = 392
          Width = 162
          Height = 34
          Stretch = True
        end
        object Image9: TImage
          Left = 108
          Top = 392
          Width = 121
          Height = 34
          Stretch = True
        end
        object Label6: TLabel
          Left = 330
          Top = 231
          Width = 14
          Height = 16
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 111
          Top = 394
          Width = 56
          Height = 11
          Caption = 'Al'#237'quota ISS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText2: TDBText
          Left = 112
          Top = 406
          Width = 113
          Height = 16
          Alignment = taRightJustify
          DataField = 'Aliquota_ISS'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 234
          Top = 394
          Width = 57
          Height = 11
          Caption = 'Valor do ISS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText3: TDBText
          Left = 235
          Top = 406
          Width = 154
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor_ISS'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 399
          Top = 394
          Width = 88
          Height = 11
          Caption = 'Impostos Dedut'#237'veis:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 522
          Top = 406
          Width = 31
          Height = 19
          Alignment = taRightJustify
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 563
          Top = 394
          Width = 47
          Height = 11
          Caption = 'Total Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText
          Left = 563
          Top = 406
          Width = 154
          Height = 16
          Alignment = taRightJustify
          DataField = 'Total_Nota'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object StaticText7: TStaticText
          Left = 5
          Top = 254
          Width = 101
          Height = 136
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Impostos'
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
        object StaticText13: TStaticText
          Left = 5
          Top = 231
          Width = 101
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Servi'#231'o'
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
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 168
          Top = 97
          Width = 556
          Height = 21
          DataField = 'Cliente'
          DataSource = dmFiscal.dsNotasServico
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Nome;CNPJ'
          ListSource = Dados.dsClientes
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit1: TDBEdit
          Left = 108
          Top = 5
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Numero'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText14: TStaticText
          Left = 5
          Top = 97
          Width = 101
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
        object StaticText15: TStaticText
          Left = 5
          Top = 5
          Width = 101
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
          TabOrder = 34
          Transparent = False
          StyleElements = []
        end
        object StaticText16: TStaticText
          Left = 5
          Top = 74
          Width = 101
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Processo N'#186
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
        object DBMemo2: TDBMemo
          Left = 108
          Top = 120
          Width = 615
          Height = 42
          Ctl3D = True
          DataField = 'Descricao_Servico'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object StaticText17: TStaticText
          Left = 5
          Top = 120
          Width = 101
          Height = 42
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Descri'#231#227'o Servi'#231'o'
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
        object DBEdit2: TDBEdit
          Left = 108
          Top = 231
          Width = 112
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_Servico'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          MaxLength = 15
          ParentFont = False
          TabOrder = 11
          OnChange = cValorServicoChange
          OnExit = cValorServicoExit
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 108
          Top = 254
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional01'
          DataSource = dmFiscal.dsNotasServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 15
          OnClick = cImposto01Click
          OnExit = cImposto01Exit
        end
        object DBEdit3: TDBEdit
          Left = 592
          Top = 254
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional01'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnChange = cValor_Adicional01Change
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 108
          Top = 277
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional02'
          DataSource = dmFiscal.dsNotasServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 18
          OnClick = cImposto02Click
          OnExit = cImposto02Exit
        end
        object DBEdit4: TDBEdit
          Left = 592
          Top = 277
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional02'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          OnChange = cValor_Adicional02Change
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 108
          Top = 300
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional03'
          DataSource = dmFiscal.dsNotasServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 21
          OnClick = cImposto03Click
          OnExit = cImposto03Exit
        end
        object DBEdit5: TDBEdit
          Left = 592
          Top = 300
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional03'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          OnChange = cValor_Adicional03Change
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 108
          Top = 323
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional04'
          DataSource = dmFiscal.dsNotasServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 24
          OnClick = cImposto04Click
          OnExit = cImposto04Exit
        end
        object DBEdit6: TDBEdit
          Left = 592
          Top = 323
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional04'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          OnChange = cValor_Adicional04Change
        end
        object DBLookupComboBox9: TDBLookupComboBox
          Left = 108
          Top = 346
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional05'
          DataSource = dmFiscal.dsNotasServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 27
          OnClick = cImposto05Click
          OnExit = cImposto05Exit
        end
        object DBEdit7: TDBEdit
          Left = 592
          Top = 346
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional05'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
          OnChange = cValor_Adicional05Change
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 108
          Top = 369
          Width = 431
          Height = 21
          DataField = 'Codigo_Adicional06'
          DataSource = dmFiscal.dsNotasServico
          DropDownAlign = daRight
          DropDownRows = 10
          DropDownWidth = 440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = Dados.dsImpostos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 30
          OnClick = cImposto06Click
          OnExit = cImposto06Exit
        end
        object DBEdit8: TDBEdit
          Left = 592
          Top = 369
          Width = 129
          Height = 21
          DataField = 'Valor_Adicional06'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
          OnChange = cValor_Adicional06Change
        end
        object DBEdit9: TDBEdit
          Left = 541
          Top = 254
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional01'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnChange = cAliquota_Adicional01Change
        end
        object DBEdit10: TDBEdit
          Left = 541
          Top = 277
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional02'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          OnChange = cAliquota_Adicional02Change
        end
        object DBEdit11: TDBEdit
          Left = 541
          Top = 300
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional03'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          OnChange = cAliquota_Adicional03Change
        end
        object DBEdit12: TDBEdit
          Left = 541
          Top = 323
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional04'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          OnChange = cAliquota_Adicional04Change
        end
        object DBEdit13: TDBEdit
          Left = 541
          Top = 346
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional05'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          OnChange = cAliquota_Adicional05Change
        end
        object DBEdit14: TDBEdit
          Left = 541
          Top = 369
          Width = 49
          Height = 21
          DataField = 'Aliquota_Adicional06'
          DataSource = dmFiscal.dsNotasServico
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
          OnChange = cAliquota_Adicional06Change
        end
        object StaticText18: TStaticText
          Left = 5
          Top = 392
          Width = 101
          Height = 34
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAIS'
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
        object DBLookupComboBox11: TDBLookupComboBox
          Left = 108
          Top = 74
          Width = 149
          Height = 21
          DataField = 'Processo'
          DataSource = dmFiscal.dsNotasServico
          DropDownRows = 10
          DropDownWidth = 220
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Processo'
          ListField = 'Processo;Numero_Declaracao'
          ListSource = Dados.dsProcessosDOC
          ParentFont = False
          TabOrder = 6
        end
        object StaticText19: TStaticText
          Left = 223
          Top = 231
          Width = 58
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto'
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
        object DBEdit15: TDBEdit
          Left = 283
          Top = 231
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_Percentual'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          TabOrder = 12
          OnExit = cPercentualDescontoExit
        end
        object DBEdit16: TDBEdit
          Left = 350
          Top = 231
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_Valor'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          TabOrder = 13
          OnExit = cValorDescontoExit
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 453
          Top = 231
          Width = 121
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
          TabOrder = 14
        end
        object DBEdit17: TDBEdit
          Left = 108
          Top = 97
          Width = 58
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cliente'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText20: TStaticText
          Left = 5
          Top = 28
          Width = 101
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Refer'#234'ncia Fiscal'
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
          OnClick = lReferenciaClick
        end
        object DBLookupComboBox12: TDBLookupComboBox
          Left = 168
          Top = 28
          Width = 556
          Height = 21
          DataField = 'Referencia_Fiscal'
          DataSource = dmFiscal.dsNotasServico
          DropDownRows = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsReferenciasFiscais
          ParentFont = False
          TabOrder = 4
          OnExit = DBLookupComboBox2Exit
        end
        object DBEdit18: TDBEdit
          Left = 108
          Top = 28
          Width = 58
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Referencia_Fiscal'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = cReferenciaChange
        end
        object StaticText21: TStaticText
          Left = 5
          Top = 51
          Width = 101
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
          TabOrder = 42
          Transparent = False
          StyleElements = []
          OnClick = StaticText1Click
        end
        object DBLookupComboBox13: TDBLookupComboBox
          Left = 108
          Top = 51
          Width = 349
          Height = 21
          DataField = 'Centro_Custo'
          DataSource = dmFiscal.dsNotasServico
          DropDownRows = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCentroCusto
          ParentFont = False
          TabOrder = 5
        end
        object DBMemo3: TDBMemo
          Left = 108
          Top = 164
          Width = 615
          Height = 42
          Ctl3D = True
          DataField = 'Observacao'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object StaticText22: TStaticText
          Left = 5
          Top = 164
          Width = 101
          Height = 42
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
          TabOrder = 43
          Transparent = False
          StyleElements = []
        end
        object StaticText23: TStaticText
          Left = 190
          Top = 5
          Width = 76
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nota Fiscal N'#186
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
        object DBEdit19: TDBEdit
          Left = 268
          Top = 5
          Width = 116
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Numero'
          DataSource = dmFiscal.dsNotasServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText25: TStaticText
          Left = 387
          Top = 5
          Width = 72
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
          TabOrder = 45
          Transparent = False
          StyleElements = []
        end
        object DBDateEdit1: TDBDateEdit
          Left = 461
          Top = 5
          Width = 113
          Height = 21
          DataField = 'Data_Emissao'
          DataSource = dmFiscal.dsNotasServico
          CheckOnExit = True
          DialogTitle = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
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
          TabOrder = 2
          YearDigits = dyFour
        end
        object StaticText26: TStaticText
          Left = 5
          Top = 208
          Width = 102
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classifica'#231#227'o Servi'#231'o'
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
        object DBLookupComboBox14: TDBLookupComboBox
          Left = 108
          Top = 208
          Width = 615
          Height = 21
          DataField = 'Classificacao_Servico'
          DataSource = dmFiscal.dsNotasServico
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsServicosClass
          ParentFont = False
          TabOrder = 47
        end
      end
    end
  end
  object tPedido: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Pedido FROM PedidosServico')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 150
    Top = 506
    object tPedidoPedido: TSmallintField
      FieldName = 'Pedido'
      ReadOnly = True
    end
  end
  object tProvisao: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 198
    Top = 506
  end
  object tLancamentos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 262
    Top = 506
  end
  object PopupMenu1: TPopupMenu
    Left = 332
    Top = 506
    object ExcluirNotaFiscal1: TMenuItem
      Caption = '&Excluir Nota Fiscal'
      OnClick = ExcluirNotaFiscal1Click
    end
    object Cancelar1: TMenuItem
      Caption = '&Cancelar'
    end
  end
  object cXML: TOpenDialog
    DefaultExt = 'xml'
    FileName = '*.xml'
    Filter = 'Arquivo de NF-e (xml)|*.xml'
    Options = [ofHideReadOnly, ofNoChangeDir, ofAllowMultiSelect, ofEnableSizing]
    Left = 108
    Top = 506
  end
  object ACBrNFSeX1: TACBrNFSeX
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.Provedor = proPadraoNacional
    Configuracoes.Geral.Versao = ve100
    Configuracoes.Geral.LayoutNFSe = lnfsPadraoNacionalv1
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'ES'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.Certificados.ArquivoPFX = 
      #39'c:\temp\ROTTA COMERCIAL-senha-11059647-validade-26-02-2026.pfx'#39 +
      ';'
    Configuracoes.Certificados.Senha = '11059647'
    Left = 508
    Top = 521
  end
end
