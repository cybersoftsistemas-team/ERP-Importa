object Processo_InvoiceQuantidade: TProcesso_InvoiceQuantidade
  Left = 455
  Top = 233
  BorderStyle = bsToolWindow
  Caption = 'Processo_InvoiceQuantidade'
  ClientHeight = 371
  ClientWidth = 975
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
  object GroupBox1: TGroupBox
    Left = 6
    Top = 4
    Width = 964
    Height = 230
    Caption = 'CADASTRO DE PRODUTOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object GradeItens: TRxDBGrid
      Left = 5
      Top = 16
      Width = 954
      Height = 183
      Color = 14155775
      DataSource = Dados.dsProdutos
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
      OnDblClick = GradeItensDblClick
      RowColor2 = 16776176
      ShowGlyphs = False
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Fabricante'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 105
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
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 729
          Visible = True
        end>
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 201
      Width = 55
      Height = 23
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
      TabOrder = 1
      Transparent = False
      StyleElements = []
    end
    object cPesquisa: TEdit
      Left = 62
      Top = 201
      Width = 897
      Height = 23
      Color = 14155775
      TabOrder = 2
      OnChange = cPesquisaChange
      OnKeyPress = cPesquisaKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 6
    Top = 239
    Width = 964
    Height = 92
    Caption = 'VALORES DO ITEM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object StaticText3: TStaticText
      Left = 6
      Top = 19
      Width = 95
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
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object cQuantidade: TCurrencyEdit
      Left = 103
      Top = 19
      Width = 112
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = ',##0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = cQuantidadeChange
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 42
      Width = 95
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
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object cUnitarioReal: TCurrencyEdit
      Left = 316
      Top = 42
      Width = 112
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = ',##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object lUnitarioME: TStaticText
      Left = 217
      Top = 42
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio (R$)'
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
    object cUnitarioME: TCurrencyEdit
      Left = 103
      Top = 42
      Width = 112
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = ',##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnChange = cUnitarioMEChange
    end
    object StaticText5: TStaticText
      Left = 6
      Top = 65
      Width = 95
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total (ME)'
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
    object cTotalReal: TCurrencyEdit
      Left = 316
      Top = 65
      Width = 112
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object lTotalME: TStaticText
      Left = 217
      Top = 65
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total (R$)'
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
    object cTotalME: TCurrencyEdit
      Left = 103
      Top = 65
      Width = 112
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText6: TStaticText
      Left = 217
      Top = 19
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Peso L'#237'quido'
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
    object cPesoLiquido: TCurrencyEdit
      Left = 316
      Top = 19
      Width = 112
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = ',##0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = cQuantidadeChange
    end
    object StaticText7: TStaticText
      Left = 431
      Top = 19
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Peso Bruto'
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
    object cPesoBruto: TCurrencyEdit
      Left = 530
      Top = 19
      Width = 112
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = ',##0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = cQuantidadeChange
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 344
    Width = 975
    Height = 27
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      975
      27)
    object bAdicionar: TButton
      Left = 823
      Top = 1
      Width = 75
      Height = 25
      Hint = '  Confirma as informa'#231#245'es e sai.  '
      Anchors = [akTop, akRight]
      Caption = '&Adicionar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bAdicionarClick
    end
    object bSair: TButton
      Left = 899
      Top = 1
      Width = 75
      Height = 25
      Hint = '  Cancela as informa'#231#245'es e sai.  '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSairClick
    end
  end
  object StaticText1: TStaticText
    Left = 794
    Top = 319
    Width = 128
    Height = 20
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSingle
    Caption = 'ITENS ADICIONADOS'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Transparent = False
    StyleElements = []
  end
  object cItens: TCurrencyEdit
    Left = 923
    Top = 319
    Width = 39
    Height = 20
    AutoSize = False
    Color = clBtnFace
    Ctl3D = False
    DecimalPlaces = 4
    DisplayFormat = '0'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 656
    Top = 120
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ISNULL(MAX(Registro),0) AS Registro FROM PackingListItens')
    Left = 592
    Top = 120
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 712
    Top = 120
  end
end
