object Proforma_Itens: TProforma_Itens
  Left = 566
  Top = 204
  BorderStyle = bsDialog
  Caption = 'Proforma_Itens'
  ClientHeight = 546
  ClientWidth = 824
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
  DesignSize = (
    824
    546)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 515
    Width = 824
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      824
      31)
    object bSair: TButton
      Left = 752
      Top = 2
      Width = 72
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 2
      Width = 432
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsProformaItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bImportar: TButton
      Left = 433
      Top = 2
      Width = 142
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Importar itens das Notas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bImportarClick
    end
  end
  object GradeItens: TRxDBGrid
    Left = 5
    Top = 292
    Width = 814
    Height = 219
    Color = 14155775
    DataSource = Dados.dsProformaItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
    OnDragDrop = GradeItensDragDrop
    OnDragOver = GradeItensDragOver
    RowColor2 = 16776176
    ShowGlyphs = False
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 29
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'Codigo_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 517
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Unitario'
        Title.Alignment = taCenter
        Title.Caption = 'Unit (ME)'
        Width = 80
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 814
    Height = 285
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 2
    DesignSize = (
      814
      285)
    object GradeProdutos: TRxDBGrid
      Left = 5
      Top = 4
      Width = 804
      Height = 165
      Color = clWhite
      DataSource = Dados.dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
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
      OnMouseDown = GradeProdutosMouseDown
      RowColor2 = 16776176
      ShowGlyphs = False
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Fabricante'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo Fabrica'
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 526
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NCM'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end>
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 174
      Width = 60
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pesquisa'
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
    object cPesquisa: TEdit
      Left = 67
      Top = 174
      Width = 646
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = cPesquisaChange
    end
    object bAdicionar: TButton
      Left = 717
      Top = 170
      Width = 92
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Adicionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bAdicionarClick
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 212
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo'
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
    object cCodigo: TDBEdit
      Left = 100
      Top = 212
      Width = 124
      Height = 21
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsProformaItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnDragDrop = cCodigoDragDrop
      OnDragOver = cCodigoDragOver
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 235
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
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
    object StaticText7: TStaticText
      Left = 5
      Top = 258
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio (ME)'
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
    object cValor: TDBEdit
      Left = 100
      Top = 258
      Width = 124
      Height = 21
      DataField = 'Valor_Unitario'
      DataSource = Dados.dsProformaItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object cQtde: TDBEdit
      Left = 100
      Top = 235
      Width = 124
      Height = 21
      DataField = 'Quantidade'
      DataSource = Dados.dsProformaItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 376
    Top = 118
  end
end
