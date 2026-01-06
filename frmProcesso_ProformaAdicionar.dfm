object Processo_ProformaAdicionar: TProcesso_ProformaAdicionar
  Left = 472
  Top = 210
  ActiveControl = cPesquisa
  BorderStyle = bsToolWindow
  Caption = 'Processo_ProformaAdicionar'
  ClientHeight = 519
  ClientWidth = 892
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
  object RxDBGrid1: TRxDBGrid
    Left = 5
    Top = 4
    Width = 882
    Height = 257
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
    OnCellClick = RxDBGrid1CellClick
    ShowGlyphs = False
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 104
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
        Width = 560
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
    Top = 263
    Width = 60
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cPesquisa: TEdit
    Left = 67
    Top = 263
    Width = 820
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
  object Panel2: TPanel
    Left = 0
    Top = 488
    Width = 892
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      892
      31)
    object bOK: TButton
      Left = 353
      Top = 2
      Width = 91
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop]
      Caption = '&OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bOKClick
    end
    object bCancelar: TButton
      Left = 449
      Top = 2
      Width = 91
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop]
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bCancelarClick
    end
  end
  object Panel3: TPanel
    Left = 5
    Top = 287
    Width = 882
    Height = 198
    BevelOuter = bvLowered
    TabOrder = 4
    object StaticText4: TStaticText
      Left = 5
      Top = 5
      Width = 93
      Height = 142
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cCodigo: TDBEdit
      Left = 100
      Top = 5
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
      TabOrder = 1
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 149
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 172
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio (ME)'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit5: TDBEdit
      Left = 100
      Top = 172
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
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 100
      Top = 149
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
      TabOrder = 3
    end
    object cDescricao: TDBMemo
      Left = 100
      Top = 28
      Width = 777
      Height = 119
      DataField = 'Descricao'
      DataSource = Dados.dsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 384
    Top = 174
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 416
    Top = 174
  end
end
