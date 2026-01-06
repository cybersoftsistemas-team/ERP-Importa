object Utilitarios_AjustarEstoqueInventario: TUtilitarios_AjustarEstoqueInventario
  Left = 449
  Top = 194
  BorderStyle = bsDialog
  Caption = 'Utilitarios_AjustarEstoqueInventario'
  ClientHeight = 637
  ClientWidth = 1059
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1059
    637)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 1059
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 89
    Height = 21
    Caption = 'UTILITARIOS'
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
  object RxLabel2: TRxLabel
    Left = 8
    Top = 22
    Width = 352
    Height = 18
    Caption = 'Ajuste dos campos de Estoque/Invent'#225'rio de Nota Fiscal.'
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
    Left = 344
    Top = 602
    Width = 714
    Height = 33
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      714
      33)
    object bPesquisar: TButton
      Left = 563
      Top = 1
      Width = 75
      Height = 32
      Hint = 'Pesquisar uma nota fiscal.'
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bPesquisarClick
    end
    object bSair: TButton
      Left = 638
      Top = 1
      Width = 75
      Height = 32
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bInventario: TButton
      Left = 2
      Top = 1
      Width = 153
      Height = 32
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Recalcular Valor Invent'#225'rio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bInventarioClick
    end
    object bPISCOFINS: TButton
      Left = 155
      Top = 1
      Width = 136
      Height = 32
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = 'Recalcular PIS/&COFINS'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bPISCOFINSClick
    end
    object bAplicar: TButton
      Left = 450
      Top = 1
      Width = 112
      Height = 32
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Aplicar Altera'#231#227'oes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bAplicarClick
    end
    object bItem: TButton
      Left = 379
      Top = 1
      Width = 70
      Height = 32
      Hint = 'Pesquisar uma nota fiscal.'
      Caption = 'Alterar &Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bItemClick
    end
  end
  object RxDBGrid1: TDBGrid
    Left = 5
    Top = 50
    Width = 1052
    Height = 165
    DataSource = dstNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 57
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Destinatario_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Destinat'#225'rio'
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
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 37
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
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
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
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_PIS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.PIS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_COFINS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.COFINS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_TotalNota'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 464
    Top = 388
    Width = 593
    Height = 210
    Caption = 'Nota Fiscal'
    TabOrder = 2
    object cInv: TCheckBox
      Left = 7
      Top = 18
      Width = 126
      Height = 17
      Caption = 'Movimenta Invent'#225'rio'
      TabOrder = 0
    end
    object cEst: TCheckBox
      Left = 7
      Top = 36
      Width = 118
      Height = 17
      Caption = 'Movimenta Estoque'
      TabOrder = 1
    end
    object cPC: TCheckBox
      Left = 7
      Top = 55
      Width = 132
      Height = 17
      Caption = 'Apura'#231#227'o PIS/COFINS'
      TabOrder = 2
    end
    object StaticText9: TStaticText
      Left = 7
      Top = 116
      Width = 90
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
      TabOrder = 3
      Transparent = False
      StyleElements = []
    end
    object cProcessoOrig: TEdit
      Left = 99
      Top = 116
      Width = 111
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = 'cProcessoOrig'
    end
    object StaticText1: TStaticText
      Left = 212
      Top = 116
      Width = 59
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Trocar Por'
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
    object cProcessoDest: TEdit
      Left = 272
      Top = 116
      Width = 111
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = 'cProcessoDest'
    end
    object StaticText2: TStaticText
      Left = 7
      Top = 139
      Width = 90
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
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
    object cProdutoOrig: TEdit
      Left = 99
      Top = 139
      Width = 111
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Text = 'cProdutoOrig'
    end
    object StaticText3: TStaticText
      Left = 212
      Top = 139
      Width = 59
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Trocar Por'
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
    object cProdutoDest: TEdit
      Left = 272
      Top = 139
      Width = 111
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Text = 'cProdutoDest'
    end
    object cFinalidadeNF: TRadioGroup
      Left = 391
      Top = 11
      Width = 192
      Height = 189
      Caption = 'Finalidade Mercadoria'
      Color = clBtnFace
      Items.Strings = (
        'Revenda'
        'Consumo'
        'Devolu'#231#227'o'
        'Exporta'#231#227'o'
        'Pr'#243'pria em Poder de Terceiros'
        'Terceiros em Poder da Empresa'
        'Imobilizado'
        'Outras')
      ParentColor = False
      TabOrder = 11
    end
    object StaticText6: TStaticText
      Left = 7
      Top = 162
      Width = 90
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CST PIS/COFINS'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 12
      Transparent = False
      StyleElements = []
    end
    object cCSTOrig: TEdit
      Left = 99
      Top = 162
      Width = 111
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      Text = 'cCSTOrig'
    end
    object cCSTDest: TEdit
      Left = 272
      Top = 162
      Width = 111
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      Text = 'cCSTDest'
    end
    object StaticText7: TStaticText
      Left = 212
      Top = 162
      Width = 59
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Trocar Por'
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
    object cDev: TCheckBox
      Left = 7
      Top = 75
      Width = 77
      Height = 17
      Caption = 'Devolu'#231#227'o'
      TabOrder = 16
    end
    object cForaPrazo: TCheckBox
      Left = 7
      Top = 95
      Width = 161
      Height = 17
      Caption = 'Cancelamento Fora do Prazo'
      TabOrder = 17
      OnClick = cForaPrazoClick
    end
    object StaticText51: TStaticText
      Left = 7
      Top = 185
      Width = 90
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Incentivo Fiscal'
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
    object cIncentivo: TRxDBLookupCombo
      Left = 99
      Top = 186
      Width = 172
      Height = 21
      DropDownCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Nome'
      LookupDisplay = 'Nome;Estado'
      LookupSource = Dados.dsIncentivosFiscais
      ParentFont = False
      TabOrder = 19
    end
  end
  object GradeItens: TDBGrid
    Left = 5
    Top = 217
    Width = 1052
    Height = 165
    DataSource = dstItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeItensDrawColumnCell
    OnDblClick = GradeItensDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 332
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
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Movimenta_Inventario'
        Title.Alignment = taCenter
        Title.Caption = 'Inv'
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
        FieldName = 'Movimenta_Estoque'
        Title.Alignment = taCenter
        Title.Caption = 'Est'
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
        FieldName = 'Apuracao_PISCOFINS'
        Title.Alignment = taCenter
        Title.Caption = 'P/C'
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
        FieldName = 'Devolucao'
        Title.Alignment = taCenter
        Title.Caption = 'Dev'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 24
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Finalidade_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'Fin'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 20
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
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Inventario'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Inv'
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
        FieldName = 'Aliquota_PIS'
        Title.Alignment = taCenter
        Title.Caption = 'PIS %'
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
        FieldName = 'Valor_PIS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.PIS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CSTPIS'
        Title.Alignment = taCenter
        Title.Caption = 'CST'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aliquota_COFINS'
        Title.Alignment = taCenter
        Title.Caption = 'COF %'
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
        FieldName = 'Valor_COFINS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.COFINS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CSTCOFINS'
        Title.Alignment = taCenter
        Title.Caption = 'CST'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 388
    Width = 453
    Height = 210
    Caption = 'Tipo de Nota'
    Enabled = False
    TabOrder = 4
    object DBText1: TDBText
      Left = 5
      Top = 14
      Width = 36
      Height = 17
      Alignment = taCenter
      Color = clYellow
      DataField = 'Codigo'
      DataSource = Dados.dsTipoNota
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 46
      Top = 14
      Width = 403
      Height = 16
      Color = clYellow
      DataField = 'Descricao'
      DataSource = Dados.dsTipoNota
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object DBCheckBox1: TDBCheckBox
      Left = 7
      Top = 37
      Width = 126
      Height = 17
      Caption = 'Movimenta Invent'#225'rio'
      DataField = 'Movimenta_Inventario'
      DataSource = Dados.dsTipoNota
      ReadOnly = True
      TabOrder = 0
    end
    object DBCheckBox2: TDBCheckBox
      Left = 7
      Top = 56
      Width = 118
      Height = 17
      Caption = 'Movimenta Estoque'
      DataField = 'Movimenta_Estoque'
      DataSource = Dados.dsTipoNota
      ReadOnly = True
      TabOrder = 1
    end
    object DBCheckBox3: TDBCheckBox
      Left = 7
      Top = 75
      Width = 132
      Height = 17
      Caption = 'Apura'#231#227'o PIS/COFINS'
      DataField = 'Apuracao_PISCOFINS'
      DataSource = Dados.dsTipoNota
      ReadOnly = True
      TabOrder = 2
    end
    object cFinalidadeTN: TRadioGroup
      Left = 248
      Top = 34
      Width = 198
      Height = 170
      Caption = 'Finalidade Mercadoria'
      Items.Strings = (
        'Revenda'
        'Consumo'
        'Devolu'#231#227'o'
        'Exporta'#231#227'o'
        'Pr'#243'pria em Poder de Terceiros'
        'Terceiros em Poder da Empresa'
        'Imobilizado'
        'Outras')
      ParentBackground = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 602
    Width = 339
    Height = 33
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 5
    object StaticText5: TStaticText
      Left = 5
      Top = 7
      Width = 153
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvRaised
      BorderStyle = sbsSunken
      Caption = 'Senha do ADMINISTRADOR'
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
    object cSenha: TEdit
      Left = 160
      Top = 7
      Width = 177
      Height = 21
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 1
      OnChange = cSenhaChange
    end
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  Numero '
      '       ,Data_Emissao'
      '       ,Destinatario_Nome'
      
        '       ,CASE WHEN Saida_Entrada = 0 THEN '#39'Entrada'#39' ELSE '#39'Saida'#39' ' +
        'END AS Tipo'
      '       ,Tipo_Nota'
      '       ,Apuracao_PISCOFINS'
      '       ,Processo'
      '       ,Natureza_Codigo'
      '       ,NFE_cNF'
      '       ,Valor_TotalNota'
      '       ,Valor_PIS'
      '       ,Valor_COFINS'
      '       ,Cancelada_ForaPrazo'
      '       ,Incentivo_Fiscal'
      'FROM NotasFiscais'
      '--WHERE Numero = 3846')
    AfterScroll = tNotasAfterScroll
    Left = 424
    Top = 8
    object tNotasNumero: TIntegerField
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = 'NotasFiscais.Numero'
      DisplayFormat = '000000000'
    end
    object tNotasData_Emissao: TDateTimeField
      DisplayWidth = 12
      FieldName = 'Data_Emissao'
      Origin = 'NotasFiscais.Data_Emissao'
    end
    object tNotasDestinatario_Nome: TStringField
      DisplayWidth = 41
      FieldName = 'Destinatario_Nome'
      Origin = 'NotasFiscais.Destinatario_Nome'
      Size = 60
    end
    object tNotasTipo: TStringField
      DisplayWidth = 7
      FieldName = 'Tipo'
      Origin = '.'
      ReadOnly = True
      Size = 7
    end
    object tNotasTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
      Origin = 'NotasFiscais.Tipo_Nota'
    end
    object tNotasApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'NotasFiscais.Apuracao_PISCOFINS'
    end
    object tNotasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'NotasFiscais.Processo'
      Size = 15
    end
    object tNotasNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      Origin = 'NotasFiscais.Natureza_Codigo'
      Size = 4
    end
    object tNotasNFE_cNF: TStringField
      Alignment = taCenter
      FieldName = 'NFE_cNF'
      Origin = 'NotasFiscais.NFE_cNF'
      EditMask = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
      Size = 50
    end
    object tNotasValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = 'NotasFiscais.Valor_TotalNota'
      DisplayFormat = ',##0.00'
    end
    object tNotasValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'NotasFiscais.Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object tNotasValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'NotasFiscais.Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object tNotasCancelada_ForaPrazo: TBooleanField
      FieldName = 'Cancelada_ForaPrazo'
    end
    object tNotasIncentivo_Fiscal: TStringField
      FieldName = 'Incentivo_Fiscal'
      Size = 15
    end
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  Codigo_Mercadoria'
      
        '       ,CAST(Descricao_Mercadoria AS VARCHAR(500)) AS Descricao_' +
        'Mercadoria'
      '       ,Movimenta_Estoque'
      '       ,Movimenta_Inventario'
      '       ,Apuracao_PISCOFINS'
      '       ,Processo'
      '       ,Valor_Inventario = Round(Valor_Inventario, 4)'
      '       ,Finalidade_Mercadoria'
      '       ,Aliquota_PIS'
      '       ,Valor_PIS'
      '       ,Aliquota_COFINS'
      '       ,Valor_COFINS'
      '       ,CSTPIS'
      '       ,CSTCOFINS'
      '       ,Item'
      '       ,Quantidade'
      '       ,Devolucao'
      'FROM NotasItens ')
    Left = 496
    Top = 8
    object tItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'NotasItens.Codigo_Mercadoria'
    end
    object tItensDescricao_Mercadoria: TStringField
      FieldName = 'Descricao_Mercadoria'
      Origin = '.'
      ReadOnly = True
      Size = 500
    end
    object tItensMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
      Origin = 'NotasItens.Movimenta_Estoque'
    end
    object tItensMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
      Origin = 'NotasItens.Movimenta_Inventario'
    end
    object tItensApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'NotasItens.Apuracao_PISCOFINS'
    end
    object tItensProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'NotasItens.Processo'
      Size = 15
    end
    object tItensValor_Inventario: TFloatField
      FieldName = 'Valor_Inventario'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',##0.0000'
    end
    object tItensFinalidade_Mercadoria: TSmallintField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'NotasItens.Finalidade_Mercadoria'
    end
    object tItensAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'NotasItens.Aliquota_PIS'
      DisplayFormat = '##0.00'
    end
    object tItensValor_PIS: TFloatField
      FieldName = 'Valor_PIS'
      Origin = 'NotasItens.Valor_PIS'
      DisplayFormat = ',##0.0000'
    end
    object tItensAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'NotasItens.Aliquota_COFINS'
      DisplayFormat = '##0.00'
    end
    object tItensValor_COFINS: TFloatField
      FieldName = 'Valor_COFINS'
      Origin = 'NotasItens.Valor_COFINS'
      DisplayFormat = ',##0.0000'
    end
    object tItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'NotasItens.CSTPIS'
      FixedChar = True
      Size = 2
    end
    object tItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'NotasItens.CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object tItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'NotasItens.Item'
    end
    object tItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'NotasItens.Quantidade'
      DisplayFormat = '#,##0.000'
    end
    object tItensDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'NotasItens.Devolucao'
    end
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 424
    Top = 56
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 496
    Top = 56
  end
end
