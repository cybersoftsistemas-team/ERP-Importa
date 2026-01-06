object Financeiro_PedidosRepresentantes: TFinanceiro_PedidosRepresentantes
  Left = 442
  Top = 231
  BorderStyle = bsDialog
  Caption = 'Financeiro_PedidosRepresentantes'
  ClientHeight = 694
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1047
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitTop = -1
    ExplicitWidth = 992
  end
  object RxLabel3: TRxLabel
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
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 252
    Height = 18
    Caption = 'Libera'#231#227'o de Pedidos de Representantes.'
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
  object Panel2: TPanel
    Left = 0
    Top = 662
    Width = 1047
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 974
      Top = 2
      Width = 71
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bLiberar: TButton
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 60
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Li&berar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bLiberarClick
    end
    object bCancelarTodos: TButton
      AlignWithMargins = True
      Left = 156
      Top = 2
      Width = 70
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Ca&ncelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bCancelarTodosClick
    end
    object bRevalidarTodos: TButton
      AlignWithMargins = True
      Left = 228
      Top = 2
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Re&validar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bRevalidarTodosClick
    end
    object bPlanilha: TButton
      AlignWithMargins = True
      Left = 304
      Top = 2
      Width = 68
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Planil&ha'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bPlanilhaClick
    end
    object bImprimirPed: TButton
      AlignWithMargins = True
      Left = 374
      Top = 2
      Width = 93
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'I&mprimir Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bImprimirPedClick
    end
    object bSite: TButton
      AlignWithMargins = True
      Left = 579
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Sit&e'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bSiteClick
    end
    object bLibParcial: TButton
      AlignWithMargins = True
      Left = 64
      Top = 2
      Width = 90
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Liberar &Parcial'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bLibParcialClick
    end
    object bImprimirRom: TButton
      Left = 468
      Top = 1
      Width = 110
      Height = 30
      Hint = 'Revalidar todos os pedidos.'
      Align = alLeft
      Caption = 'Imprimir &Romaneio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bImprimirRomClick
    end
  end
  object Panel1: TPanel
    Left = 3
    Top = 433
    Width = 770
    Height = 221
    BevelOuter = bvLowered
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object lNome: TStaticText
      Left = 6
      Top = 6
      Width = 130
      Height = 21
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
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object DBEdit1: TDBEdit
      Left = 138
      Top = 6
      Width = 302
      Height = 21
      Color = clWhite
      DataField = 'Cliente_Nome'
      DataSource = dsPedidosRep
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 480
      Top = 6
      Width = 135
      Height = 21
      Color = clWhite
      DataField = 'Cliente_CNPJ'
      DataSource = dsPedidosRep
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 6
      Top = 75
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Limite de Cr'#233'dito'
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
    object DBEdit3: TDBEdit
      Left = 138
      Top = 75
      Width = 169
      Height = 21
      Color = clWhite
      DataField = 'Limite_Credito'
      DataSource = Dados.dsClientes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 98
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Limite Cr'#233'dito Utilizado'
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
    object DBEdit4: TDBEdit
      Left = 138
      Top = 98
      Width = 169
      Height = 21
      Color = clWhite
      DataField = 'Limite_Utilizado'
      DataSource = Dados.dsClientes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 121
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Limite de Cr'#233'dito Saldo'
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
    object cSaldo: TCurrencyEdit
      Left = 138
      Top = 121
      Width = 169
      Height = 21
      AutoSize = False
      Color = 12303223
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 657
      Top = 6
      Width = 106
      Height = 21
      Color = clWhite
      DataField = 'Cliente_CPF'
      DataSource = dsPedidosRep
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object StaticText1: TStaticText
      Left = 444
      Top = 6
      Width = 34
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CNPJ'
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
    object StaticText5: TStaticText
      Left = 621
      Top = 6
      Width = 34
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CPF'
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
    object DBMemo1: TDBMemo
      Left = 138
      Top = 167
      Width = 625
      Height = 47
      TabStop = False
      DataField = 'Observacao'
      DataSource = dsPedidosRep
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 12
      WantTabs = True
    end
    object StaticText6: TStaticText
      Left = 6
      Top = 167
      Width = 130
      Height = 47
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = '        Observa'#231#245'es'
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
    object StaticText7: TStaticText
      Left = 6
      Top = 144
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor em Atraso'
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
    object cAtraso: TCurrencyEdit
      Left = 138
      Top = 144
      Width = 169
      Height = 21
      AutoSize = False
      Color = 12303223
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object StaticText9: TStaticText
      Left = 310
      Top = 144
      Width = 77
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Dias em atraso'
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
    object cDias: TCurrencyEdit
      Left = 389
      Top = 144
      Width = 62
      Height = 21
      AutoSize = False
      Color = 12303223
      DisplayFormat = '0'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object StaticText8: TStaticText
      Left = 6
      Top = 29
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Condi'#231#227'o Pgto.'
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
    object StaticText10: TStaticText
      Left = 6
      Top = 52
      Width = 130
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
      TabOrder = 19
      Transparent = False
      StyleElements = []
    end
    object DBEdit6: TDBEdit
      Left = 138
      Top = 52
      Width = 625
      Height = 21
      Color = clWhite
      DataField = 'Terminal_Entrega'
      DataSource = dsPedidosRep
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object DBEdit7: TDBEdit
      Left = 138
      Top = 29
      Width = 625
      Height = 21
      Color = clWhite
      DataField = 'Condicao_Pgto'
      DataSource = dsPedidosRep
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 1041
    Height = 380
    ActivePage = TabSheet1
    Align = alTop
    TabHeight = 24
    TabOrder = 2
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = 'Pedidos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1033
        Height = 316
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel5'
        TabOrder = 0
        object Grade: TDBGrid
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1033
          Height = 313
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Align = alClient
          Color = clWhite
          Ctl3D = True
          DataSource = dsPedidosRep
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = GradeCellClick
          OnDblClick = GradeDblClick
          OnKeyDown = GradeKeyDown
          OnKeyUp = GradeKeyUp
          OnTitleClick = GradeTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Pedido'
              Title.Alignment = taCenter
              Title.Caption = 'Pedido N'#186
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 70
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
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Origem_Pedido'
              Title.Alignment = taCenter
              Title.Caption = 'Origem'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Representante_Nome'
              Title.Alignment = taCenter
              Title.Caption = 'Representante'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 225
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Transportador_Nome'
              Title.Alignment = taCenter
              Title.Caption = 'Transportador'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 192
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Modal_Nome'
              Title.Alignment = taCenter
              Title.Caption = 'Prazo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Total_Pedido'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desconto'
              Title.Alignment = taCenter
              Title.Caption = 'Desc'
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
              FieldName = 'Comissao'
              Title.Alignment = taCenter
              Title.Caption = '% Ven'
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
              FieldName = 'Comissao_Gerencia'
              Title.Alignment = taCenter
              Title.Caption = '% Ger'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 35
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Cancelado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Webdings'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Can'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 25
              Visible = True
            end>
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 316
        Width = 1033
        Height = 30
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object bPesquisa: TButton
          AlignWithMargins = True
          Left = 462
          Top = 2
          Width = 86
          Height = 26
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = '&Pesquisar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bPesquisaClick
        end
        object bSelNenhum: TButton
          AlignWithMargins = True
          Left = 346
          Top = 2
          Width = 114
          Height = 26
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Selecionar &Nenhum'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bSelNenhumClick
        end
        object bSelTodos: TButton
          AlignWithMargins = True
          Left = 244
          Top = 2
          Width = 100
          Height = 26
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Selecionar &Todos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bSelTodosClick
        end
        object Navega: TDBNavigator
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 240
          Height = 26
          Cursor = crHandPoint
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          DataSource = dsPedidosRep
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
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
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Itens'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeItens: TDBGrid
        Left = 0
        Top = 0
        Width = 1033
        Height = 346
        Align = alClient
        DataSource = Dados.dsPedidosRepresentantesItens
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
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = GradeItensDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 311
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Unit'#225'rio'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliquota_IPI'
            Title.Alignment = taCenter
            Title.Caption = 'IPI'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desconto'
            Title.Alignment = taCenter
            Title.Caption = 'Desc'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Desconto'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Desc'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Disponivel'
            Title.Alignment = taCenter
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Width = 106
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Log'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cLog: TListBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1027
        Height = 327
        Align = alClient
        Color = 13303807
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Style = [fsBold]
        IntegralHeight = True
        ItemHeight = 17
        MultiSelect = True
        ParentFont = False
        TabOrder = 0
        StyleElements = [seBorder]
      end
    end
  end
  object cOcultarCancelados: TCheckBox
    Left = 826
    Top = 602
    Width = 167
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Ocultar os pedidos cancelados.'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = cOcultarCanceladosClick
  end
  object cOrigem: TRadioGroup
    Left = 826
    Top = 462
    Width = 170
    Height = 113
    Caption = 'Origem'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Representantes'
      'E-Commerce'
      'Televendas')
    TabOrder = 4
    OnClick = cOrigemClick
  end
  object PedidosRep: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PedidosRepresentantes'
      
        '  (Pedido, Data, Representante, Cliente, Transportador, Modalida' +
        'de_Pagamento, Prazo_Entrega, Comprador, Frete, Total_Pedido, Tot' +
        'al_IPI, Liberado, Tipo_Nota, Modalidade_Frete, Natureza_Codigo, ' +
        'Volume_Quantidade, Volume_Especie, Volume_PesoLiquido, Volume_Pe' +
        'soBruto, Inf_Complementares2, Faturado, Cancelado, Aliquota_ICMS' +
        ', Cliente_CNPJ, Cliente_CPF, Cliente_Nome, Cliente_RG, Cliente_C' +
        'EP, Cliente_Rua, Cliente_Bairro, Cliente_Municipio, Cliente_RuaN' +
        'umero, Cliente_Complemento, Cliente_Estado, Cliente_IE, Cliente_' +
        'Telefone, Cliente_Email, Cliente_Contato, Cliente_Ramo, Cliente_' +
        'Representante, Cliente_Simples, Cliente_ZonaFranca, Cliente_Cons' +
        'umidorFinal, Tipo_Pedido, Situacao, Gerar_Pedido, Desconto, Tota' +
        'l_Desconto, Comissao, Tipo_Faturamento, Cliente_MunicipioNome, A' +
        'tendente, Atendente_Comissao, Observacao, Situacao_Televendas, F' +
        'aturamento, Valor_FreteEmpresa, Valor_FreteCliente, Comissao_Ger' +
        'encia, Vendedor, Indicador_IE, Origem_Pedido, Banco, Sel, Aguard' +
        'ando_Conferencia, Aguardando_Cliente, Local, Alterado, Ordem_Com' +
        'pra, Data_Despacho, Novo, Data_Planilha, Planilha, Gera_Boleto, ' +
        'Local_Entrega, Tipo_Pgto, Data_Liberacao, Data_Conferencia, Data' +
        '_Faturamento, Usuario, Data_Separacao, Numero_Financeiro, Autori' +
        'zado)'
      'VALUES'
      
        '  (:Pedido, :Data, :Representante, :Cliente, :Transportador, :Mo' +
        'dalidade_Pagamento, :Prazo_Entrega, :Comprador, :Frete, :Total_P' +
        'edido, :Total_IPI, :Liberado, :Tipo_Nota, :Modalidade_Frete, :Na' +
        'tureza_Codigo, :Volume_Quantidade, :Volume_Especie, :Volume_Peso' +
        'Liquido, :Volume_PesoBruto, :Inf_Complementares2, :Faturado, :Ca' +
        'ncelado, :Aliquota_ICMS, :Cliente_CNPJ, :Cliente_CPF, :Cliente_N' +
        'ome, :Cliente_RG, :Cliente_CEP, :Cliente_Rua, :Cliente_Bairro, :' +
        'Cliente_Municipio, :Cliente_RuaNumero, :Cliente_Complemento, :Cl' +
        'iente_Estado, :Cliente_IE, :Cliente_Telefone, :Cliente_Email, :C' +
        'liente_Contato, :Cliente_Ramo, :Cliente_Representante, :Cliente_' +
        'Simples, :Cliente_ZonaFranca, :Cliente_ConsumidorFinal, :Tipo_Pe' +
        'dido, :Situacao, :Gerar_Pedido, :Desconto, :Total_Desconto, :Com' +
        'issao, :Tipo_Faturamento, :Cliente_MunicipioNome, :Atendente, :A' +
        'tendente_Comissao, :Observacao, :Situacao_Televendas, :Faturamen' +
        'to, :Valor_FreteEmpresa, :Valor_FreteCliente, :Comissao_Gerencia' +
        ', :Vendedor, :Indicador_IE, :Origem_Pedido, :Banco, :Sel, :Aguar' +
        'dando_Conferencia, :Aguardando_Cliente, :Local, :Alterado, :Orde' +
        'm_Compra, :Data_Despacho, :Novo, :Data_Planilha, :Planilha, :Ger' +
        'a_Boleto, :Local_Entrega, :Tipo_Pgto, :Data_Liberacao, :Data_Con' +
        'ferencia, :Data_Faturamento, :Usuario, :Data_Separacao, :Numero_' +
        'Financeiro, :Autorizado)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data_Planilha = :Old_Data_Planilha')
    SQLUpdate.Strings = (
      'UPDATE PedidosRepresentantes'
      'SET'
      
        '  Pedido = :Pedido, Data = :Data, Representante = :Representante' +
        ', Cliente = :Cliente, Transportador = :Transportador, Modalidade' +
        '_Pagamento = :Modalidade_Pagamento, Prazo_Entrega = :Prazo_Entre' +
        'ga, Comprador = :Comprador, Frete = :Frete, Total_Pedido = :Tota' +
        'l_Pedido, Total_IPI = :Total_IPI, Liberado = :Liberado, Tipo_Not' +
        'a = :Tipo_Nota, Modalidade_Frete = :Modalidade_Frete, Natureza_C' +
        'odigo = :Natureza_Codigo, Volume_Quantidade = :Volume_Quantidade' +
        ', Volume_Especie = :Volume_Especie, Volume_PesoLiquido = :Volume' +
        '_PesoLiquido, Volume_PesoBruto = :Volume_PesoBruto, Inf_Compleme' +
        'ntares2 = :Inf_Complementares2, Faturado = :Faturado, Cancelado ' +
        '= :Cancelado, Aliquota_ICMS = :Aliquota_ICMS, Cliente_CNPJ = :Cl' +
        'iente_CNPJ, Cliente_CPF = :Cliente_CPF, Cliente_Nome = :Cliente_' +
        'Nome, Cliente_RG = :Cliente_RG, Cliente_CEP = :Cliente_CEP, Clie' +
        'nte_Rua = :Cliente_Rua, Cliente_Bairro = :Cliente_Bairro, Client' +
        'e_Municipio = :Cliente_Municipio, Cliente_RuaNumero = :Cliente_R' +
        'uaNumero, Cliente_Complemento = :Cliente_Complemento, Cliente_Es' +
        'tado = :Cliente_Estado, Cliente_IE = :Cliente_IE, Cliente_Telefo' +
        'ne = :Cliente_Telefone, Cliente_Email = :Cliente_Email, Cliente_' +
        'Contato = :Cliente_Contato, Cliente_Ramo = :Cliente_Ramo, Client' +
        'e_Representante = :Cliente_Representante, Cliente_Simples = :Cli' +
        'ente_Simples, Cliente_ZonaFranca = :Cliente_ZonaFranca, Cliente_' +
        'ConsumidorFinal = :Cliente_ConsumidorFinal, Tipo_Pedido = :Tipo_' +
        'Pedido, Situacao = :Situacao, Gerar_Pedido = :Gerar_Pedido, Desc' +
        'onto = :Desconto, Total_Desconto = :Total_Desconto, Comissao = :' +
        'Comissao, Tipo_Faturamento = :Tipo_Faturamento, Cliente_Municipi' +
        'oNome = :Cliente_MunicipioNome, Atendente = :Atendente, Atendent' +
        'e_Comissao = :Atendente_Comissao, Observacao = :Observacao, Situ' +
        'acao_Televendas = :Situacao_Televendas, Faturamento = :Faturamen' +
        'to, Valor_FreteEmpresa = :Valor_FreteEmpresa, Valor_FreteCliente' +
        ' = :Valor_FreteCliente, Comissao_Gerencia = :Comissao_Gerencia, ' +
        'Vendedor = :Vendedor, Indicador_IE = :Indicador_IE, Origem_Pedid' +
        'o = :Origem_Pedido, Banco = :Banco, Sel = :Sel, Aguardando_Confe' +
        'rencia = :Aguardando_Conferencia, Aguardando_Cliente = :Aguardan' +
        'do_Cliente, Local = :Local, Alterado = :Alterado, Ordem_Compra =' +
        ' :Ordem_Compra, Data_Despacho = :Data_Despacho, Novo = :Novo, Da' +
        'ta_Planilha = :Data_Planilha, Planilha = :Planilha, Gera_Boleto ' +
        '= :Gera_Boleto, Local_Entrega = :Local_Entrega, Tipo_Pgto = :Tip' +
        'o_Pgto, Data_Liberacao = :Data_Liberacao, Data_Conferencia = :Da' +
        'ta_Conferencia, Data_Faturamento = :Data_Faturamento, Usuario = ' +
        ':Usuario, Data_Separacao = :Data_Separacao, Numero_Financeiro = ' +
        ':Numero_Financeiro, Autorizado = :Autorizado'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data_Planilha = :Old_Data_Planilha')
    SQLRefresh.Strings = (
      
        'SELECT Pedido, Data, Representante, Cliente, Transportador, Moda' +
        'lidade_Pagamento, Prazo_Entrega, Comprador, Frete, Total_Pedido,' +
        ' Total_IPI, Liberado, Tipo_Nota, Modalidade_Frete, Natureza_Codi' +
        'go, Volume_Quantidade, Volume_Especie, Volume_PesoLiquido, Volum' +
        'e_PesoBruto, Inf_Complementares2, Faturado, Cancelado, Aliquota_' +
        'ICMS, Cliente_CNPJ, Cliente_CPF, Cliente_Nome, Cliente_RG, Clien' +
        'te_CEP, Cliente_Rua, Cliente_Bairro, Cliente_Municipio, Cliente_' +
        'RuaNumero, Cliente_Complemento, Cliente_Estado, Cliente_IE, Clie' +
        'nte_Telefone, Cliente_Email, Cliente_Contato, Cliente_Ramo, Clie' +
        'nte_Representante, Cliente_Simples, Cliente_ZonaFranca, Cliente_' +
        'ConsumidorFinal, Tipo_Pedido, Situacao, Gerar_Pedido, Desconto, ' +
        'Total_Desconto, Comissao, Tipo_Faturamento, Cliente_MunicipioNom' +
        'e, Atendente, Atendente_Comissao, Observacao, Situacao_Televenda' +
        's, Faturamento, Valor_FreteEmpresa, Valor_FreteCliente, Comissao' +
        '_Gerencia, Vendedor, Indicador_IE, Origem_Pedido, Banco, Sel, Ag' +
        'uardando_Conferencia, Aguardando_Cliente, Local, Alterado, Ordem' +
        '_Compra, Data_Despacho, Novo, Data_Planilha, Planilha, Gera_Bole' +
        'to, Local_Entrega, Tipo_Pgto, Data_Liberacao, Data_Conferencia, ' +
        'Data_Faturamento, Usuario, Data_Separacao, Numero_Financeiro, Au' +
        'torizado FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Pedido AND Data_Planilha = :Data_Planilha')
    SQLLock.Strings = (
      'SELECT * FROM PedidosRepresentantes'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data_Planilha = :Old_Data_Planilha')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM PedidosRepresentantes'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      
        '      ,(SELECT Nome FROM Fornecedores WHERE Representante_Codigo' +
        ' = Representante) AS Representante_Nome'
      
        '      ,(SELECT Nome FROM Fornecedores WHERE Codigo = Transportad' +
        'or) AS Transportador_Nome'
      '      ,Minimo = 0'
      '      ,Estoque = cast(0 as bit)'
      '      ,Condicao_Pgto = '#39#39
      'FROM PedidosRepresentantes')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterScroll = PedidosRepAfterScroll
    Left = 303
    Top = 8
    object PedidosRepRepresentante: TSmallintField
      FieldName = 'Representante'
      Origin = 'PedidosRepresentantes.Representante'
    end
    object PedidosRepCliente: TSmallintField
      FieldName = 'Cliente'
      Origin = 'PedidosRepresentantes.Cliente'
    end
    object PedidosRepTransportador: TSmallintField
      FieldName = 'Transportador'
      Origin = 'PedidosRepresentantes.Transportador'
    end
    object PedidosRepModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
      Origin = 'PedidosRepresentantes.Modalidade_Pagamento'
    end
    object PedidosRepPrazo_Entrega: TSmallintField
      FieldName = 'Prazo_Entrega'
      Origin = 'PedidosRepresentantes.Prazo_Entrega'
    end
    object PedidosRepComprador: TStringField
      FieldName = 'Comprador'
      Origin = 'PedidosRepresentantes.Comprador'
      Size = 50
    end
    object PedidosRepFrete: TSmallintField
      FieldName = 'Frete'
      Origin = 'PedidosRepresentantes.Frete'
    end
    object PedidosRepTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      Origin = 'PedidosRepresentantes.Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepTotal_IPI: TCurrencyField
      FieldName = 'Total_IPI'
      Origin = 'PedidosRepresentantes.Total_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepLiberado: TBooleanField
      FieldName = 'Liberado'
      Origin = 'PedidosRepresentantes.Liberado'
    end
    object PedidosRepTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
      Origin = 'PedidosRepresentantes.Tipo_Nota'
    end
    object PedidosRepModalidade_Frete: TSmallintField
      FieldName = 'Modalidade_Frete'
      Origin = 'PedidosRepresentantes.Modalidade_Frete'
    end
    object PedidosRepNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      Origin = 'PedidosRepresentantes.Natureza_Codigo'
      Size = 4
    end
    object PedidosRepVolume_Quantidade: TFloatField
      FieldName = 'Volume_Quantidade'
      Origin = 'PedidosRepresentantes.Volume_Quantidade'
    end
    object PedidosRepVolume_Especie: TStringField
      FieldName = 'Volume_Especie'
      Origin = 'PedidosRepresentantes.Volume_Especie'
    end
    object PedidosRepVolume_PesoLiquido: TFloatField
      FieldName = 'Volume_PesoLiquido'
      Origin = 'PedidosRepresentantes.Volume_PesoLiquido'
    end
    object PedidosRepVolume_PesoBruto: TFloatField
      FieldName = 'Volume_PesoBruto'
      Origin = 'PedidosRepresentantes.Volume_PesoBruto'
    end
    object PedidosRepInf_Complementares2: TMemoField
      FieldName = 'Inf_Complementares2'
      Origin = 'PedidosRepresentantes.Inf_Complementares2'
      BlobType = ftMemo
    end
    object PedidosRepFaturado: TBooleanField
      FieldName = 'Faturado'
      Origin = 'PedidosRepresentantes.Faturado'
    end
    object PedidosRepCancelado: TBooleanField
      FieldName = 'Cancelado'
      Origin = 'PedidosRepresentantes.Cancelado'
      DisplayValues = 'a'
    end
    object PedidosRepAliquota_ICMS: TFloatField
      FieldName = 'Aliquota_ICMS'
      Origin = 'PedidosRepresentantes.Aliquota_ICMS'
    end
    object PedidosRepCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      Origin = 'PedidosRepresentantes.Cliente_CNPJ'
      EditMask = '##.###.###/####-##;0; '
      Size = 14
    end
    object PedidosRepCliente_CPF: TStringField
      FieldName = 'Cliente_CPF'
      Origin = 'PedidosRepresentantes.Cliente_CPF'
      EditMask = '###.###.###-##;0; '
      Size = 14
    end
    object PedidosRepCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Origin = 'PedidosRepresentantes.Cliente_Nome'
      Size = 50
    end
    object PedidosRepCliente_RG: TStringField
      FieldName = 'Cliente_RG'
      Origin = 'PedidosRepresentantes.Cliente_RG'
      Size = 15
    end
    object PedidosRepCliente_CEP: TStringField
      FieldName = 'Cliente_CEP'
      Origin = 'PedidosRepresentantes.Cliente_CEP'
      Size = 8
    end
    object PedidosRepCliente_Rua: TStringField
      FieldName = 'Cliente_Rua'
      Origin = 'PedidosRepresentantes.Cliente_Rua'
      Size = 40
    end
    object PedidosRepCliente_Bairro: TStringField
      FieldName = 'Cliente_Bairro'
      Origin = 'PedidosRepresentantes.Cliente_Bairro'
      Size = 40
    end
    object PedidosRepCliente_Municipio: TIntegerField
      FieldName = 'Cliente_Municipio'
      Origin = 'PedidosRepresentantes.Cliente_Municipio'
    end
    object PedidosRepCliente_RuaNumero: TStringField
      FieldName = 'Cliente_RuaNumero'
      Origin = 'PedidosRepresentantes.Cliente_RuaNumero'
      Size = 10
    end
    object PedidosRepCliente_Complemento: TStringField
      FieldName = 'Cliente_Complemento'
      Origin = 'PedidosRepresentantes.Cliente_Complemento'
    end
    object PedidosRepCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Origin = 'PedidosRepresentantes.Cliente_Estado'
      Size = 2
    end
    object PedidosRepCliente_IE: TStringField
      FieldName = 'Cliente_IE'
      Origin = 'PedidosRepresentantes.Cliente_IE'
      Size = 18
    end
    object PedidosRepCliente_Telefone: TStringField
      FieldName = 'Cliente_Telefone'
      Origin = 'PedidosRepresentantes.Cliente_Telefone'
      Size = 15
    end
    object PedidosRepCliente_Email: TStringField
      FieldName = 'Cliente_Email'
      Origin = 'PedidosRepresentantes.Cliente_Email'
      Size = 60
    end
    object PedidosRepCliente_Contato: TStringField
      FieldName = 'Cliente_Contato'
      Origin = 'PedidosRepresentantes.Cliente_Contato'
      Size = 50
    end
    object PedidosRepCliente_Ramo: TSmallintField
      FieldName = 'Cliente_Ramo'
      Origin = 'PedidosRepresentantes.Cliente_Ramo'
    end
    object PedidosRepCliente_Representante: TSmallintField
      FieldName = 'Cliente_Representante'
      Origin = 'PedidosRepresentantes.Cliente_Representante'
    end
    object PedidosRepCliente_Simples: TBooleanField
      FieldName = 'Cliente_Simples'
      Origin = 'PedidosRepresentantes.Cliente_Simples'
    end
    object PedidosRepCliente_ZonaFranca: TBooleanField
      FieldName = 'Cliente_ZonaFranca'
      Origin = 'PedidosRepresentantes.Cliente_ZonaFranca'
    end
    object PedidosRepCliente_ConsumidorFinal: TBooleanField
      FieldName = 'Cliente_ConsumidorFinal'
      Origin = 'PedidosRepresentantes.Cliente_ConsumidorFinal'
    end
    object PedidosRepTipo_Pedido: TStringField
      FieldName = 'Tipo_Pedido'
      Origin = 'PedidosRepresentantes.Tipo_Pedido'
      Size = 60
    end
    object PedidosRepSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'PedidosRepresentantes.Situacao'
    end
    object PedidosRepGerar_Pedido: TBooleanField
      DisplayWidth = 1
      FieldName = 'Gerar_Pedido'
      Origin = 'PedidosRepresentantes.Gerar_Pedido'
      DisplayValues = 'a'
    end
    object PedidosRepDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'PedidosRepresentantes.Desconto'
    end
    object PedidosRepTotal_Desconto: TCurrencyField
      FieldName = 'Total_Desconto'
      Origin = 'PedidosRepresentantes.Total_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepComissao: TFloatField
      FieldName = 'Comissao'
      Origin = 'PedidosRepresentantes.Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepTipo_Faturamento: TSmallintField
      FieldName = 'Tipo_Faturamento'
      Origin = 'PedidosRepresentantes.Tipo_Faturamento'
    end
    object PedidosRepRepresentante_Nome: TStringField
      FieldName = 'Representante_Nome'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object PedidosRepCliente_MunicipioNome: TStringField
      FieldName = 'Cliente_MunicipioNome'
      Origin = 'PedidosRepresentantes.Cliente_MunicipioNome'
      Size = 40
    end
    object PedidosRepOrigem_Pedido: TStringField
      FieldName = 'Origem_Pedido'
      Origin = 'PedidosRepresentantes.Origem_Pedido'
      Size = 10
    end
    object PedidosRepAtendente: TStringField
      FieldName = 'Atendente'
      Origin = 'PedidosRepresentantes.Atendente'
      Size = 15
    end
    object PedidosRepAtendente_Comissao: TFloatField
      FieldName = 'Atendente_Comissao'
      Origin = 'PedidosRepresentantes.Atendente_Comissao'
    end
    object PedidosRepObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'PedidosRepresentantes.Observacao'
      BlobType = ftMemo
    end
    object PedidosRepSituacao_Televendas: TStringField
      FieldName = 'Situacao_Televendas'
      Origin = 'PedidosRepresentantes.Situacao_Televendas'
      Size = 10
    end
    object PedidosRepFaturamento: TBooleanField
      FieldName = 'Faturamento'
      Origin = 'PedidosRepresentantes.Faturamento'
    end
    object PedidosRepValor_FreteEmpresa: TCurrencyField
      FieldName = 'Valor_FreteEmpresa'
      Origin = 'PedidosRepresentantes.Valor_FreteEmpresa'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepValor_FreteCliente: TCurrencyField
      FieldName = 'Valor_FreteCliente'
      Origin = 'PedidosRepresentantes.Valor_FreteCliente'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepComissao_Gerencia: TFloatField
      FieldName = 'Comissao_Gerencia'
      Origin = 'PedidosRepresentantes.Comissao_Gerencia'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepVendedor: TStringField
      FieldName = 'Vendedor'
      Origin = 'PedidosRepresentantes.Vendedor'
      Size = 80
    end
    object PedidosRepIndicador_IE: TSmallintField
      FieldName = 'Indicador_IE'
      Origin = 'PedidosRepresentantes.Indicador_IE'
    end
    object PedidosRepBanco: TSmallintField
      FieldName = 'Banco'
    end
    object PedidosRepSel: TBooleanField
      FieldName = 'Sel'
      DisplayValues = 'a'
    end
    object PedidosRepAguardando_Conferencia: TBooleanField
      FieldName = 'Aguardando_Conferencia'
    end
    object PedidosRepAguardando_Cliente: TBooleanField
      FieldName = 'Aguardando_Cliente'
    end
    object PedidosRepLocal: TSmallintField
      FieldName = 'Local'
    end
    object PedidosRepAlterado: TBooleanField
      FieldName = 'Alterado'
    end
    object PedidosRepOrdem_Compra: TStringField
      FieldName = 'Ordem_Compra'
    end
    object PedidosRepTransportador_Nome: TStringField
      FieldName = 'Transportador_Nome'
      ReadOnly = True
      Size = 60
    end
    object PedidosRepModal_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Modal_Nome'
      LookupDataSet = Dados.ModalidadesPgto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Modalidade_Pagamento'
      Size = 50
      Lookup = True
    end
    object PedidosRepData_Despacho: TDateTimeField
      FieldName = 'Data_Despacho'
    end
    object PedidosRepNovo: TBooleanField
      FieldName = 'Novo'
    end
    object PedidosRepMinimo: TIntegerField
      FieldName = 'Minimo'
      ReadOnly = True
    end
    object PedidosRepPlanilha: TStringField
      FieldName = 'Planilha'
      Size = 80
    end
    object PedidosRepGera_Boleto: TBooleanField
      FieldName = 'Gera_Boleto'
    end
    object PedidosRepLocal_Entrega: TMemoField
      FieldName = 'Local_Entrega'
      BlobType = ftMemo
    end
    object PedidosRepEstoque: TBooleanField
      FieldName = 'Estoque'
      ReadOnly = True
    end
    object PedidosRepData_Liberacao: TDateTimeField
      FieldName = 'Data_Liberacao'
    end
    object PedidosRepData_Conferencia: TDateTimeField
      FieldName = 'Data_Conferencia'
    end
    object PedidosRepData_Faturamento: TDateTimeField
      FieldName = 'Data_Faturamento'
    end
    object PedidosRepData: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PedidosRepData_Planilha: TDateTimeField
      FieldName = 'Data_Planilha'
    end
    object PedidosRepTipo_Pgto: TStringField
      FieldName = 'Tipo_Pgto'
      FixedChar = True
      Size = 1
    end
    object PedidosRepPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object PedidosRepUsuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object PedidosRepData_Separacao: TDateTimeField
      FieldName = 'Data_Separacao'
    end
    object PedidosRepNumero_Financeiro: TIntegerField
      FieldName = 'Numero_Financeiro'
    end
    object PedidosRepAutorizado: TBooleanField
      FieldName = 'Autorizado'
    end
    object PedidosRepRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object PedidosRepData_Autorizacao: TDateTimeField
      FieldName = 'Data_Autorizacao'
    end
    object PedidosRepParcial: TStringField
      FieldName = 'Parcial'
      FixedChar = True
      Size = 1
    end
    object PedidosRepTerminal_Entrega: TStringField
      FieldName = 'Terminal_Entrega'
      Size = 60
    end
    object PedidosRepValor_Garantia: TCurrencyField
      FieldName = 'Valor_Garantia'
    end
    object PedidosRepValor_CustoPorto: TCurrencyField
      FieldName = 'Valor_CustoPorto'
    end
    object PedidosRepData_JanelaIni: TDateTimeField
      FieldName = 'Data_JanelaIni'
    end
    object PedidosRepData_JanelaFim: TDateTimeField
      FieldName = 'Data_JanelaFim'
    end
    object PedidosRepTipo_Venda: TStringField
      FieldName = 'Tipo_Venda'
      Size = 11
    end
    object PedidosRepVolume: TStringField
      FieldName = 'Volume'
      Size = 60
    end
    object PedidosRepData_Retirada: TDateTimeField
      FieldName = 'Data_Retirada'
    end
    object PedidosRepData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
    end
    object PedidosRepPercentual_Diferenca: TFloatField
      FieldName = 'Percentual_Diferenca'
    end
    object PedidosRepDemurrage: TStringField
      FieldName = 'Demurrage'
      Size = 10
    end
    object PedidosRepInspetor: TStringField
      FieldName = 'Inspetor'
      Size = 10
    end
    object PedidosRepAFRMM: TStringField
      FieldName = 'AFRMM'
      Size = 10
    end
    object PedidosRepNacionalizacao: TStringField
      FieldName = 'Nacionalizacao'
      Size = 10
    end
    object PedidosRepValor_MultaAtraso: TCurrencyField
      FieldName = 'Valor_MultaAtraso'
    end
    object PedidosRepModal_Carregamento: TStringField
      FieldName = 'Modal_Carregamento'
      Size = 25
    end
    object PedidosRepPedido_Pai: TStringField
      FieldName = 'Pedido_Pai'
      Size = 10
    end
    object PedidosRepPedido_Pai2: TStringField
      FieldName = 'Pedido_Pai2'
      Size = 10
    end
    object PedidosRepFormacao_Preco: TStringField
      FieldName = 'Formacao_Preco'
      Size = 80
    end
    object PedidosRepINCOTERM: TStringField
      FieldName = 'INCOTERM'
      FixedChar = True
      Size = 3
    end
    object PedidosRepCondicao_Pgto: TStringField
      FieldName = 'Condicao_Pgto'
      ReadOnly = True
      Size = 1
    end
  end
  object dsPedidosRep: TDataSource
    DataSet = PedidosRep
    Left = 305
    Top = 57
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT COUNT(*) AS Qtde FROM PedidosRepresentantesItens ')
    Left = 368
    Top = 8
  end
  object tCliente: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 416
    Top = 7
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PedidosRepresentantes ')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 583
    Top = 8
  end
  object dstPedidos: TDataSource
    DataSet = tPedidos
    Left = 584
    Top = 56
  end
  object tRItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  Item'
      '       ,Codigo_Mercadoria'
      
        '       ,Descricao = (SELECT Descricao FROM Produtos WHERE Codigo' +
        ' = Codigo_Mercadoria)'
      '       ,Quantidade'
      '       ,Valor_Unitario'
      '       ,Desconto'
      '       ,Total_Desconto = Valor_Desconto * Quantidade'
      '       ,Valor_Desconto'
      
        '       ,Valor_Liquido = ISNULL(Valor_Unitario, 0) - ISNULL(Desco' +
        'nto, 0)'
      '       ,Aliquota_IPI'
      
        '       ,Valor_IPI = (ISNULL(Valor_Unitario, 0) - ISNULL(Desconto' +
        ', 0)) * (Aliquota_IPI / 100)'
      
        '       ,Valor_Total = ((ISNULL(Valor_Unitario, 0) - ISNULL(Desco' +
        'nto, 0)) + (ISNULL(Valor_Unitario, 0) - ISNULL(Desconto, 0)) * (' +
        'Aliquota_IPI / 100)) * ISNULL(Quantidade, 0)'
      'FROM PedidosRepresentantesItens '
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 655
    Top = 7
  end
  object dstrItens: TDataSource
    DataSet = tRItens
    Left = 656
    Top = 56
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select * from PedidosRepresentantes')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 304
    Top = 129
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select * from PedidosRepresentantes')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 304
    Top = 185
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 158
    object ExcluirPedido1: TMenuItem
      Caption = 'Excluir Pedido'
      OnClick = ExcluirPedido1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Voltar1: TMenuItem
      Caption = '&Voltar'
      OnClick = Voltar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
    end
  end
  object tExiste: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 304
    Top = 255
  end
  object rPedido: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Pedido de Venda'
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
      'C:\Sistemas_XE\Faturamento\Codigo_Fonte\Relatorios\Pedido_Venda_' +
      'Cliente.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    EmailSettings.Recipients.Strings = (
      'eder@cybersoftsistemas.com.br'
      'elismar@cybersoftsistemas.com.br')
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
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
    PDFSettings.ScaleImages = False
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 807
    Top = 136
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand1: TppHeaderBand
      AfterPrint = ppHeaderBand1AfterPrint
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 90752
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  DADOS DO PEDIDO'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3735
        mmLeft = 0
        mmTop = 66943
        mmWidth = 197484
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label39'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  DADOS DO TRANSPORTADOR'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3735
        mmLeft = 0
        mmTop = 30692
        mmWidth = 197484
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label40'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  DADOS DO CLIENTE'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 0
        mmTop = 14288
        mmWidth = 197484
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line22'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 13607
        mmLeft = 175684
        mmTop = 0
        mmWidth = 1134
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label41'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 265
        mmWidth = 19728
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 10092543
        DataField = 'Numero'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 4910
        mmLeft = 176742
        mmTop = 4498
        mmWidth = 19728
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        Border.BorderPositions = [bpLeft, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 10092543
        DataField = 'Data'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 4274
        mmLeft = 176742
        mmTop = 9304
        mmWidth = 19728
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label42'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO DE VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 22
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7620
        mmLeft = 22754
        mmTop = 454
        mmWidth = 152136
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label43'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOME'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 18521
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label44'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3630
        mmLeft = 0
        mmTop = 22225
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label45'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 22225
        mmWidth = 13790
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'Cliente_Bairro'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 22225
        mmWidth = 32347
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label46'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 21960
        mmWidth = 9987
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'Cliente_MunicipioNome'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 22225
        mmWidth = 26988
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label47'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 22225
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText37'
        Border.mmPadding = 0
        DataField = 'Cliente_Estado'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 22225
        mmWidth = 23019
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label48'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 18521
        mmWidth = 9987
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'Cliente_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 18521
        mmWidth = 26988
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 18521
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'Cliente_IE'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 18521
        mmWidth = 23019
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label50'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3630
        mmLeft = 0
        mmTop = 25929
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText41'
        Border.mmPadding = 0
        DataField = 'Cliente_Telefone'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label51'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 25929
        mmWidth = 13790
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label52'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOME'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 34925
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label53'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 38894
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label54'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 38894
        mmWidth = 13790
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText42'
        Border.mmPadding = 0
        DataField = 'Transp_Bairro'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 38894
        mmWidth = 32347
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label55'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 38894
        mmWidth = 9987
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText43'
        Border.mmPadding = 0
        DataField = 'Transp_Municipio'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 38894
        mmWidth = 26988
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label56'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 38894
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText44'
        Border.mmPadding = 0
        DataField = 'Transp_Estado'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 38894
        mmWidth = 23019
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label57'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 34925
        mmWidth = 9987
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText45'
        Border.mmPadding = 0
        DataField = 'Transp_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 34925
        mmWidth = 26988
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label58'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 34925
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText46'
        Border.mmPadding = 0
        DataField = 'Transp_IE'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 34925
        mmWidth = 23019
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label59'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 42598
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText48'
        Border.mmPadding = 0
        DataField = 'Transp_Telefone'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 42598
        mmWidth = 20108
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label60'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 42598
        mmWidth = 13790
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label61'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REPRESENTANTE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 71176
        mmWidth = 23941
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText50'
        Border.mmPadding = 0
        DataField = 'Representante_Cod'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 24158
        mmTop = 71176
        mmWidth = 7303
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText51'
        Border.mmPadding = 0
        DataField = 'Modalidade'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 24158
        mmTop = 74880
        mmWidth = 71529
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label62'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FORMA PGTO'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 74880
        mmWidth = 23941
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText52'
        Border.mmPadding = 0
        DataField = 'Parcelas'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 117475
        mmTop = 74880
        mmWidth = 14552
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label64'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186' DE PARCELAS'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 96573
        mmTop = 74880
        mmWidth = 20181
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line23'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 13607
        mmLeft = 196850
        mmTop = 0
        mmWidth = 1134
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label65'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  ITEM'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 0
        mmTop = 87018
        mmWidth = 7938
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label66'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 8202
        mmTop = 87018
        mmWidth = 11791
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label67'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 20108
        mmTop = 87018
        mmWidth = 111346
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label301'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  PRODUTOS'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3735
        mmLeft = 0
        mmTop = 83126
        mmWidth = 197612
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label69'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'QTDE'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 140165
        mmTop = 87018
        mmWidth = 16440
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label70'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UM'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 131674
        mmTop = 87018
        mmWidth = 8103
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label71'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VLR UNIT'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 156809
        mmTop = 87018
        mmWidth = 17532
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label72'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VLR TOTAL'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 174537
        mmTop = 87018
        mmWidth = 23058
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText64'
        Border.mmPadding = 0
        DataField = 'Ordem_Compra'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 24158
        mmTop = 78672
        mmWidth = 38365
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ORDEM DE COMPRA'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 78672
        mmWidth = 23941
        BandType = 0
        LayerName = BandLayer5
      end
      object iLogo2: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Visible = False
        Border.mmPadding = 0
        mmHeight = 13364
        mmLeft = 0
        mmTop = 265
        mmWidth = 22468
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label80'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VENDEDOR'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 65352
        mmTop = 78585
        mmWidth = 15169
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Vendedor'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 80963
        mmTop = 78585
        mmWidth = 113771
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label82'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  DADOS DE ENTREGA'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3735
        mmLeft = 0
        mmTop = 46833
        mmWidth = 197484
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label83'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'RECEBEDOR'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 51066
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label84'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 55035
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label85'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 55035
        mmWidth = 13790
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Bairro_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 55035
        mmWidth = 32347
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label86'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 55035
        mmWidth = 9987
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText60'
        Border.mmPadding = 0
        DataField = 'Municipio_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 55035
        mmWidth = 26988
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label87'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 55035
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText65'
        Border.mmPadding = 0
        DataField = 'Estado_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 55035
        mmWidth = 23019
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label88'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 51066
        mmWidth = 9987
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label89'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 51066
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText67'
        Border.mmPadding = 0
        DataField = 'IE_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 51066
        mmWidth = 23019
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label90'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 58739
        mmWidth = 15240
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText69'
        Border.mmPadding = 0
        DataField = 'Telefone_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 58739
        mmWidth = 20108
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label601'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 58739
        mmWidth = 13790
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line19'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 56363
        mmLeft = 40481
        mmTop = 14288
        mmWidth = 3024
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText53'
        Border.mmPadding = 0
        DataField = 'Cliente_Nome'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15615
        mmTop = 18521
        mmWidth = 103395
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText54'
        Border.mmPadding = 0
        DataField = 'Transp_Nome'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15694
        mmTop = 34925
        mmWidth = 102674
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText70'
        Border.mmPadding = 0
        DataField = 'Recebedor_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15609
        mmTop = 51066
        mmWidth = 102674
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText49'
        Border.mmPadding = 0
        DataField = 'Representante_Nome'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 33947
        mmTop = 71176
        mmWidth = 61673
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText71'
        Border.mmPadding = 0
        DataField = 'Rua_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15609
        mmTop = 55035
        mmWidth = 46314
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText68'
        Border.mmPadding = 0
        DataField = 'CEP_Entrega'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15609
        mmTop = 58739
        mmWidth = 19483
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText201'
        Border.mmPadding = 0
        DataField = 'Transp_CEP'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15694
        mmTop = 42598
        mmWidth = 19483
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText55'
        Border.mmPadding = 0
        DataField = 'Transp_Rua'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15694
        mmTop = 38894
        mmWidth = 46314
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText40'
        Border.mmPadding = 0
        DataField = 'Cliente_CEP'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15615
        mmTop = 25929
        mmWidth = 19483
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'Cliente_Rua'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15615
        mmTop = 22225
        mmWidth = 46314
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText66'
        Border.mmPadding = 0
        DataField = 'CNPJ_Entrega'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 51066
        mmWidth = 26988
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label901'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 62440
        mmWidth = 15750
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText72'
        Border.mmPadding = 0
        DataField = 'Horario_Entrega'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15609
        mmTop = 62440
        mmWidth = 171715
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label107'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 62706
        mmTop = 22225
        mmWidth = 4498
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText86'
        Border.mmPadding = 0
        DataField = 'Cliente_RuaNumero'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 22225
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label108'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 62706
        mmTop = 38894
        mmWidth = 4498
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText87: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText87'
        Border.mmPadding = 0
        DataField = 'Transp_RuaNumero'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 38894
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel109: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label109'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 62706
        mmTop = 55033
        mmWidth = 4498
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText88: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText88'
        Border.mmPadding = 0
        DataField = 'Rua_EntregaNumero'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 55033
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer5
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
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = BandLayer5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Pedido de Venda'
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
          Units = utMillimeters
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pItens'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 4500
            mmPrintPosition = 0
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText26'
              Border.mmPadding = 0
              DataField = 'Item'
              DataPipeline = pItens
              DisplayFormat = '0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 0
              mmTop = 364
              mmWidth = 7938
              BandType = 4
              LayerName = BandLayer4
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText29'
              Border.mmPadding = 0
              DataField = 'Codigo_Mercadoria'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 8996
              mmTop = 364
              mmWidth = 10744
              BandType = 4
              LayerName = BandLayer4
            end
            object ppDBMemo1: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo1'
              Border.mmPadding = 0
              CharWrap = False
              DataField = 'Descricao'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 20902
              mmTop = 364
              mmWidth = 110212
              BandType = 4
              LayerName = BandLayer4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText31'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 140405
              mmTop = 364
              mmWidth = 15776
              BandType = 4
              LayerName = BandLayer4
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText32'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Unidade'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 131674
              mmTop = 364
              mmWidth = 8103
              BandType = 4
              LayerName = BandLayer4
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText33'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_Unitario'
              DataPipeline = pItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 156809
              mmTop = 364
              mmWidth = 17101
              BandType = 4
              LayerName = BandLayer4
            end
            object ppDBText62: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'Volumes'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 175222
              mmTop = 364
              mmWidth = 21774
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4855
              mmLeft = 131409
              mmTop = 0
              mmWidth = 1563
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4855
              mmLeft = 156545
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4855
              mmLeft = 174428
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              StretchWithParent = True
              mmHeight = 4855
              mmLeft = 194734
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4500
              mmLeft = 0
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Anchors = [atLeft, atBottom]
              Border.Style = psClear
              Border.mmPadding = 0
              Pen.Width = 0
              StretchWithParent = True
              mmHeight = 331
              mmLeft = 0
              mmTop = 4304
              mmWidth = 197546
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4855
              mmLeft = 139612
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4855
              mmLeft = 20108
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = BandLayer4
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4855
              mmLeft = 8202
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = BandLayer4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 16933
            mmPrintPosition = 0
            object ppLabel36: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label31'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL DO PEDIDO'
              Color = 6697728
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3440
              mmLeft = 143839
              mmTop = 265
              mmWidth = 30427
              BandType = 7
              LayerName = BandLayer4
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Valor_Total'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3440
              mmLeft = 175222
              mmTop = 265
              mmWidth = 21774
              BandType = 7
              LayerName = BandLayer4
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3971
              mmLeft = 143310
              mmTop = 0
              mmWidth = 2811
              BandType = 7
              LayerName = BandLayer4
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 3969
              mmLeft = 143310
              mmTop = 3969
              mmWidth = 54189
              BandType = 7
              LayerName = BandLayer4
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 3971
              mmLeft = 196850
              mmTop = 0
              mmWidth = 783
              BandType = 7
              LayerName = BandLayer4
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3971
              mmLeft = 174427
              mmTop = 0
              mmWidth = 2811
              BandType = 7
              LayerName = BandLayer4
            end
            object ppLabel78: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label78'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'OBSERVA'#199#213'ES'
              Color = 10053222
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3440
              mmLeft = 0
              mmTop = 6879
              mmWidth = 198000
              BandType = 7
              LayerName = BandLayer4
            end
            object ppDBMemo4: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo4'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Border.mmPadding = 0
              CharWrap = True
              DataField = 'Observacao'
              DataPipeline = pPedidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              RemoveEmptyLines = False
              Stretch = True
              TextAlignment = taFullJustified
              DataPipelineName = 'pPedidos'
              mmHeight = 6883
              mmLeft = 0
              mmTop = 10050
              mmWidth = 198000
              BandType = 7
              LayerName = BandLayer4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'BandLayer4'
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
      mmHeight = 3175
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable4'
        AutoSize = False
        Border.BorderPositions = [bpLeft]
        Border.Visible = True
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 166951
        mmTop = 0
        mmWidth = 30091
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line201'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = -1060
        mmTop = 1
        mmWidth = 197598
        BandType = 8
        LayerName = BandLayer5
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable5'
        AutoSize = False
        Border.BorderPositions = [bpLeft]
        Border.Visible = True
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3175
        mmLeft = 46301
        mmTop = -3
        mmWidth = 119063
        BandType = 8
        LayerName = BandLayer5
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label76'
        Border.Weight = 1.000000000000000000
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
        mmHeight = 2910
        mmLeft = 0
        mmTop = 263
        mmWidth = 45773
        BandType = 8
        LayerName = BandLayer5
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Numero'
      DataPipeline = pPedidos
      GroupFileSettings.NewFile = True
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pPedidos'
      NewFile = True
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLabel81: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label81'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PREVIS'#195'O DE VENCIMENTO DAS PARCELAS'
          Color = 10053222
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          VerticalAlignment = avCenter
          mmHeight = 3735
          mmLeft = 0
          mmTop = 1054
          mmWidth = 197897
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
        object mParcelas: TppMemo
          DesignLayer = ppDesignLayer2
          UserName = 'mParcelas'
          Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
          Border.Visible = True
          Border.mmPadding = 0
          Caption = 'mParcelas'
          CharWrap = False
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          Lines.Strings = (
            
              '01:01/01/2023  9.999.999.99 |02:01/01/2023  9.999.999.99 |03:01/' +
              '01/2023  9.999.999.99 |04:01/01/2023  9.999.999.99 |')
          RemoveEmptyLines = True
          Stretch = True
          mmHeight = 3730
          mmLeft = 0
          mmTop = 4737
          mmWidth = 197897
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'BandLayer5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rRomaneio: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Romaneio de Carga'
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
    Template.FileName = 'C:\Sistemas_XE\Faturamento\Codigo_Fonte\Relatorios\Romaneio.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    EmailSettings.Recipients.Strings = (
      'eder@cybersoftsistemas.com.br'
      'elismar@cybersoftsistemas.com.br')
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
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
    PDFSettings.ScaleImages = False
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 872
    Top = 138
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand2: TppHeaderBand
      AfterPrint = ppHeaderBand2AfterPrint
      BeforePrint = ppHeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 91811
      mmPrintPosition = 0
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label93'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  DADOS DE ENTREGA'
        Color = 3947775
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3735
        mmLeft = 0
        mmTop = 46831
        mmWidth = 197484
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  DADOS DO PEDIDO'
        Color = 3947775
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3735
        mmLeft = 0
        mmTop = 67208
        mmWidth = 197484
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label39'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  DADOS DO TRANSPORTADOR'
        Color = 3947775
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3735
        mmLeft = 0
        mmTop = 30692
        mmWidth = 197484
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label40'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  DADOS DO CLIENTE'
        Color = 3947775
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 0
        mmTop = 14288
        mmWidth = 197484
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line19'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 56586
        mmLeft = 40481
        mmTop = 14288
        mmWidth = 3024
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line22'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 13607
        mmLeft = 175684
        mmTop = 0
        mmWidth = 1134
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label41'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 265
        mmWidth = 19728
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText28'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 10092543
        DataField = 'Numero'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 4689
        mmLeft = 176742
        mmTop = 4498
        mmWidth = 19728
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText30'
        Border.BorderPositions = [bpLeft, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Color = 10092543
        DataField = 'Data'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 4495
        mmLeft = 176742
        mmTop = 9083
        mmWidth = 19728
        BandType = 0
        LayerName = Foreground2
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'iLogo1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Visible = False
        Border.mmPadding = 0
        mmHeight = 13364
        mmLeft = 0
        mmTop = 265
        mmWidth = 22468
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label42'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ROMANEIO DE CARGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 22
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7620
        mmLeft = 22754
        mmTop = 189
        mmWidth = 152082
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label43'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOME'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 18521
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label44'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 22225
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'Cliente_Rua'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 22225
        mmWidth = 46314
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label45'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 22225
        mmWidth = 13790
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'Cliente_Bairro'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 22225
        mmWidth = 32347
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label46'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 21960
        mmWidth = 12649
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'Cliente_MunicipioNome'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 141326
        mmTop = 22225
        mmWidth = 24084
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label47'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 22225
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText37'
        Border.mmPadding = 0
        DataField = 'Cliente_Estado'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 22225
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label48'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ/CPF'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 18521
        mmWidth = 12649
        BandType = 0
        LayerName = Foreground2
      end
      object pCliCNPJ: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pCliCNPJ'
        Border.mmPadding = 0
        DataField = 'Cliente_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 141326
        mmTop = 18521
        mmWidth = 24084
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 18521
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'Cliente_IE'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 18521
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label50'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 25929
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText40'
        Border.mmPadding = 0
        DataField = 'Cliente_CEP'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 25929
        mmWidth = 22129
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText41'
        Border.mmPadding = 0
        DataField = 'Cliente_Telefone'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label51'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 25929
        mmWidth = 13790
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label52'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOME'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 34925
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label53'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 38894
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label54'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 38894
        mmWidth = 13790
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText42'
        Border.mmPadding = 0
        DataField = 'Transp_Bairro'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 38894
        mmWidth = 32347
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label55'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 38894
        mmWidth = 12649
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText43'
        Border.mmPadding = 0
        DataField = 'Transp_Municipio'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 141326
        mmTop = 38894
        mmWidth = 24084
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label56'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 38894
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText44'
        Border.mmPadding = 0
        DataField = 'Transp_Estado'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 38894
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label57'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 34925
        mmWidth = 12649
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText45'
        Border.mmPadding = 0
        DataField = 'Transp_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 141326
        mmTop = 34925
        mmWidth = 24084
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label58'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 34925
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText46'
        Border.mmPadding = 0
        DataField = 'Transp_IE'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 34925
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label59'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 42598
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText201'
        Border.mmPadding = 0
        DataField = 'Transp_CEP'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 42598
        mmWidth = 21648
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText48'
        Border.mmPadding = 0
        DataField = 'Transp_Telefone'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 42598
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label60'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 42598
        mmWidth = 13790
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText49'
        Border.mmPadding = 0
        DataField = 'Representante_Nome'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 31485
        mmTop = 71441
        mmWidth = 63763
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label61'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REPRESENTANTE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 71441
        mmWidth = 21151
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText50'
        Border.mmPadding = 0
        DataField = 'Representante_Cod'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 21696
        mmTop = 71441
        mmWidth = 7303
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText51'
        Border.mmPadding = 0
        DataField = 'Modalidade'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 21696
        mmTop = 75145
        mmWidth = 73619
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label62'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FORMA PGTO'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 75145
        mmWidth = 21151
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText52'
        Border.mmPadding = 0
        DataField = 'Parcelas'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 117475
        mmTop = 75145
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label64'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186' DE PARCELAS'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 96573
        mmTop = 75145
        mmWidth = 20181
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line23'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 13607
        mmLeft = 196850
        mmTop = 0
        mmWidth = 1134
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label65'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  ITEM'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 0
        mmTop = 88077
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label66'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 8202
        mmTop = 88077
        mmWidth = 11791
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label67'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 20108
        mmTop = 88077
        mmWidth = 120180
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label301'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '  PRODUTOS'
        Color = 3947775
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3735
        mmLeft = 0
        mmTop = 84158
        mmWidth = 197612
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label69'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'QTDE'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 148609
        mmTop = 88077
        mmWidth = 16440
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label70'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UM'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 140494
        mmTop = 88077
        mmWidth = 7927
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label71'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CX MASTER'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 165278
        mmTop = 88077
        mmWidth = 14482
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label72'
        AutoSize = False
        Border.Style = psClear
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VOLUMES'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3734
        mmLeft = 180189
        mmTop = 88077
        mmWidth = 17596
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText53'
        Border.mmPadding = 0
        DataField = 'Cliente_Nome'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 18521
        mmWidth = 105865
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText54'
        Border.mmPadding = 0
        DataField = 'Transp_Nome'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 34925
        mmWidth = 105334
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText55'
        Border.mmPadding = 0
        DataField = 'Transp_Rua'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 38894
        mmWidth = 46302
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText63'
        Border.mmPadding = 0
        DataField = 'Ordem_Compra'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 21696
        mmTop = 78762
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ORDEM COMPRA'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 78762
        mmWidth = 21151
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label79'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VENDEDOR'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 65268
        mmTop = 78762
        mmWidth = 15169
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Vendedor'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 80961
        mmTop = 78850
        mmWidth = 113771
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label94'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'RECEBEDOR'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 51065
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel95: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label95'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 55033
        mmWidth = 23965
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label96'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 55033
        mmWidth = 13790
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText73'
        Border.mmPadding = 0
        DataField = 'Bairro_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 55033
        mmWidth = 32347
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label97'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 55033
        mmWidth = 9987
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText601'
        Border.mmPadding = 0
        DataField = 'Municipio_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 55033
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label98'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 55033
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText75'
        Border.mmPadding = 0
        DataField = 'Estado_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 55033
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label99'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 51065
        mmWidth = 9987
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label100'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 51065
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText76'
        Border.mmPadding = 0
        DataField = 'IE_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 51065
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label902'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 58738
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText77'
        Border.mmPadding = 0
        DataField = 'Telefone_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 94986
        mmTop = 58738
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONE'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 58738
        mmWidth = 13790
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText701'
        Border.mmPadding = 0
        DataField = 'Recebedor_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 51065
        mmWidth = 102674
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText79'
        Border.mmPadding = 0
        DataField = 'Rua_Entrega'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 55033
        mmWidth = 46302
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText80'
        Border.mmPadding = 0
        DataField = 'CEP_Entrega'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 58738
        mmWidth = 19483
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText81'
        Border.mmPadding = 0
        DataField = 'CNPJ_Entrega'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 51065
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label103'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 62442
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText82'
        Border.mmPadding = 0
        DataField = 'Horario_Entrega'
        DataPipeline = pPedidos
        DisplayFormat = '#####-###;0'
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 62442
        mmWidth = 171715
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label104'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 62707
        mmTop = 22225
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText83: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText83'
        Border.mmPadding = 0
        DataField = 'Cliente_RuaNumero'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 22225
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label105'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 62706
        mmTop = 38896
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText84: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText84'
        Border.mmPadding = 0
        DataField = 'Transp_RuaNumero'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 38896
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label106'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 62706
        mmTop = 55033
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText85: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText85'
        Border.mmPadding = 0
        DataField = 'Rua_EntregaNumero'
        DataPipeline = pPedidos
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 55033
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer3
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = pItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Romaneio de Carga'
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
          Units = utMillimeters
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pItens'
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText56: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText26'
              Border.mmPadding = 0
              DataField = 'Item'
              DataPipeline = pItens
              DisplayFormat = '0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 0
              mmTop = 666
              mmWidth = 7938
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText57: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText29'
              Border.mmPadding = 0
              DataField = 'Codigo_Mercadoria'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 8996
              mmTop = 666
              mmWidth = 10744
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBMemo2: TppDBMemo
              DesignLayer = ppDesignLayer4
              UserName = 'DBMemo1'
              Anchors = [atLeft]
              Border.mmPadding = 0
              CharWrap = False
              DataField = 'Descricao'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 20902
              mmTop = 666
              mmWidth = 119032
              BandType = 4
              LayerName = PageLayer1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppDBText58: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText31'
              Anchors = [atLeft, atTop, atBottom]
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 149225
              mmTop = 666
              mmWidth = 15776
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText59: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText32'
              Anchors = [atLeft, atTop, atBottom]
              Border.mmPadding = 0
              DataField = 'Unidade'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 140494
              mmTop = 666
              mmWidth = 8103
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText61: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'Volumes'
              Anchors = [atLeft, atTop, atBottom]
              Border.mmPadding = 0
              DataField = 'Volumes'
              DataPipeline = pItens
              DisplayFormat = '##0.000000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3636
              mmLeft = 180542
              mmTop = 666
              mmWidth = 16338
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line7'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 5292
              mmLeft = 140229
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line9'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 5292
              mmLeft = 165365
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line10'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 5292
              mmLeft = 179924
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line11'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              StretchWithParent = True
              mmHeight = 4855
              mmLeft = 194734
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line13'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = -1
              mmWidth = 1797
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine29: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line14'
              Anchors = [atLeft, atBottom]
              Border.Style = psClear
              Border.mmPadding = 0
              Pen.Width = 0
              StretchWithParent = True
              mmHeight = 364
              mmLeft = -1
              mmTop = 4408
              mmWidth = 197561
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine30: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 5292
              mmLeft = 148432
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine31: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 5292
              mmLeft = 20108
              mmTop = 0
              mmWidth = 2811
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLine32: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line5'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              StretchWithParent = True
              mmHeight = 4410
              mmLeft = 7850
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = PageLayer1
            end
            object ppLabel110: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label110'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 166000
              mmTop = 794
              mmWidth = 13198
              BandType = 4
              LayerName = PageLayer1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 100542
            mmPrintPosition = 0
            object ppLabel73: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label31'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL DE VOLUMES'
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3440
              mmLeft = 148961
              mmTop = 265
              mmWidth = 30567
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Volumes'
              DataPipeline = pItens
              DisplayFormat = ',##0.000000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pItens'
              mmHeight = 3440
              mmLeft = 180542
              mmTop = 265
              mmWidth = 16338
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine33: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line15'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3971
              mmLeft = 148432
              mmTop = 0
              mmWidth = 2811
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine34: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line16'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 1857
              mmLeft = 148432
              mmTop = 3973
              mmWidth = 49221
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine35: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line17'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 3971
              mmLeft = 196850
              mmTop = 0
              mmWidth = 783
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine36: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line18'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3969
              mmLeft = 180007
              mmTop = 0
              mmWidth = 2910
              BandType = 7
              LayerName = PageLayer1
            end
            object ppShape2: TppShape
              DesignLayer = ppDesignLayer4
              UserName = 'Shape1'
              Brush.Color = 15400959
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 20638
              mmLeft = 0
              mmTop = 50271
              mmWidth = 99484
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel74: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label37'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SEPARADO POR:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 4233
              mmTop = 56092
              mmWidth = 20373
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine37: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line12'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 25135
              mmTop = 59532
              mmWidth = 69321
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel75: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label38'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DATA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 4233
              mmTop = 62971
              mmWidth = 20373
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine38: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line4'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 25135
              mmTop = 66676
              mmWidth = 28310
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel77: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label77'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'OBSERVA'#199#213'ES'
              Color = 3947775
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3440
              mmLeft = 0
              mmTop = 6792
              mmWidth = 197909
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBMemo3: TppDBMemo
              DesignLayer = ppDesignLayer4
              UserName = 'DBMemo2'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Border.mmPadding = 0
              CharWrap = True
              DataField = 'Observacao'
              DataPipeline = pPedidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              RemoveEmptyLines = False
              TextAlignment = taFullJustified
              Transparent = True
              DataPipelineName = 'pPedidos'
              mmHeight = 35983
              mmLeft = 0
              mmTop = 10848
              mmWidth = 197909
              BandType = 7
              LayerName = PageLayer1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
          end
          object ppDesignLayers4: TppDesignLayers
            object ppDesignLayer4: TppDesignLayer
              UserName = 'PageLayer1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 2381
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable4'
        AutoSize = False
        Border.BorderPositions = [bpLeft]
        Border.Visible = True
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 168011
        mmTop = 0
        mmWidth = 30091
        BandType = 8
        LayerName = Foreground2
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line201'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = -794
        mmWidth = 197598
        BandType = 8
        LayerName = Foreground2
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable5'
        AutoSize = False
        Border.BorderPositions = [bpLeft]
        Border.Visible = True
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 0
        mmWidth = 119063
        BandType = 8
        LayerName = Foreground2
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label76'
        Border.Weight = 1.000000000000000000
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
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground2
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Numero'
      DataPipeline = pPedidos
      GroupFileSettings.NewFile = True
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pPedidos'
      NewFile = True
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 840
    Top = 186
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
      Position = 1
    end
    object pEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object pEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object pEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object pEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object pEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object pEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object pEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object pEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object pEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object pEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object pEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object pEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object pEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object pEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object pEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object pEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object pEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object pEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object pEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object pEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object pEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object pEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object pEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object pEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresasppField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresasppField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object pEmpresasppField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object pEmpresasppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresasppField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object pEmpresasppField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresasppField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresasppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresasppField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object pEmpresasppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pEmpresasppField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object pEmpresasppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresasppField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pEmpresasppField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresasppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresasppField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object pEmpresasppField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object pEmpresasppField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pEmpresasppField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object pEmpresasppField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object pEmpresasppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresasppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresasppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pEmpresasppField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresasppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pEmpresasppField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object pEmpresasppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object pEmpresasppField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresasppField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object pEmpresasppField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object pEmpresasppField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object pEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresasppField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object pEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresasppField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object pEmpresasppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object pEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresasppField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresasppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresasppField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object pEmpresasppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object pEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresasppField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresasppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object pEmpresasppField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object pEmpresasppField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object pEmpresasppField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresasppField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresasppField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object pEmpresasppField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object pEmpresasppField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
    object pEmpresasppField212: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ultimo_NSU'
      FieldName = 'Ultimo_NSU'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 211
    end
    object pEmpresasppField213: TppField
      FieldAlias = 'UF_WEBServiceEPEC'
      FieldName = 'UF_WEBServiceEPEC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 212
    end
    object pEmpresasppField214: TppField
      FieldAlias = 'Licensa_CTE_Util'
      FieldName = 'Licensa_CTE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 213
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField215: TppField
      FieldAlias = 'UF_WebServiceCTe'
      FieldName = 'UF_WebServiceCTe'
      FieldLength = 10
      DisplayWidth = 10
      Position = 214
    end
    object pEmpresasppField216: TppField
      FieldAlias = 'Email_Criptografia'
      FieldName = 'Email_Criptografia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 215
    end
    object pEmpresasppField217: TppField
      FieldAlias = 'Email_MsgFollowUp'
      FieldName = 'Email_MsgFollowUp'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 216
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField218: TppField
      FieldAlias = 'FCP_Interno'
      FieldName = 'FCP_Interno'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 217
    end
    object pEmpresasppField219: TppField
      FieldAlias = 'ImportarPlanPed_Bloqueado'
      FieldName = 'ImportarPlanPed_Bloqueado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 218
    end
  end
  object pPedidos: TppDBPipeline
    DataSource = dstPedidos
    UserName = 'pPedidos'
    Left = 841
    Top = 234
    MasterDataPipelineName = 'pItens'
  end
  object pItens: TppDBPipeline
    DataSource = dstrItens
    UserName = 'pItens'
    Left = 840
    Top = 282
    object pItensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item'
      FieldName = 'Item'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Mercadoria'
      FieldName = 'Codigo_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pItensppField3: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 5000
      DisplayWidth = 5000
      Position = 2
    end
    object pItensppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object pItensppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Master'
      FieldName = 'Quantidade_Master'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pItensppField6: TppField
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object pItensppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volumes'
      FieldName = 'Volumes'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pItensppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pItensppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
  end
end
