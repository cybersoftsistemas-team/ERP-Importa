object Pedido_RepresentantesSimp: TPedido_RepresentantesSimp
  Left = 206
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido_RepresentantesSimp'
  ClientHeight = 745
  ClientWidth = 1657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1657
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = -1
    ExplicitTop = -6
    ExplicitWidth = 1011
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 110
    Height = 21
    Caption = 'FATURAMENTO'
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
    Width = 208
    Height = 18
    Caption = 'Gerenciador de Pedidos de Venda'
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
    Top = 715
    Width = 1657
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1657
      30)
    object bSair: TButton
      Left = 1592
      Top = 1
      Width = 64
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImprimirSep: TButton
      Left = 441
      Top = 1
      Width = 110
      Height = 28
      Hint = 'Revalidar todos os pedidos.'
      Align = alLeft
      Caption = 'Imprimir &Romaneio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirSepClick
    end
    object bImprimirCli: TButton
      Left = 331
      Top = 1
      Width = 110
      Height = 28
      Hint = 'Revalidar todos os pedidos.'
      Align = alLeft
      Caption = 'Imprimir &Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bImprimirCliClick
    end
    object bSelTodosConf: TButton
      Left = 1
      Top = 1
      Width = 110
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alLeft
      Caption = 'Se&lecionar Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bSelTodosConfClick
    end
    object bSelNenhumCof: TButton
      Left = 111
      Top = 1
      Width = 110
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alLeft
      Caption = 'Selecionar &Nenhum'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bSelNenhumCofClick
    end
    object bAlterar: TButton
      Left = 221
      Top = 1
      Width = 110
      Height = 28
      Hint = 'Alterar itens do pedidos.'
      Align = alLeft
      Caption = '&Alterar Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bAlterarClick
    end
    object cExcel: TCheckBox
      AlignWithMargins = True
      Left = 571
      Top = 4
      Width = 121
      Height = 22
      Margins.Left = 20
      Align = alLeft
      Caption = 'Imprimir para Excel'
      TabOrder = 6
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 1651
    Height = 538
    ActivePage = TabSheet5
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    HotTrack = True
    ParentFont = False
    TabHeight = 26
    TabOrder = 1
    TabWidth = 160
    StyleElements = [seClient, seBorder]
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '1 -  LIBERADO P/SEPARA'#199#195'O'
      object Grade: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 1641
        Height = 308
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        Color = clWhite
        Ctl3D = True
        DataSource = dsPedidosRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
        OnCellClick = GradeCellClick
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
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcial'
            Title.Alignment = taCenter
            Title.Caption = 'Par'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
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
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ordem_Compra'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem de Compra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 118
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
            Width = 224
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
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 246
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
            Width = 178
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
            Width = 103
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
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_MunicipioNome'
            Title.Alignment = taCenter
            Title.Caption = 'Munic'#237'pio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Armazem_Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 222
            Visible = True
          end>
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 471
        Width = 1641
        Height = 30
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 205
          Height = 28
          Cursor = crHandPoint
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
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
        end
        object bCancLib: TButton
          Left = 206
          Top = 1
          Width = 62
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Align = alLeft
          Caption = '&Voltar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bCancLibClick
        end
        object bEnviarSep: TButton
          Left = 268
          Top = 1
          Width = 108
          Height = 28
          Hint = 'Revalidar todos os pedidos.'
          Align = alLeft
          Caption = '&Enviar Separa'#231#227'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bEnviarSepClick
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 408
        Width = 1641
        Height = 61
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 2
        object lNome: TStaticText
          Left = 6
          Top = 9
          Width = 69
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
          TabOrder = 0
          Transparent = False
          StyleElements = []
        end
        object StaticText1: TStaticText
          Left = 6
          Top = 32
          Width = 69
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'E-mail'
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
        object cArmazem: TDBLookupComboBox
          Left = 76
          Top = 9
          Width = 584
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'CNPJ'
          ListField = 'Nome;CNPJ;Email'
          ListSource = dstForn
          ParentFont = False
          TabOrder = 2
          OnClick = cArmazemClick
        end
        object cEmail: TEdit
          Left = 76
          Top = 32
          Width = 584
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = 'cEmail'
        end
        object StaticText2: TStaticText
          Left = 672
          Top = 8
          Width = 69
          Height = 45
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = '                   E-mail C'#243'pia'
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
        object cCopia: TMemo
          Left = 742
          Top = 9
          Width = 584
          Height = 44
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object cEnviarEmail: TCheckBox
          Left = 1343
          Top = 23
          Width = 90
          Height = 17
          Caption = 'Enviar E-Mail'
          TabOrder = 6
        end
      end
      object GradeItens1: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 311
        Width = 1641
        Height = 95
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Color = clWhite
        Ctl3D = True
        DataSource = dstGradeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
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
            Width = 44
            Visible = True
          end
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 794
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
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Master'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Master'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Volumes'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = '2 - EM SEPARA'#199#195'O'
      ImageIndex = 1
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 471
        Width = 1641
        Height = 30
        Margins.Left = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 1
          Width = 205
          Height = 28
          Cursor = crHandPoint
          DataSource = dstConferencia
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
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
        end
        object bCancConf: TButton
          Left = 206
          Top = 1
          Width = 62
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Align = alLeft
          Caption = '&Voltar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bCancConfClick
        end
        object bSeparado: TButton
          Left = 268
          Top = 1
          Width = 66
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Align = alLeft
          Caption = 'Se&parado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bSeparadoClick
        end
      end
      object GradeItens2: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 390
        Width = 1641
        Height = 77
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Color = clWhite
        Ctl3D = True
        DataSource = dstGradeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
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
            Width = 44
            Visible = True
          end
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 794
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
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Master'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Master'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Volumes'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end>
      end
      object GradeConf: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 1641
        Height = 387
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        Color = clWhite
        Ctl3D = True
        DataSource = dstConferencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
        OnCellClick = GradeCellClick
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
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcial'
            Title.Alignment = taCenter
            Title.Caption = 'Par'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
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
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ordem_Compra'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem de Compra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 118
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
            Width = 224
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
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 178
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
            Width = 103
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
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_MunicipioNome'
            Title.Alignment = taCenter
            Title.Caption = 'Munic'#237'pio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Armazem_Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 222
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = '3 - SEPARADOS'
      ImageIndex = 4
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 471
        Width = 1641
        Height = 30
        Margins.Left = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object DBNavigator5: TDBNavigator
          Left = 1
          Top = 1
          Width = 205
          Height = 28
          Cursor = crHandPoint
          DataSource = dstSeparados
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
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
        end
        object bCancSep: TButton
          Left = 206
          Top = 1
          Width = 62
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = '&Voltar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bCancSepClick
        end
        object bEnviarCli: TButton
          Left = 400
          Top = 1
          Width = 100
          Height = 28
          Hint = 'Revalidar todos os pedidos.'
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = '&Enviar p/Cliente'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bEnviarCliClick
        end
        object bGerarFin: TButton
          Left = 500
          Top = 1
          Width = 98
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Gerar &Financeiro'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = bGerarFinClick
        end
        object bGerarPed: TButton
          Left = 598
          Top = 1
          Width = 117
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Gerar &Pedido de NF'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = bGerarPedClick
        end
        object bFiltroPed: TButton
          Left = 715
          Top = 1
          Width = 128
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Fi&ltro de Faturamento'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = bFiltroPedClick
        end
        object bBaixar: TButton
          Left = 338
          Top = 1
          Width = 62
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = '&Baixar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = bBaixarClick
        end
        object bFaturado: TButton
          Left = 268
          Top = 1
          Width = 70
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Fa&turado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = bFaturadoClick
        end
      end
      object GradeItens3: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 390
        Width = 1641
        Height = 77
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Color = clWhite
        Ctl3D = True
        DataSource = dstGradeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
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
            Width = 44
            Visible = True
          end
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 794
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
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Master'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Master'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Volumes'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end>
      end
      object GradeSep: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 1641
        Height = 387
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        Color = clWhite
        Ctl3D = True
        DataSource = dstSeparados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
        OnCellClick = GradeCellClick
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
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcial'
            Title.Alignment = taCenter
            Title.Caption = 'Par'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
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
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ordem_Compra'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem de Compra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 118
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
            Width = 224
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
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 178
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
            Width = 103
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
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_MunicipioNome'
            Title.Alignment = taCenter
            Title.Caption = 'Munic'#237'pio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Armazem_Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 222
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = '4 - EM FATURAMENTO'
      ImageIndex = 5
      object GradeItens4: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 424
        Width = 1641
        Height = 77
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Color = clWhite
        Ctl3D = True
        DataSource = dstGradeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
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
            Width = 44
            Visible = True
          end
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 794
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
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Master'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Master'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Volumes'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end>
      end
      object GradeAg: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 1641
        Height = 421
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        Color = clWhite
        Ctl3D = True
        DataSource = dstAguardando
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
        OnCellClick = GradeCellClick
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
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcial'
            Title.Alignment = taCenter
            Title.Caption = 'Par'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
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
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ordem_Compra'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem de Compra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 118
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
            Width = 224
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
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 178
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
            Width = 103
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
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_MunicipioNome'
            Title.Alignment = taCenter
            Title.Caption = 'Munic'#237'pio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Armazem_Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 222
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = '5 - FATURADOS'
      ImageIndex = 2
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 471
        Width = 1641
        Height = 30
        Margins.Left = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object DBNavigator3: TDBNavigator
          Left = 1
          Top = 1
          Width = 205
          Height = 28
          Cursor = crHandPoint
          DataSource = dstFaturados
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
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
        end
        object bCancFat: TButton
          Left = 206
          Top = 1
          Width = 130
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Align = alLeft
          Caption = '&Cancelar Faturamento'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bCancFatClick
        end
        object bDevolucao: TButton
          Left = 336
          Top = 1
          Width = 90
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Align = alLeft
          Caption = 'De&volu'#231#227'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bDevolucaoClick
        end
        object bDespachado: TButton
          Left = 426
          Top = 1
          Width = 90
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Align = alLeft
          Caption = '&Despachado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = bDespachadoClick
        end
      end
      object GradeItens5: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 390
        Width = 1641
        Height = 77
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Color = clWhite
        Ctl3D = True
        DataSource = dstGradeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
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
            Width = 44
            Visible = True
          end
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 794
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
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Master'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Master'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Volumes'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end>
      end
      object GradeFat: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 1641
        Height = 387
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        Color = clWhite
        Ctl3D = True
        DataSource = dstFaturados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
        OnCellClick = GradeCellClick
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
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcial'
            Title.Alignment = taCenter
            Title.Caption = 'Par'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
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
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ordem_Compra'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem de Compra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 118
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
            Width = 224
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
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 178
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
            Width = 103
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
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_MunicipioNome'
            Title.Alignment = taCenter
            Title.Caption = 'Munic'#237'pio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Armazem_Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 222
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = '6 - DESPACHADOS'
      ImageIndex = 3
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 471
        Width = 1641
        Height = 30
        Margins.Left = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 405
          Top = 3
          Width = 25
          Height = 25
          Hint = '  Atualiza os dados do endere'#231'o'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF003333
            CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003333
            CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF003333CCFF0066FFFF0000CCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
            FF000000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
            FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000FFFF0000
            99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000CCFF0000
            99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
            CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000CCFF0000FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
            FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF006666
            99FF0000CCFF666699FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000CCFFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphRight
          OnClick = SpeedButton1Click
        end
        object DBNavigator4: TDBNavigator
          Left = 1
          Top = 1
          Width = 205
          Height = 28
          Cursor = crHandPoint
          DataSource = dstDespachados
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
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
        end
        object bCancDesp: TButton
          Left = 206
          Top = 1
          Width = 62
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Align = alLeft
          Caption = '&Voltar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bCancDespClick
        end
        object cData: TDateEdit
          Left = 288
          Top = 5
          Width = 116
          Height = 21
          DialogTitle = 'Selecione  a Data'
          DirectInput = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
          OnChange = cDataChange
        end
      end
      object GradeItens6: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 383
        Width = 1641
        Height = 84
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Color = clWhite
        Ctl3D = True
        DataSource = dstGradeItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
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
            Width = 44
            Visible = True
          end
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 794
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
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Master'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Master'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'UM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Volumes'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Total'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end>
      end
      object GradeDesp: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 1641
        Height = 380
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        Color = clWhite
        Ctl3D = True
        DataSource = dstDespachados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
        OnCellClick = GradeCellClick
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
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcial'
            Title.Alignment = taCenter
            Title.Caption = 'Par'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
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
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ordem_Compra'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem de Compra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 118
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
            Width = 224
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
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 178
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
            Width = 103
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
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_MunicipioNome'
            Title.Alignment = taCenter
            Title.Caption = 'Munic'#237'pio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Armazem_Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 222
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = '7 - BAIXADOS'
      ImageIndex = 7
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 471
        Width = 1641
        Height = 30
        Margins.Left = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object DBNavigator6: TDBNavigator
          Left = 1
          Top = 1
          Width = 205
          Height = 28
          Cursor = crHandPoint
          DataSource = dstBaixados
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
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
        end
        object bCancelBaixa: TButton
          Left = 206
          Top = 1
          Width = 62
          Height = 28
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Align = alLeft
          Caption = '&Voltar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bCancelBaixaClick
        end
      end
      object GradeBx: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 1641
        Height = 466
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        Color = clWhite
        Ctl3D = True
        DataSource = dstBaixados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        StyleElements = [seClient, seBorder]
        OnCellClick = GradeCellClick
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
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcial'
            Title.Alignment = taCenter
            Title.Caption = 'Par'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
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
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ordem_Compra'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem de Compra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 118
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
            Width = 224
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
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 178
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
            Width = 103
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
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cliente_Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_MunicipioNome'
            Title.Alignment = taCenter
            Title.Caption = 'Munic'#237'pio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Armazem_Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 222
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'F'#211'RMULAS DO PEDIDO'
      ImageIndex = 6
      object cFormula: TMemo
        Left = 0
        Top = 0
        Width = 1643
        Height = 502
        Align = alClient
        Lines.Strings = (
          'cFormula')
        TabOrder = 0
      end
    end
  end
  object cOrigem: TRadioGroup
    Left = 1052
    Top = 589
    Width = 127
    Height = 96
    Caption = 'Origem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Representantes'
      'E-Commerce'
      'Televendas')
    ParentFont = False
    TabOrder = 2
    OnClick = cOrigemClick
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 589
    Width = 318
    Height = 96
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      318
      96)
    object Label1: TLabel
      Left = 110
      Top = 31
      Width = 87
      Height = 13
      Caption = 'Ordem de Compra'
    end
    object Label2: TLabel
      Left = 11
      Top = 31
      Width = 32
      Height = 13
      Caption = 'Pedido'
    end
    object bPesquisa: TSpeedButton
      Left = 260
      Top = 27
      Width = 46
      Height = 45
      Hint = '  Executar pesquisa  '
      Anchors = [akTop, akRight]
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
    object cOrdem: TEdit
      Left = 109
      Top = 49
      Width = 139
      Height = 21
      TabOrder = 0
    end
    object cPedido: TEdit
      Left = 9
      Top = 49
      Width = 92
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 690
    Width = 1651
    Height = 22
    BorderWidth = 1
    Enabled = False
    Panels = <
      item
        Text = 'Aguardando : '
        Width = 140
      end
      item
        Width = 140
      end
      item
        Width = 140
      end
      item
        Width = 140
      end
      item
        Width = 140
      end
      item
        Width = 140
      end
      item
        Width = 140
      end>
  end
  object GroupBox2: TGroupBox
    Left = 328
    Top = 589
    Width = 719
    Height = 96
    Caption = 'Filtros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object bLimparUsu: TSpeedButton
      Left = 229
      Top = 28
      Width = 25
      Height = 25
      Hint = '  Atualiza os dados do endere'#231'o'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF003333
        CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003333
        CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF003333CCFF0066FFFF0000CCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
        FF000000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
        FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000FFFF0000
        99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000CCFF0000
        99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
        CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000CCFF0000FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
        FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF006666
        99FF0000CCFF666699FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphRight
      OnClick = bLimparUsuClick
    end
    object Label4: TLabel
      Left = 260
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object bLimparCli: TSpeedButton
      Left = 688
      Top = 28
      Width = 25
      Height = 25
      Hint = '  Atualiza os dados do endere'#231'o'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF003333
        CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003333
        CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF003333CCFF0066FFFF0000CCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
        FF000000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
        FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000FFFF0000
        99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000CCFF0000
        99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
        CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000CCFF0000FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
        FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF006666
        99FF0000CCFF666699FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphRight
      OnClick = bLimparCliClick
    end
    object bPesqCli: TSpeedButton
      Left = 665
      Top = 28
      Width = 24
      Height = 25
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
        B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
        1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
        BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
        BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
      OnClick = bPesqCliClick
    end
    object Label5: TLabel
      Left = 260
      Top = 53
      Width = 44
      Height = 13
      Caption = 'Armaz'#233'm'
    end
    object bLimparArm: TSpeedButton
      Left = 688
      Top = 65
      Width = 25
      Height = 25
      Hint = '  Atualiza os dados do endere'#231'o'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF003333
        CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003333
        CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF003333CCFF0066FFFF0000CCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
        FF000000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
        FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000FFFF0000
        99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000CCFF0000
        99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
        CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000CCFF0000FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
        FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF006666
        99FF0000CCFF666699FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphRight
      OnClick = bLimparArmClick
    end
    object cPesqArm: TSpeedButton
      Left = 665
      Top = 65
      Width = 24
      Height = 25
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
        B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
        1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
        BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
        BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
      OnClick = cPesqArmClick
    end
    object Label6: TLabel
      Left = 8
      Top = 53
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object SpeedButton2: TSpeedButton
      Left = 124
      Top = 66
      Width = 25
      Height = 25
      Hint = '  Atualiza os dados do endere'#231'o'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF003333
        CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003333
        CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF003333CCFF0066FFFF0000CCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
        FF000000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
        FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000FFFF0000
        99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFF0000FFFF000099FF0000CCFF0000
        99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000CCFF0000FFFF000099FFFF00FF00FF00FF000000
        CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000CCFF0000FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00
        FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        CCFF3399FFFF0000FFFF000099FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000CCFF000099FFFF00FF00FF00FF00FF00FF00FF00FF006666
        99FF0000CCFF666699FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000CCFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphRight
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 99
      Top = 66
      Width = 25
      Height = 25
      Hint = '  Atualiza os dados do endere'#231'o'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
        070707070707070707070707070707070707070707070707070707070707079B
        9B070707070707070707070707079BF7F79B07070707070707070707079BF7F7
        F7F79B0707070707070707079B0707F79BF7F79B070707070707079B0707F79B
        079BA4F79B070707070707079B079B070707079BF79B070707070707079B0707
        070707079BA49B0707070707070707070707070707079B9B0707070707070707
        070707070707079B9B0707070707070707070707070707070707070707070707
        0707070707070707070707070707070707070707070707070707070707070707
        0707070707070707070707070707070707070707070707070707}
      Layout = blGlyphRight
      OnClick = SpeedButton3Click
    end
    object cUsuario: TDBLookupComboBox
      Left = 8
      Top = 30
      Width = 221
      Height = 21
      DropDownRows = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Matricula'
      ListField = 'Nome'
      ListSource = Dados.dsUsuarios
      ParentFont = False
      TabOrder = 0
      OnClick = cUsuarioClick
    end
    object cFiltroCliente: TDBLookupComboBox
      Left = 260
      Top = 30
      Width = 405
      Height = 21
      DropDownRows = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = dstClientes
      ParentFont = False
      TabOrder = 1
      OnClick = cFiltroClienteClick
    end
    object cFiltroArm: TDBLookupComboBox
      Left = 260
      Top = 67
      Width = 405
      Height = 21
      DropDownRows = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = dstArmazem
      ParentFont = False
      TabOrder = 2
      OnClick = cFiltroArmClick
    end
    object cAno: TSpinEdit
      Left = 8
      Top = 67
      Width = 90
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 0
    end
  end
  object cBoletos: TRadioGroup
    Left = 1185
    Top = 589
    Width = 138
    Height = 96
    Caption = 'Boletos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Geram Boletos'
      'N'#227'o Geram Boletos')
    ParentFont = False
    TabOrder = 6
    OnClick = cOrigemClick
  end
  object dsPedidosRep: TDataSource
    DataSet = PedidosRep
    Left = 476
    Top = 143
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
        'tendente, Atendente_Comissao, Observacao, Situacao_Televendas, O' +
        'rigem_Pedido, Faturamento)'
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
        'tendente_Comissao, :Observacao, :Situacao_Televendas, :Origem_Pe' +
        'dido, :Faturamento)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
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
        'acao_Televendas = :Situacao_Televendas, Origem_Pedido = :Origem_' +
        'Pedido, Faturamento = :Faturamento'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLRefresh.Strings = (
      
        'SELECT PedidosRepresentantes.Pedido, PedidosRepresentantes.Data,' +
        ' PedidosRepresentantes.Representante, PedidosRepresentantes.Clie' +
        'nte, PedidosRepresentantes.Transportador, PedidosRepresentantes.' +
        'Modalidade_Pagamento, PedidosRepresentantes.Prazo_Entrega, Pedid' +
        'osRepresentantes.Comprador, PedidosRepresentantes.Frete, Pedidos' +
        'Representantes.Total_Pedido, PedidosRepresentantes.Total_IPI, Pe' +
        'didosRepresentantes.Liberado, PedidosRepresentantes.Tipo_Nota, P' +
        'edidosRepresentantes.Modalidade_Frete, PedidosRepresentantes.Nat' +
        'ureza_Codigo, PedidosRepresentantes.Volume_Quantidade, PedidosRe' +
        'presentantes.Volume_Especie, PedidosRepresentantes.Volume_PesoLi' +
        'quido, PedidosRepresentantes.Volume_PesoBruto, PedidosRepresenta' +
        'ntes.Inf_Complementares2, PedidosRepresentantes.Faturado, Pedido' +
        'sRepresentantes.Cancelado, PedidosRepresentantes.Aliquota_ICMS, ' +
        'PedidosRepresentantes.Cliente_CNPJ, PedidosRepresentantes.Client' +
        'e_CPF, PedidosRepresentantes.Cliente_Nome, PedidosRepresentantes' +
        '.Cliente_RG, PedidosRepresentantes.Cliente_CEP, PedidosRepresent' +
        'antes.Cliente_Rua, PedidosRepresentantes.Cliente_Bairro, Pedidos' +
        'Representantes.Cliente_Municipio, PedidosRepresentantes.Cliente_' +
        'RuaNumero, PedidosRepresentantes.Cliente_Complemento, PedidosRep' +
        'resentantes.Cliente_Estado, PedidosRepresentantes.Cliente_IE, Pe' +
        'didosRepresentantes.Cliente_Telefone, PedidosRepresentantes.Clie' +
        'nte_Email, PedidosRepresentantes.Cliente_Contato, PedidosReprese' +
        'ntantes.Cliente_Ramo, PedidosRepresentantes.Cliente_Representant' +
        'e, PedidosRepresentantes.Cliente_Simples, PedidosRepresentantes.' +
        'Cliente_ZonaFranca, PedidosRepresentantes.Cliente_ConsumidorFina' +
        'l, PedidosRepresentantes.Tipo_Pedido, PedidosRepresentantes.Situ' +
        'acao, PedidosRepresentantes.Gerar_Pedido, PedidosRepresentantes.' +
        'Desconto, PedidosRepresentantes.Total_Desconto, PedidosRepresent' +
        'antes.Comissao, PedidosRepresentantes.Tipo_Faturamento, PedidosR' +
        'epresentantes.Cliente_MunicipioNome, PedidosRepresentantes.Atend' +
        'ente, PedidosRepresentantes.Atendente_Comissao, PedidosRepresent' +
        'antes.Observacao, PedidosRepresentantes.Situacao_Televendas, Ped' +
        'idosRepresentantes.Origem_Pedido, PedidosRepresentantes.Faturame' +
        'nto FROM PedidosRepresentantes'
      
        'WHERE PedidosRepresentantes.Pedido = :Pedido AND PedidosRepresen' +
        'tantes.Data = :Data ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Parcial'
      '      ,Data'
      '      ,Ordem_Compra'
      
        '      ,Representante_Nome = case when isnull(Representante, '#39#39') ' +
        '<> '#39#39' then'
      
        '                                      (select Nome from Forneced' +
        'ores where Representante_Codigo = Representante)'
      
        '                                 when isnull(Atendente, '#39#39') <> '#39 +
        #39' then'
      
        '                                      (select Nome from Cybersof' +
        't_Cadastros.dbo.Usuarios where Matricula = Atendente)'
      '                            else'
      '                                '#39'VENDA VIA '#39'+Origem_Pedido'
      '                            end'
      '      ,Cliente_Nome'
      '      ,Total_Pedido'
      '      ,Desconto'
      '      ,Comissao'
      
        '      ,Quantidade = (select sum(Quantidade) from PedidosRepresen' +
        'tantesItens where Pedido = pr.Pedido)'
      '      ,Cliente_CNPJ'
      '      ,Cliente_Estado'
      '      ,Cliente_MunicipioNome'
      '      ,Modalidade_Pagamento'
      
        '      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Pessoa = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J'#39', '#39'F'#39')'
      '      ,Observacao'
      '      ,Armazem'
      
        '      ,Armazem_Nome = (select Nome from Fornecedores frn where f' +
        'rn.Codigo = pr.Armazem)'
      '      ,Bloqueado'
      'from  PedidosRepresentantes pr'
      '--where isnull(Local, 0) = 1'
      '--and   isnull(Autorizado,0) = 1'
      '--and   isnull(Cancelado, 0) = 0'
      'order by Data asc'
      '')
    FetchRows = 1
    AfterScroll = PedidosRepAfterScroll
    Active = True
    Left = 475
    Top = 98
    object PedidosRepData: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PedidosRepOrdem_Compra: TStringField
      FieldName = 'Ordem_Compra'
    end
    object PedidosRepRepresentante_Nome: TStringField
      DisplayWidth = 35
      FieldName = 'Representante_Nome'
      ReadOnly = True
      Size = 60
    end
    object PedidosRepCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Size = 50
    end
    object PedidosRepTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = ',##0.0000'
    end
    object PedidosRepComissao: TFloatField
      FieldName = 'Comissao'
      DisplayFormat = ',##0.0000'
    end
    object PedidosRepCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object PedidosRepCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object PedidosRepCliente_MunicipioNome: TStringField
      DisplayWidth = 15
      FieldName = 'Cliente_MunicipioNome'
      Size = 40
    end
    object PedidosRepModalidade_Nome: TStringField
      DisplayWidth = 25
      FieldName = 'Modalidade_Nome'
      ReadOnly = True
      Size = 40
    end
    object PedidosRepPessoa: TStringField
      FieldName = 'Pessoa'
      ReadOnly = True
      Size = 1
    end
    object PedidosRepQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object PedidosRepParcial: TStringField
      FieldName = 'Parcial'
      FixedChar = True
      Size = 1
    end
    object PedidosRepPedido_Pai: TStringField
      FieldName = 'Pedido_Pai'
      Size = 10
    end
    object PedidosRepModal_Nome: TStringField
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'Modal_Nome'
      LookupDataSet = Dados.ModalidadesPgto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Modalidade_Pagamento'
      Size = 60
      Lookup = True
    end
    object PedidosRepPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object PedidosRepModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
    end
    object PedidosRepObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object PedidosRepArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object PedidosRepArmazem_Nome: TStringField
      DisplayWidth = 40
      FieldName = 'Armazem_Nome'
      ReadOnly = True
      Size = 60
    end
    object PedidosRepBloqueado: TBooleanField
      FieldName = 'Bloqueado'
    end
  end
  object tConferencia: TMSQuery
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
        'tendente, Atendente_Comissao, Observacao, Situacao_Televendas, O' +
        'rigem_Pedido, Faturamento)'
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
        'tendente_Comissao, :Observacao, :Situacao_Televendas, :Origem_Pe' +
        'dido, :Faturamento)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
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
        'acao_Televendas = :Situacao_Televendas, Origem_Pedido = :Origem_' +
        'Pedido, Faturamento = :Faturamento'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLRefresh.Strings = (
      
        'SELECT PedidosRepresentantes.Pedido, PedidosRepresentantes.Data,' +
        ' PedidosRepresentantes.Representante, PedidosRepresentantes.Clie' +
        'nte, PedidosRepresentantes.Transportador, PedidosRepresentantes.' +
        'Modalidade_Pagamento, PedidosRepresentantes.Prazo_Entrega, Pedid' +
        'osRepresentantes.Comprador, PedidosRepresentantes.Frete, Pedidos' +
        'Representantes.Total_Pedido, PedidosRepresentantes.Total_IPI, Pe' +
        'didosRepresentantes.Liberado, PedidosRepresentantes.Tipo_Nota, P' +
        'edidosRepresentantes.Modalidade_Frete, PedidosRepresentantes.Nat' +
        'ureza_Codigo, PedidosRepresentantes.Volume_Quantidade, PedidosRe' +
        'presentantes.Volume_Especie, PedidosRepresentantes.Volume_PesoLi' +
        'quido, PedidosRepresentantes.Volume_PesoBruto, PedidosRepresenta' +
        'ntes.Inf_Complementares2, PedidosRepresentantes.Faturado, Pedido' +
        'sRepresentantes.Cancelado, PedidosRepresentantes.Aliquota_ICMS, ' +
        'PedidosRepresentantes.Cliente_CNPJ, PedidosRepresentantes.Client' +
        'e_CPF, PedidosRepresentantes.Cliente_Nome, PedidosRepresentantes' +
        '.Cliente_RG, PedidosRepresentantes.Cliente_CEP, PedidosRepresent' +
        'antes.Cliente_Rua, PedidosRepresentantes.Cliente_Bairro, Pedidos' +
        'Representantes.Cliente_Municipio, PedidosRepresentantes.Cliente_' +
        'RuaNumero, PedidosRepresentantes.Cliente_Complemento, PedidosRep' +
        'resentantes.Cliente_Estado, PedidosRepresentantes.Cliente_IE, Pe' +
        'didosRepresentantes.Cliente_Telefone, PedidosRepresentantes.Clie' +
        'nte_Email, PedidosRepresentantes.Cliente_Contato, PedidosReprese' +
        'ntantes.Cliente_Ramo, PedidosRepresentantes.Cliente_Representant' +
        'e, PedidosRepresentantes.Cliente_Simples, PedidosRepresentantes.' +
        'Cliente_ZonaFranca, PedidosRepresentantes.Cliente_ConsumidorFina' +
        'l, PedidosRepresentantes.Tipo_Pedido, PedidosRepresentantes.Situ' +
        'acao, PedidosRepresentantes.Gerar_Pedido, PedidosRepresentantes.' +
        'Desconto, PedidosRepresentantes.Total_Desconto, PedidosRepresent' +
        'antes.Comissao, PedidosRepresentantes.Tipo_Faturamento, PedidosR' +
        'epresentantes.Cliente_MunicipioNome, PedidosRepresentantes.Atend' +
        'ente, PedidosRepresentantes.Atendente_Comissao, PedidosRepresent' +
        'antes.Observacao, PedidosRepresentantes.Situacao_Televendas, Ped' +
        'idosRepresentantes.Origem_Pedido, PedidosRepresentantes.Faturame' +
        'nto FROM PedidosRepresentantes'
      
        'WHERE PedidosRepresentantes.Pedido = :Pedido AND PedidosRepresen' +
        'tantes.Data = :Data ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Parcial'
      '      ,Data'
      '      ,Ordem_Compra'
      
        '      ,Representante_Nome = case when isnull(Representante, '#39#39') ' +
        '<> '#39#39' then'
      
        '                                      (select Nome from Forneced' +
        'ores where Representante_Codigo = Representante)'
      
        '                                 when isnull(Atendente, '#39#39') <> '#39 +
        #39' then'
      
        '                                      (select Nome from Cybersof' +
        't_Cadastros.dbo.Usuarios where Matricula = Atendente)'
      '                            else'
      '                                '#39'VENDA VIA '#39'+Origem_Pedido'
      '                            end'
      '      ,Cliente_Nome'
      '      ,Total_Pedido'
      '      ,Desconto'
      '      ,Comissao'
      
        '      ,Quantidade = (select sum(Quantidade) from PedidosRepresen' +
        'tantesItens where Pedido = pr.Pedido)'
      '      ,Cliente_CNPJ'
      '      ,Cliente_Estado'
      '      ,Cliente_MunicipioNome'
      '      ,Modalidade_Pagamento'
      
        '      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Pessoa = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J'#39', '#39'F'#39')'
      '      ,Observacao'
      '      ,Armazem'
      
        '      ,Armazem_Nome = (select Nome from Fornecedores frn where f' +
        'rn.Codigo = pr.Armazem)'
      '      ,Bloqueado'
      'from  PedidosRepresentantes pr'
      'where isnull(Local, 0) = 1'
      'and   isnull(Autorizado,0) = 1'
      'and   isnull(Cancelado, 0) = 0'
      'order by Data asc'
      '')
    FetchRows = 1
    AfterScroll = tConferenciaAfterScroll
    Left = 476
    Top = 199
    object tConferenciaPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tConferenciaPedido_Pai: TStringField
      FieldName = 'Pedido_Pai'
      Size = 10
    end
    object tConferenciaParcial: TStringField
      FieldName = 'Parcial'
      FixedChar = True
      Size = 1
    end
    object tConferenciaData: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tConferenciaOrdem_Compra: TStringField
      FieldName = 'Ordem_Compra'
    end
    object tConferenciaRepresentante_Nome: TStringField
      FieldName = 'Representante_Nome'
      ReadOnly = True
      Size = 60
    end
    object tConferenciaCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Size = 50
    end
    object tConferenciaTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tConferenciaDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = ',##0.00'
    end
    object tConferenciaComissao: TFloatField
      FieldName = 'Comissao'
      DisplayFormat = ',##0.00'
    end
    object tConferenciaQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tConferenciaCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object tConferenciaCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object tConferenciaCliente_MunicipioNome: TStringField
      FieldName = 'Cliente_MunicipioNome'
      Size = 40
    end
    object tConferenciaModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
    end
    object tConferenciaModalidade_Nome: TStringField
      FieldName = 'Modalidade_Nome'
      ReadOnly = True
      Size = 40
    end
    object tConferenciaPessoa: TStringField
      FieldName = 'Pessoa'
      ReadOnly = True
      Size = 1
    end
    object tConferenciaObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object tConferenciaArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object tConferenciaArmazem_Nome: TStringField
      FieldName = 'Armazem_Nome'
      ReadOnly = True
      Size = 60
    end
    object tConferenciaBloqueado: TBooleanField
      FieldName = 'Bloqueado'
    end
  end
  object dstConferencia: TDataSource
    DataSet = tConferencia
    Left = 476
    Top = 245
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 380
    Top = 95
  end
  object tForn: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Nome '
      '      ,CNPJ'
      '      ,Email '
      'from Fornecedores'
      'where Ativo = 1'
      
        'and (select Descricao from RamoAtividade where Codigo = Ramo_Ati' +
        'vidade) like '#39'%ARMAZ%'#39)
    FetchRows = 1
    Left = 380
    Top = 143
  end
  object dstForn: TDataSource
    DataSet = tForn
    Left = 380
    Top = 199
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
  end
  object pPedidos: TppDBPipeline
    DataSource = dstPedidos
    UserName = 'pPedidos'
    Left = 841
    Top = 234
    MasterDataPipelineName = 'pItens'
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Numero = Pedido'
      '      ,Data'
      '      ,Representante_Cod    = Representante'
      
        '      ,Representante_Nome   = (select Nome from Fornecedores whe' +
        're Representante_Codigo = Representante)'
      
        '      ,Representante_Pessoa = iif((select isnull(CNPJ, '#39#39') from ' +
        'Fornecedores where Representante_Codigo = Representante) <> '#39#39', ' +
        #39'J'#39', '#39'F'#39')'
      
        '      ,Modalidade = (select Descricao from Cybersoft_Cadastros.d' +
        'bo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)'
      '      ,Modalidade_Pagamento'
      
        '      ,Parcelas   = (select Numero_Parcelas from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Ordem_Compra'
      '      ,Cliente'
      '      ,Cliente_Nome'
      
        '      ,Cliente_CNPJ = isnull(Cliente_CNPJ, '#39#39')+isnull(Cliente_CP' +
        'F, '#39#39')'
      '      ,Cliente_IE   = iif(Cliente_IE = '#39#39', '#39'ISENTO'#39', Cliente_IE)'
      '      ,Cliente_Rua'
      '      ,Cliente_RuaNumero'
      '      ,Cliente_Bairro'
      '      ,Cliente_MunicipioNome'
      '      ,Cliente_Estado'
      '      ,Cliente_CEP'
      '      ,Cliente_Telefone'
      
        '      ,Transp_Nome      = (select Nome From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_CNPJ      = (select CNPJ From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_IE        =  isnull((select Inscricao_Estadual Fro' +
        'm Fornecedores where Codigo = Transportador), '#39'ISENTO'#39')'
      
        '      ,Transp_Rua       = (select Rua From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_RuaNumero = (select Rua_Numero From Fornecedores w' +
        'here Codigo = Transportador)'
      
        '      ,Transp_Bairro    = (select Bairro From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_Municipio = (select Municipio From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Transp_Estado    = (select Estado From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_CEP       = (select CEP From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_Telefone  = (select Telefone1 From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Pessoa           = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J' +
        #39', '#39'F'#39')'
      '      ,Observacao       = Inf_Complementares2'
      '      ,Vendedor'
      '      ,Total_Pedido'
      
        '      ,Recebedor_Entrega = (select Recebedor_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,CNPJ_Entrega      = (select CNPJ from Clientes where Codi' +
        'go = Cliente)'
      
        '      ,IE_Entrega        =  isnull((select Inscricao_Estadual fr' +
        'om Clientes where Codigo = Cliente), '#39'ISENTO'#39')'
      
        '      ,Rua_Entrega       = (select Rua_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Rua_EntregaNumero = (select Rua_EntregaNumero from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Bairro_Entrega    = (select Bairro_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,Municipio_Entrega = (select Municipio_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Estado_Entrega    = (select Estado_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,CEP_Entrega       = (select CEP_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Telefone_Entrega  = (select Telefone_Entrega from Cliente' +
        's where Codigo = Cliente)'
      '      ,Bloqueado'
      'from  PedidosRepresentantes'
      'where Pedido = '#39'R34'#39
      '')
    FetchRows = 1
    Left = 572
    Top = 95
  end
  object dstPedidos: TDataSource
    DataSet = tPedidos
    Left = 572
    Top = 143
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Item'
      '      ,Codigo_Mercadoria'
      
        '      ,Descricao = (select substring(Descricao, 1, charindex('#39'<{' +
        #39', Descricao)-1) from Produtos where Codigo = Codigo_Mercadoria)'
      '      ,Quantidade'
      
        '      ,Quantidade_Master = (select Quantidade_CaixaMaster from P' +
        'rodutos where Codigo = Codigo_Mercadoria)'
      
        '      ,Unidade = (select Unidade from Produtos where Codigo = Co' +
        'digo_Mercadoria)'
      
        '      ,Volumes = Quantidade / iif((select isnull(Quantidade_Caix' +
        'aMaster, 0) from Produtos where Codigo = Codigo_Mercadoria) >= 1' +
        ', (select Quantidade_CaixaMaster from Produtos where Codigo = Co' +
        'digo_Mercadoria), 1)'
      '      ,Valor_Unitario'
      '      ,Valor_Total = Valor_Unitario * Quantidade'
      'from PedidosRepresentantesItens'
      'where pedido = '#39'R34'#39)
    FetchRows = 1
    Left = 572
    Top = 199
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 572
    Top = 245
  end
  object pItens: TppDBPipeline
    DataSource = dstItens
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
  object tFaturados: TMSQuery
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
        'tendente, Atendente_Comissao, Observacao, Situacao_Televendas, O' +
        'rigem_Pedido, Faturamento)'
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
        'tendente_Comissao, :Observacao, :Situacao_Televendas, :Origem_Pe' +
        'dido, :Faturamento)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
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
        'acao_Televendas = :Situacao_Televendas, Origem_Pedido = :Origem_' +
        'Pedido, Faturamento = :Faturamento'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLRefresh.Strings = (
      
        'SELECT PedidosRepresentantes.Pedido, PedidosRepresentantes.Data,' +
        ' PedidosRepresentantes.Representante, PedidosRepresentantes.Clie' +
        'nte, PedidosRepresentantes.Transportador, PedidosRepresentantes.' +
        'Modalidade_Pagamento, PedidosRepresentantes.Prazo_Entrega, Pedid' +
        'osRepresentantes.Comprador, PedidosRepresentantes.Frete, Pedidos' +
        'Representantes.Total_Pedido, PedidosRepresentantes.Total_IPI, Pe' +
        'didosRepresentantes.Liberado, PedidosRepresentantes.Tipo_Nota, P' +
        'edidosRepresentantes.Modalidade_Frete, PedidosRepresentantes.Nat' +
        'ureza_Codigo, PedidosRepresentantes.Volume_Quantidade, PedidosRe' +
        'presentantes.Volume_Especie, PedidosRepresentantes.Volume_PesoLi' +
        'quido, PedidosRepresentantes.Volume_PesoBruto, PedidosRepresenta' +
        'ntes.Inf_Complementares2, PedidosRepresentantes.Faturado, Pedido' +
        'sRepresentantes.Cancelado, PedidosRepresentantes.Aliquota_ICMS, ' +
        'PedidosRepresentantes.Cliente_CNPJ, PedidosRepresentantes.Client' +
        'e_CPF, PedidosRepresentantes.Cliente_Nome, PedidosRepresentantes' +
        '.Cliente_RG, PedidosRepresentantes.Cliente_CEP, PedidosRepresent' +
        'antes.Cliente_Rua, PedidosRepresentantes.Cliente_Bairro, Pedidos' +
        'Representantes.Cliente_Municipio, PedidosRepresentantes.Cliente_' +
        'RuaNumero, PedidosRepresentantes.Cliente_Complemento, PedidosRep' +
        'resentantes.Cliente_Estado, PedidosRepresentantes.Cliente_IE, Pe' +
        'didosRepresentantes.Cliente_Telefone, PedidosRepresentantes.Clie' +
        'nte_Email, PedidosRepresentantes.Cliente_Contato, PedidosReprese' +
        'ntantes.Cliente_Ramo, PedidosRepresentantes.Cliente_Representant' +
        'e, PedidosRepresentantes.Cliente_Simples, PedidosRepresentantes.' +
        'Cliente_ZonaFranca, PedidosRepresentantes.Cliente_ConsumidorFina' +
        'l, PedidosRepresentantes.Tipo_Pedido, PedidosRepresentantes.Situ' +
        'acao, PedidosRepresentantes.Gerar_Pedido, PedidosRepresentantes.' +
        'Desconto, PedidosRepresentantes.Total_Desconto, PedidosRepresent' +
        'antes.Comissao, PedidosRepresentantes.Tipo_Faturamento, PedidosR' +
        'epresentantes.Cliente_MunicipioNome, PedidosRepresentantes.Atend' +
        'ente, PedidosRepresentantes.Atendente_Comissao, PedidosRepresent' +
        'antes.Observacao, PedidosRepresentantes.Situacao_Televendas, Ped' +
        'idosRepresentantes.Origem_Pedido, PedidosRepresentantes.Faturame' +
        'nto FROM PedidosRepresentantes'
      
        'WHERE PedidosRepresentantes.Pedido = :Pedido AND PedidosRepresen' +
        'tantes.Data = :Data ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Parcial'
      '      ,Data'
      '      ,Ordem_Compra'
      
        '      ,Representante_Nome = case when isnull(Representante, 0) <' +
        '> 0 then'
      
        '                                      case when (select Nome fro' +
        'm Fornecedores where Representante_Codigo = Representante) is no' +
        't null then '
      
        #9#9#9#9'           (select Nome from Fornecedores where Representant' +
        'e_Codigo = Representante)'
      '                                      else'
      
        #9#9#9#9#9'   (select Nome from Fornecedores where Codigo = Representa' +
        'nte)'
      #9#9#9#9'      end'
      
        '                                 when isnull(Atendente, '#39#39') <> '#39 +
        #39' then'
      
        '                                      (select Nome from Cybersof' +
        't_Cadastros.dbo.Usuarios where Matricula = Atendente)'
      '                            else'
      '                                '#39'VENDA VIA '#39'+Origem_Pedido'
      '                            end'
      '      ,Cliente_Nome'
      '      ,Total_Pedido'
      '      ,Desconto'
      '      ,Comissao'
      
        '      ,Quantidade = (select sum(Quantidade) from PedidosRepresen' +
        'tantesItens where Pedido = pr.Pedido)'
      '      ,Cliente_CNPJ'
      '      ,Cliente_Estado'
      '      ,Cliente_MunicipioNome'
      '      ,Modalidade_Pagamento'
      
        '      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Pessoa = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J'#39', '#39'F'#39')'
      '      ,Observacao'
      '      ,Armazem'
      
        '      ,Armazem_Nome = (select Nome from Fornecedores frn where f' +
        'rn.Codigo = pr.Armazem)'
      '      ,Tipo_Nota'
      '      ,Bloqueado'
      'from  PedidosRepresentantes pr'
      'where isnull(Local, 0) = 5'
      'and   isnull(Autorizado,0) = 1'
      'and   isnull(Cancelado, 0) = 0'
      'order by Data asc'
      '')
    FetchRows = 1
    AfterScroll = tFaturadosAfterScroll
    Left = 476
    Top = 303
    object tFaturadosPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tFaturadosPedido_Pai: TStringField
      FieldName = 'Pedido_Pai'
      Size = 10
    end
    object tFaturadosParcial: TStringField
      FieldName = 'Parcial'
      FixedChar = True
      Size = 1
    end
    object tFaturadosData: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tFaturadosOrdem_Compra: TStringField
      FieldName = 'Ordem_Compra'
    end
    object tFaturadosRepresentante_Nome: TStringField
      FieldName = 'Representante_Nome'
      ReadOnly = True
      Size = 60
    end
    object tFaturadosCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Size = 50
    end
    object tFaturadosTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tFaturadosDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = ',##0.00'
    end
    object tFaturadosComissao: TFloatField
      FieldName = 'Comissao'
      DisplayFormat = ',##0.00'
    end
    object tFaturadosQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tFaturadosCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      EditMask = '99.999.999/9999-99;0; '
      Size = 14
    end
    object tFaturadosCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object tFaturadosCliente_MunicipioNome: TStringField
      FieldName = 'Cliente_MunicipioNome'
      Size = 40
    end
    object tFaturadosModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
    end
    object tFaturadosModalidade_Nome: TStringField
      FieldName = 'Modalidade_Nome'
      ReadOnly = True
      Size = 40
    end
    object tFaturadosPessoa: TStringField
      FieldName = 'Pessoa'
      ReadOnly = True
      Size = 1
    end
    object tFaturadosObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object tFaturadosArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object tFaturadosArmazem_Nome: TStringField
      FieldName = 'Armazem_Nome'
      ReadOnly = True
      Size = 60
    end
    object tFaturadosTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
    end
    object tFaturadosBloqueado: TBooleanField
      FieldName = 'Bloqueado'
    end
  end
  object dstFaturados: TDataSource
    DataSet = tFaturados
    Left = 476
    Top = 351
  end
  object tDespachados: TMSQuery
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
        'tendente, Atendente_Comissao, Observacao, Situacao_Televendas, O' +
        'rigem_Pedido, Faturamento)'
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
        'tendente_Comissao, :Observacao, :Situacao_Televendas, :Origem_Pe' +
        'dido, :Faturamento)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
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
        'acao_Televendas = :Situacao_Televendas, Origem_Pedido = :Origem_' +
        'Pedido, Faturamento = :Faturamento'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLRefresh.Strings = (
      
        'SELECT PedidosRepresentantes.Pedido, PedidosRepresentantes.Data,' +
        ' PedidosRepresentantes.Representante, PedidosRepresentantes.Clie' +
        'nte, PedidosRepresentantes.Transportador, PedidosRepresentantes.' +
        'Modalidade_Pagamento, PedidosRepresentantes.Prazo_Entrega, Pedid' +
        'osRepresentantes.Comprador, PedidosRepresentantes.Frete, Pedidos' +
        'Representantes.Total_Pedido, PedidosRepresentantes.Total_IPI, Pe' +
        'didosRepresentantes.Liberado, PedidosRepresentantes.Tipo_Nota, P' +
        'edidosRepresentantes.Modalidade_Frete, PedidosRepresentantes.Nat' +
        'ureza_Codigo, PedidosRepresentantes.Volume_Quantidade, PedidosRe' +
        'presentantes.Volume_Especie, PedidosRepresentantes.Volume_PesoLi' +
        'quido, PedidosRepresentantes.Volume_PesoBruto, PedidosRepresenta' +
        'ntes.Inf_Complementares2, PedidosRepresentantes.Faturado, Pedido' +
        'sRepresentantes.Cancelado, PedidosRepresentantes.Aliquota_ICMS, ' +
        'PedidosRepresentantes.Cliente_CNPJ, PedidosRepresentantes.Client' +
        'e_CPF, PedidosRepresentantes.Cliente_Nome, PedidosRepresentantes' +
        '.Cliente_RG, PedidosRepresentantes.Cliente_CEP, PedidosRepresent' +
        'antes.Cliente_Rua, PedidosRepresentantes.Cliente_Bairro, Pedidos' +
        'Representantes.Cliente_Municipio, PedidosRepresentantes.Cliente_' +
        'RuaNumero, PedidosRepresentantes.Cliente_Complemento, PedidosRep' +
        'resentantes.Cliente_Estado, PedidosRepresentantes.Cliente_IE, Pe' +
        'didosRepresentantes.Cliente_Telefone, PedidosRepresentantes.Clie' +
        'nte_Email, PedidosRepresentantes.Cliente_Contato, PedidosReprese' +
        'ntantes.Cliente_Ramo, PedidosRepresentantes.Cliente_Representant' +
        'e, PedidosRepresentantes.Cliente_Simples, PedidosRepresentantes.' +
        'Cliente_ZonaFranca, PedidosRepresentantes.Cliente_ConsumidorFina' +
        'l, PedidosRepresentantes.Tipo_Pedido, PedidosRepresentantes.Situ' +
        'acao, PedidosRepresentantes.Gerar_Pedido, PedidosRepresentantes.' +
        'Desconto, PedidosRepresentantes.Total_Desconto, PedidosRepresent' +
        'antes.Comissao, PedidosRepresentantes.Tipo_Faturamento, PedidosR' +
        'epresentantes.Cliente_MunicipioNome, PedidosRepresentantes.Atend' +
        'ente, PedidosRepresentantes.Atendente_Comissao, PedidosRepresent' +
        'antes.Observacao, PedidosRepresentantes.Situacao_Televendas, Ped' +
        'idosRepresentantes.Origem_Pedido, PedidosRepresentantes.Faturame' +
        'nto FROM PedidosRepresentantes'
      
        'WHERE PedidosRepresentantes.Pedido = :Pedido AND PedidosRepresen' +
        'tantes.Data = :Data ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Parcial'
      '      ,Data'
      '      ,Ordem_Compra'
      
        '      ,Representante_Nome = case when isnull(Representante, 0) <' +
        '> 0 then'
      
        '                                      case when (select Nome fro' +
        'm Fornecedores where Representante_Codigo = Representante) is no' +
        't null then '
      
        #9#9#9#9'           (select Nome from Fornecedores where Representant' +
        'e_Codigo = Representante)'
      '                                      else'
      
        #9#9#9#9#9'   (select Nome from Fornecedores where Codigo = Representa' +
        'nte)'
      #9#9#9#9'      end'
      
        '                                 when isnull(Atendente, '#39#39') <> '#39 +
        #39' then'
      
        '                                      (select Nome from Cybersof' +
        't_Cadastros.dbo.Usuarios where Matricula = Atendente)'
      '                            else'
      '                                '#39'VENDA VIA '#39'+Origem_Pedido'
      '                            end'
      '      ,Cliente_Nome'
      '      ,Total_Pedido'
      '      ,Desconto'
      '      ,Comissao'
      
        '      ,Quantidade = (select sum(Quantidade) from PedidosRepresen' +
        'tantesItens where Pedido = pr.Pedido)'
      '      ,Cliente_CNPJ'
      '      ,Cliente_Estado'
      '      ,Cliente_MunicipioNome'
      '      ,Modalidade_Pagamento'
      
        '      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Pessoa = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J'#39', '#39'F'#39')'
      '      ,Observacao'
      '      ,Armazem'
      
        '      ,Armazem_Nome = (select Nome from Fornecedores frn where f' +
        'rn.Codigo = pr.Armazem)'
      '      ,Tipo_Nota'
      '      ,Bloqueado'
      'from  PedidosRepresentantes pr'
      'where isnull(Local, 0) = 6'
      'order by Data asc'
      '')
    FetchRows = 1
    AfterScroll = tDespachadosAfterScroll
    Left = 379
    Top = 302
    object tDespachadosPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tDespachadosPedido_Pai: TStringField
      FieldName = 'Pedido_Pai'
      Size = 10
    end
    object tDespachadosParcial: TStringField
      FieldName = 'Parcial'
      FixedChar = True
      Size = 1
    end
    object tDespachadosData: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tDespachadosOrdem_Compra: TStringField
      FieldName = 'Ordem_Compra'
    end
    object tDespachadosRepresentante_Nome: TStringField
      FieldName = 'Representante_Nome'
      ReadOnly = True
      Size = 60
    end
    object tDespachadosCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Size = 50
    end
    object tDespachadosTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tDespachadosDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = ',##0.00'
    end
    object tDespachadosComissao: TFloatField
      FieldName = 'Comissao'
      DisplayFormat = ',##0.00'
    end
    object tDespachadosQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tDespachadosCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object tDespachadosCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object tDespachadosCliente_MunicipioNome: TStringField
      FieldName = 'Cliente_MunicipioNome'
      Size = 40
    end
    object tDespachadosModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
    end
    object tDespachadosModalidade_Nome: TStringField
      FieldName = 'Modalidade_Nome'
      ReadOnly = True
      Size = 40
    end
    object tDespachadosPessoa: TStringField
      FieldName = 'Pessoa'
      ReadOnly = True
      Size = 1
    end
    object tDespachadosObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object tDespachadosArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object tDespachadosArmazem_Nome: TStringField
      FieldName = 'Armazem_Nome'
      ReadOnly = True
      Size = 60
    end
    object tDespachadosTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
    end
    object tDespachadosBloqueado: TBooleanField
      FieldName = 'Bloqueado'
    end
  end
  object dstDespachados: TDataSource
    DataSet = tDespachados
    Left = 380
    Top = 351
  end
  object tTemp2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 380
    Top = 245
  end
  object tSeparados: TMSQuery
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
        '_Faturamento, Usuario)'
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
        'ferencia, :Data_Faturamento, :Usuario)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
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
        ':Usuario'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
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
        'Data_Faturamento, Usuario FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Pedido AND Data = :Data')
    SQLLock.Strings = (
      'SELECT * FROM PedidosRepresentantes'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM PedidosRepresentantes'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Parcial'
      '      ,Data'
      '      ,Ordem_Compra'
      
        '      ,Representante_Nome = case when isnull(Representante, 0) <' +
        '> 0 then'
      
        '                                      case when (select Nome fro' +
        'm Fornecedores where Representante_Codigo = Representante) is no' +
        't null then '
      
        #9#9#9#9'           (select Nome from Fornecedores where Representant' +
        'e_Codigo = Representante)'
      '                                      else'
      
        #9#9#9#9#9'   (select Nome from Fornecedores where Codigo = Representa' +
        'nte)'
      #9#9#9#9'      end'
      
        '                                 when isnull(Atendente, '#39#39') <> '#39 +
        #39' then'
      
        '                                      (select Nome from Cybersof' +
        't_Cadastros.dbo.Usuarios where Matricula = Atendente)'
      '                            else'
      '                                '#39'VENDA VIA '#39'+Origem_Pedido'
      '                            end'
      '      ,Cliente_Nome'
      '      ,Total_Pedido'
      '      ,Desconto'
      '      ,Comissao'
      
        '      ,Quantidade = (select sum(Quantidade) from PedidosRepresen' +
        'tantesItens where Pedido = pr.Pedido)'
      '      ,Cliente_CNPJ'
      '      ,Cliente_Estado'
      '      ,Cliente_MunicipioNome'
      '      ,Modalidade_Pagamento'
      
        '      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Pessoa = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J'#39', '#39'F'#39')'
      '      ,Observacao'
      '      ,Armazem'
      
        '      ,Armazem_Nome = (select Nome from Fornecedores frn where f' +
        'rn.Codigo = pr.Armazem)'
      '      ,Tipo_Nota'
      '      ,Bloqueado'
      'from  PedidosRepresentantes pr'
      'where isnull(Local, 0) = 3'
      'and   isnull(Autorizado,0) = 1'
      'and   isnull(Cancelado, 0) = 0'
      'order by Data asc'
      '')
    FetchRows = 1
    AfterScroll = tSeparadosAfterScroll
    Left = 565
    Top = 307
    object tSeparadosPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tSeparadosPedido_Pai: TStringField
      FieldName = 'Pedido_Pai'
      Size = 10
    end
    object tSeparadosParcial: TStringField
      FieldName = 'Parcial'
      FixedChar = True
      Size = 1
    end
    object tSeparadosData: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tSeparadosOrdem_Compra: TStringField
      FieldName = 'Ordem_Compra'
    end
    object tSeparadosRepresentante_Nome: TStringField
      FieldName = 'Representante_Nome'
      ReadOnly = True
      Size = 60
    end
    object tSeparadosCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Size = 50
    end
    object tSeparadosTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tSeparadosDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = ',##0.00'
    end
    object tSeparadosComissao: TFloatField
      FieldName = 'Comissao'
      DisplayFormat = ',##0.00'
    end
    object tSeparadosQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tSeparadosCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object tSeparadosCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object tSeparadosCliente_MunicipioNome: TStringField
      FieldName = 'Cliente_MunicipioNome'
      Size = 40
    end
    object tSeparadosModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
    end
    object tSeparadosModalidade_Nome: TStringField
      FieldName = 'Modalidade_Nome'
      ReadOnly = True
      Size = 40
    end
    object tSeparadosPessoa: TStringField
      FieldName = 'Pessoa'
      ReadOnly = True
      Size = 1
    end
    object tSeparadosObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object tSeparadosArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object tSeparadosArmazem_Nome: TStringField
      FieldName = 'Armazem_Nome'
      ReadOnly = True
      Size = 60
    end
    object tSeparadosTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
    end
    object tSeparadosBloqueado: TBooleanField
      FieldName = 'Bloqueado'
    end
  end
  object dstSeparados: TDataSource
    DataSet = tSeparados
    Left = 565
    Top = 355
  end
  object tClientes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Nome '
      '      ,CNPJ'
      '      ,Email '
      'from Clientes'
      'where Ativo = 1'
      '')
    FetchRows = 1
    Left = 644
    Top = 95
  end
  object dstClientes: TDataSource
    DataSet = tClientes
    Left = 644
    Top = 143
  end
  object Timer1: TTimer
    Left = 214
    Top = 214
  end
  object tAguardando: TMSQuery
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
        'tendente, Atendente_Comissao, Observacao, Situacao_Televendas, O' +
        'rigem_Pedido, Faturamento)'
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
        'tendente_Comissao, :Observacao, :Situacao_Televendas, :Origem_Pe' +
        'dido, :Faturamento)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
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
        'acao_Televendas = :Situacao_Televendas, Origem_Pedido = :Origem_' +
        'Pedido, Faturamento = :Faturamento'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLRefresh.Strings = (
      
        'SELECT PedidosRepresentantes.Pedido, PedidosRepresentantes.Data,' +
        ' PedidosRepresentantes.Representante, PedidosRepresentantes.Clie' +
        'nte, PedidosRepresentantes.Transportador, PedidosRepresentantes.' +
        'Modalidade_Pagamento, PedidosRepresentantes.Prazo_Entrega, Pedid' +
        'osRepresentantes.Comprador, PedidosRepresentantes.Frete, Pedidos' +
        'Representantes.Total_Pedido, PedidosRepresentantes.Total_IPI, Pe' +
        'didosRepresentantes.Liberado, PedidosRepresentantes.Tipo_Nota, P' +
        'edidosRepresentantes.Modalidade_Frete, PedidosRepresentantes.Nat' +
        'ureza_Codigo, PedidosRepresentantes.Volume_Quantidade, PedidosRe' +
        'presentantes.Volume_Especie, PedidosRepresentantes.Volume_PesoLi' +
        'quido, PedidosRepresentantes.Volume_PesoBruto, PedidosRepresenta' +
        'ntes.Inf_Complementares2, PedidosRepresentantes.Faturado, Pedido' +
        'sRepresentantes.Cancelado, PedidosRepresentantes.Aliquota_ICMS, ' +
        'PedidosRepresentantes.Cliente_CNPJ, PedidosRepresentantes.Client' +
        'e_CPF, PedidosRepresentantes.Cliente_Nome, PedidosRepresentantes' +
        '.Cliente_RG, PedidosRepresentantes.Cliente_CEP, PedidosRepresent' +
        'antes.Cliente_Rua, PedidosRepresentantes.Cliente_Bairro, Pedidos' +
        'Representantes.Cliente_Municipio, PedidosRepresentantes.Cliente_' +
        'RuaNumero, PedidosRepresentantes.Cliente_Complemento, PedidosRep' +
        'resentantes.Cliente_Estado, PedidosRepresentantes.Cliente_IE, Pe' +
        'didosRepresentantes.Cliente_Telefone, PedidosRepresentantes.Clie' +
        'nte_Email, PedidosRepresentantes.Cliente_Contato, PedidosReprese' +
        'ntantes.Cliente_Ramo, PedidosRepresentantes.Cliente_Representant' +
        'e, PedidosRepresentantes.Cliente_Simples, PedidosRepresentantes.' +
        'Cliente_ZonaFranca, PedidosRepresentantes.Cliente_ConsumidorFina' +
        'l, PedidosRepresentantes.Tipo_Pedido, PedidosRepresentantes.Situ' +
        'acao, PedidosRepresentantes.Gerar_Pedido, PedidosRepresentantes.' +
        'Desconto, PedidosRepresentantes.Total_Desconto, PedidosRepresent' +
        'antes.Comissao, PedidosRepresentantes.Tipo_Faturamento, PedidosR' +
        'epresentantes.Cliente_MunicipioNome, PedidosRepresentantes.Atend' +
        'ente, PedidosRepresentantes.Atendente_Comissao, PedidosRepresent' +
        'antes.Observacao, PedidosRepresentantes.Situacao_Televendas, Ped' +
        'idosRepresentantes.Origem_Pedido, PedidosRepresentantes.Faturame' +
        'nto FROM PedidosRepresentantes'
      
        'WHERE PedidosRepresentantes.Pedido = :Pedido AND PedidosRepresen' +
        'tantes.Data = :Data ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Parcial'
      '      ,Data'
      '      ,Ordem_Compra'
      
        '      ,Representante_Nome = case when isnull(Representante, 0) <' +
        '> 0 then'
      
        '                                      case when (select Nome fro' +
        'm Fornecedores where Representante_Codigo = Representante) is no' +
        't null then '
      
        #9#9#9#9'           (select Nome from Fornecedores where Representant' +
        'e_Codigo = Representante)'
      '                                      else'
      
        #9#9#9#9#9'   (select Nome from Fornecedores where Codigo = Representa' +
        'nte)'
      #9#9#9#9'      end'
      
        '                                 when isnull(Atendente, '#39#39') <> '#39 +
        #39' then'
      
        '                                      (select Nome from Cybersof' +
        't_Cadastros.dbo.Usuarios where Matricula = Atendente)'
      '                            else'
      '                                '#39'VENDA VIA '#39'+Origem_Pedido'
      '                            end'
      '      ,Cliente_Nome'
      '      ,Total_Pedido'
      '      ,Desconto'
      '      ,Comissao'
      
        '      ,Quantidade = (select sum(Quantidade) from PedidosRepresen' +
        'tantesItens where Pedido = pr.Pedido)'
      '      ,Cliente_CNPJ'
      '      ,Cliente_Estado'
      '      ,Cliente_MunicipioNome'
      '      ,Modalidade_Pagamento'
      
        '      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Pessoa = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J'#39', '#39'F'#39')'
      '      ,Observacao'
      '      ,Armazem'
      
        '      ,Armazem_Nome = (select Nome from Fornecedores frn where f' +
        'rn.Codigo = pr.Armazem)'
      '      ,Tipo_Nota'
      '      ,Bloqueado'
      'from  PedidosRepresentantes pr'
      'where isnull(Local, 0) = 2'
      'and   isnull(Autorizado,0) = 1'
      'and   isnull(Cancelado, 0) = 0'
      'order by Data asc'
      '')
    FetchRows = 1
    AfterScroll = tAguardandoAfterScroll
    Left = 643
    Top = 197
    object tAguardandoPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tAguardandoPedido_Pai: TStringField
      FieldName = 'Pedido_Pai'
      Size = 10
    end
    object tAguardandoParcial: TStringField
      FieldName = 'Parcial'
      FixedChar = True
      Size = 1
    end
    object tAguardandoData: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tAguardandoOrdem_Compra: TStringField
      FieldName = 'Ordem_Compra'
    end
    object tAguardandoRepresentante_Nome: TStringField
      FieldName = 'Representante_Nome'
      ReadOnly = True
      Size = 60
    end
    object tAguardandoCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Size = 50
    end
    object tAguardandoTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tAguardandoDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = ',##0.00'
    end
    object tAguardandoComissao: TFloatField
      FieldName = 'Comissao'
      DisplayFormat = ',##0.00'
    end
    object tAguardandoQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
    end
    object tAguardandoCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      EditMask = '99.999.999/9999-99;0 '
      Size = 14
    end
    object tAguardandoCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object tAguardandoCliente_MunicipioNome: TStringField
      FieldName = 'Cliente_MunicipioNome'
      Size = 40
    end
    object tAguardandoModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
    end
    object tAguardandoModalidade_Nome: TStringField
      FieldName = 'Modalidade_Nome'
      ReadOnly = True
      Size = 40
    end
    object tAguardandoPessoa: TStringField
      FieldName = 'Pessoa'
      ReadOnly = True
      Size = 1
    end
    object tAguardandoObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object tAguardandoArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object tAguardandoArmazem_Nome: TStringField
      FieldName = 'Armazem_Nome'
      ReadOnly = True
      Size = 60
    end
    object tAguardandoTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
    end
    object tAguardandoBloqueado: TBooleanField
      FieldName = 'Bloqueado'
    end
  end
  object dstAguardando: TDataSource
    DataSet = tAguardando
    Left = 645
    Top = 246
  end
  object tBaixados: TMSQuery
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
        'tendente, Atendente_Comissao, Observacao, Situacao_Televendas, O' +
        'rigem_Pedido, Faturamento)'
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
        'tendente_Comissao, :Observacao, :Situacao_Televendas, :Origem_Pe' +
        'dido, :Faturamento)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
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
        'acao_Televendas = :Situacao_Televendas, Origem_Pedido = :Origem_' +
        'Pedido, Faturamento = :Faturamento'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLRefresh.Strings = (
      
        'SELECT PedidosRepresentantes.Pedido, PedidosRepresentantes.Data,' +
        ' PedidosRepresentantes.Representante, PedidosRepresentantes.Clie' +
        'nte, PedidosRepresentantes.Transportador, PedidosRepresentantes.' +
        'Modalidade_Pagamento, PedidosRepresentantes.Prazo_Entrega, Pedid' +
        'osRepresentantes.Comprador, PedidosRepresentantes.Frete, Pedidos' +
        'Representantes.Total_Pedido, PedidosRepresentantes.Total_IPI, Pe' +
        'didosRepresentantes.Liberado, PedidosRepresentantes.Tipo_Nota, P' +
        'edidosRepresentantes.Modalidade_Frete, PedidosRepresentantes.Nat' +
        'ureza_Codigo, PedidosRepresentantes.Volume_Quantidade, PedidosRe' +
        'presentantes.Volume_Especie, PedidosRepresentantes.Volume_PesoLi' +
        'quido, PedidosRepresentantes.Volume_PesoBruto, PedidosRepresenta' +
        'ntes.Inf_Complementares2, PedidosRepresentantes.Faturado, Pedido' +
        'sRepresentantes.Cancelado, PedidosRepresentantes.Aliquota_ICMS, ' +
        'PedidosRepresentantes.Cliente_CNPJ, PedidosRepresentantes.Client' +
        'e_CPF, PedidosRepresentantes.Cliente_Nome, PedidosRepresentantes' +
        '.Cliente_RG, PedidosRepresentantes.Cliente_CEP, PedidosRepresent' +
        'antes.Cliente_Rua, PedidosRepresentantes.Cliente_Bairro, Pedidos' +
        'Representantes.Cliente_Municipio, PedidosRepresentantes.Cliente_' +
        'RuaNumero, PedidosRepresentantes.Cliente_Complemento, PedidosRep' +
        'resentantes.Cliente_Estado, PedidosRepresentantes.Cliente_IE, Pe' +
        'didosRepresentantes.Cliente_Telefone, PedidosRepresentantes.Clie' +
        'nte_Email, PedidosRepresentantes.Cliente_Contato, PedidosReprese' +
        'ntantes.Cliente_Ramo, PedidosRepresentantes.Cliente_Representant' +
        'e, PedidosRepresentantes.Cliente_Simples, PedidosRepresentantes.' +
        'Cliente_ZonaFranca, PedidosRepresentantes.Cliente_ConsumidorFina' +
        'l, PedidosRepresentantes.Tipo_Pedido, PedidosRepresentantes.Situ' +
        'acao, PedidosRepresentantes.Gerar_Pedido, PedidosRepresentantes.' +
        'Desconto, PedidosRepresentantes.Total_Desconto, PedidosRepresent' +
        'antes.Comissao, PedidosRepresentantes.Tipo_Faturamento, PedidosR' +
        'epresentantes.Cliente_MunicipioNome, PedidosRepresentantes.Atend' +
        'ente, PedidosRepresentantes.Atendente_Comissao, PedidosRepresent' +
        'antes.Observacao, PedidosRepresentantes.Situacao_Televendas, Ped' +
        'idosRepresentantes.Origem_Pedido, PedidosRepresentantes.Faturame' +
        'nto FROM PedidosRepresentantes'
      
        'WHERE PedidosRepresentantes.Pedido = :Pedido AND PedidosRepresen' +
        'tantes.Data = :Data ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Parcial'
      '      ,Data'
      '      ,Ordem_Compra'
      
        '      ,Representante_Nome = case when isnull(Representante, 0) <' +
        '> 0 then'
      
        '                                      case when (select Nome fro' +
        'm Fornecedores where Representante_Codigo = Representante) is no' +
        't null then '
      
        #9#9#9#9'           (select Nome from Fornecedores where Representant' +
        'e_Codigo = Representante)'
      '                                      else'
      
        #9#9#9#9#9'   (select Nome from Fornecedores where Codigo = Representa' +
        'nte)'
      #9#9#9#9'      end'
      
        '                                 when isnull(Atendente, '#39#39') <> '#39 +
        #39' then'
      
        '                                      (select Nome from Cybersof' +
        't_Cadastros.dbo.Usuarios where Matricula = Atendente)'
      '                            else'
      '                                '#39'VENDA VIA '#39'+Origem_Pedido'
      '                            end'
      '      ,Cliente_Nome'
      '      ,Total_Pedido'
      '      ,Desconto'
      '      ,Comissao'
      
        '      ,Quantidade = (select sum(Quantidade) from PedidosRepresen' +
        'tantesItens where Pedido = pr.Pedido)'
      '      ,Cliente_CNPJ'
      '      ,Cliente_Estado'
      '      ,Cliente_MunicipioNome'
      '      ,Modalidade_Pagamento'
      
        '      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Pessoa = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J'#39', '#39'F'#39')'
      '      ,Observacao'
      '      ,Armazem'
      
        '      ,Armazem_Nome = (select Nome from Fornecedores frn where f' +
        'rn.Codigo = pr.Armazem)'
      '      ,Tipo_Nota'
      '      ,Bloqueado'
      'from  PedidosRepresentantes pr'
      'where isnull(Local, 0) = 7'
      'and   isnull(Autorizado,0) = 1'
      'and   isnull(Cancelado, 0) = 0'
      'order by Data asc'
      '')
    FetchRows = 1
    Left = 380
    Top = 399
    object tBaixadosPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tBaixadosPedido_Pai: TStringField
      FieldName = 'Pedido_Pai'
      Size = 10
    end
    object tBaixadosParcial: TStringField
      FieldName = 'Parcial'
      FixedChar = True
      Size = 1
    end
    object tBaixadosData: TDateTimeField
      FieldName = 'Data'
    end
    object tBaixadosOrdem_Compra: TStringField
      FieldName = 'Ordem_Compra'
    end
    object tBaixadosRepresentante_Nome: TStringField
      FieldName = 'Representante_Nome'
      ReadOnly = True
      Size = 60
    end
    object tBaixadosCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Size = 50
    end
    object tBaixadosTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tBaixadosDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = ',##0.00'
    end
    object tBaixadosComissao: TFloatField
      FieldName = 'Comissao'
      DisplayFormat = ',##0.00'
    end
    object tBaixadosQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tBaixadosCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object tBaixadosCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object tBaixadosCliente_MunicipioNome: TStringField
      FieldName = 'Cliente_MunicipioNome'
      Size = 40
    end
    object tBaixadosModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
    end
    object tBaixadosModalidade_Nome: TStringField
      FieldName = 'Modalidade_Nome'
      ReadOnly = True
      Size = 40
    end
    object tBaixadosPessoa: TStringField
      FieldName = 'Pessoa'
      ReadOnly = True
      Size = 1
    end
    object tBaixadosObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object tBaixadosArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object tBaixadosArmazem_Nome: TStringField
      FieldName = 'Armazem_Nome'
      ReadOnly = True
      Size = 60
    end
    object tBaixadosTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
    end
    object tBaixadosBloqueado: TBooleanField
      FieldName = 'Bloqueado'
    end
  end
  object dstBaixados: TDataSource
    DataSet = tBaixados
    Left = 380
    Top = 447
  end
  object tGradeItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Item'
      '      ,Pedido'
      '      ,Codigo_Mercadoria'
      
        '      ,Descricao = rtrim((select replace(Descricao, '#39'<{'#39'+cast(Co' +
        'digo_Mercadoria as varchar(15))+'#39'}>'#39', '#39#39') from Produtos where Co' +
        'digo = Codigo_Mercadoria))'
      '      ,Quantidade'
      
        '      ,Quantidade_Master = (select Quantidade_CaixaMaster from P' +
        'rodutos where Codigo = Codigo_Mercadoria)'
      
        '      ,Unidade = (select Unidade from Produtos where Codigo = Co' +
        'digo_Mercadoria)'
      
        '      ,Volumes = Quantidade / iif((select isnull(Quantidade_Caix' +
        'aMaster, 0) from Produtos where Codigo = Codigo_Mercadoria) >= 1' +
        ', (select Quantidade_CaixaMaster from Produtos where Codigo = Co' +
        'digo_Mercadoria), 1)'
      '      ,Valor_Unitario'
      '      ,Valor_Total = Valor_Unitario * Quantidade'
      'from PedidosRepresentantesItens')
    FetchRows = 1
    Left = 649
    Top = 301
    object tGradeItensPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tGradeItensItem: TSmallintField
      Alignment = taCenter
      FieldName = 'Item'
      DisplayFormat = '0000'
    end
    object tGradeItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
    end
    object tGradeItensDescricao: TStringField
      FieldName = 'Descricao'
      ReadOnly = True
      Size = 5000
    end
    object tGradeItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
    object tGradeItensQuantidade_Master: TFloatField
      FieldName = 'Quantidade_Master'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tGradeItensUnidade: TStringField
      FieldName = 'Unidade'
      ReadOnly = True
      Size = 3
    end
    object tGradeItensVolumes: TFloatField
      FieldName = 'Volumes'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tGradeItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      DisplayFormat = ',##0.0000'
    end
    object tGradeItensValor_Total: TFloatField
      FieldName = 'Valor_Total'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
  end
  object dstGradeItens: TDataSource
    DataSet = tGradeItens
    Left = 650
    Top = 349
  end
  object tArmazem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Nome '
      '      ,CNPJ'
      '      ,Email '
      'from Fornecedores'
      'where Ativo = 1'
      
        'and (select Descricao from RamoAtividade where Codigo = Ramo_Ati' +
        'vidade) like '#39'%ARMAZ%'#39)
    FetchRows = 1
    Left = 721
    Top = 93
  end
  object dstArmazem: TDataSource
    DataSet = tArmazem
    Left = 721
    Top = 141
  end
end
