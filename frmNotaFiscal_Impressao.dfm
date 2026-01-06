object NotaFiscal_Impressao: TNotaFiscal_Impressao
  Left = 217
  Top = 154
  ActiveControl = Panel1
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_Impressao'
  ClientHeight = 520
  ClientWidth = 741
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
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 183
    Height = 21
    Caption = 'PEDIDOS DE NOTA FISCAL'
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
  object lTitulo: TRxLabel
    Left = 8
    Top = 22
    Width = 233
    Height = 18
    Caption = 'Confec'#231#227'o dos pedidos de nota fiscal.'
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
  object Image2: TImage
    Left = 534
    Top = 5
    Width = 34
    Height = 34
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF000000000000000000088808770FFFFF8F000000000000000088808770
      FF0FF8FF00000000000000088808770FFFFF8FFF0000000000000088808770FF
      0FF88888000000000000088808770FFFFF8FFF8F00000000000088808770FF0F
      F8FFF8FF0000000000088808770FFFFF88888888000000000088808770FF0FF8
      FFF8FFFF00000000088808770FFFFF8FFF8FFFFF0000000088808770FF0FF8FF
      F8FFFFFF000000088808770FFFFF8FFF8FFFFFF800000088808770FF0FF8FFF8
      FFFFFF8F0000088808770FFFFF8FFF8FFFFFF8FF000088808770FF0FF8FFF8FF
      FFFF8FFF00088808770FFFFF88888888888888880088808770FF0FF8FFFFFFFF
      FFFFFFFF088808770FFFFF88888888888888888800008770FF0FF8FFFFFFFF8F
      FFFF8FF80008770FFFFF8FFFFFFFF88888888888008770FF0FF8FFFFFFFF8FFF
      FF8FF8FF08770FFFFF77777777777777777777778770FF0FF7FFFFFFFFFFFFFF
      FFFFFFFF770FFFFF7F000000000000FF0000000070FF0FF7FF00000F00000000
      0F00000F0FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFF0FF7777777777777777777
      77777777FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFF0000FFFE0000FFFC0000FFF80000FFF00000FFE00000FFC00000
      FF800000FF000000FE000000FC000000F8000000F0000000E0000000C0000000
      800000000000000000000000C000000080000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF}
  end
  object bTitulo: TATLabel
    Left = 4
    Top = 130
    Width = 729
    Height = 13
    Caption = 'Pedidos Dispon'#237'veis'
    Space = 5
  end
  object XPPanel1: TXPPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 46
    Align = alTop
    Direction = xdStretchImage
    Color = clHighlight
    ColorEnd = clWhite
    object Image1: TImage
      Left = 698
      Top = 5
      Width = 34
      Height = 34
      Picture.Data = {
        055449636F6E0000010001002020100000000000E80200001600000028000000
        2000000040000000010004000000000080020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF0000000000000000000888087090FFFF8F000000000000000088808709
        900FF8FF00000000000000088808709990000000000000000000008880870999
        9999999000000000000008880870999999999990000000000000888087099999
        9999999000000000000888087099999999999998000000000088808770899999
        9999999800000000088808770FF89999999999980000000088808770FF0F8999
        99999998000000088808770FFFFF88999888888F00000088808770FF0FF8FF89
        98FFFF8F0000088808770FFFFF8FFF0898FFF8FF000088808770FF0FF8FFF8FF
        88FF8FFF00088808770FFFFF88888888888888880088808770FF0FF8FFFFFFFF
        FFFFFFFF088808770FFFFF88888888888888888800008770FF0FF8FFFFFFFF8F
        FFFF8FF80008770FFFFF8FFFFFFFF88888888888008770FF0FF8FFFFFFFF8FFF
        FF8FF8FF08770FFFFF77777777777777777777778770FF0FF7FFFFFFFFFFFFFF
        FFFFFFFF770FFFFF7F000000000000FF0000000070FF0FF7FF00000F00000000
        0F00000F0FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFF0FF7777777777777777777
        77777777FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFF0000FFFE0000FFFC0000FFF80000FFF00000FFE00000FFC00000
        FF800000FF000000FE000000FC000000F8000000F0000000E0000000C0000000
        800000000000000000000000C000000080000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF}
    end
    object RxLabel1: TRxLabel
      Left = 8
      Top = 3
      Width = 93
      Height = 21
      Caption = 'NOTA FISCAL'
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
      Width = 245
      Height = 18
      Caption = 'Impress'#227'o das notas fiscais de Entrada.'
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
  end
  object Grade: TRxDBGrid
    Left = 6
    Top = 148
    Width = 729
    Height = 329
    DataSource = Dados.dsPedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    MultiSelect = True
    Columns = <
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido N'#186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Title.Caption = 'Processo N'#186
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Natureza_Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Natureza'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor_Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Fornecedor'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DI'
        Title.Alignment = taCenter
        Title.Caption = 'DI N'#186
        Width = 96
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_DI'
        Title.Alignment = taCenter
        Title.Caption = 'Data DI'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_TotalNota'
        Title.Alignment = taCenter
        Title.Caption = 'Total Nota'
        Width = 119
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 482
    Width = 741
    Height = 38
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object lProgresso: TLabel
      Left = 8
      Top = 4
      Width = 148
      Height = 13
      AutoSize = False
      Caption = 'Gerando as Notas. . . Aguarde'
      Visible = False
    end
    object lFormulario: TLabel
      Left = 93
      Top = 20
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Formul'#225'rios'
      Visible = False
    end
    object bSair: TButton
      Left = 674
      Top = 1
      Width = 66
      Height = 36
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bGerar: TButton
      Left = 592
      Top = 1
      Width = 82
      Height = 36
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Gerar Notas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bGerarClick
    end
    object bTudo: TButton
      Left = 510
      Top = 1
      Width = 82
      Height = 36
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bTudoClick
    end
    object ProgressoNF: TProgressBar
      Left = 159
      Top = 3
      Width = 348
      Height = 16
      Min = 0
      Max = 100
      TabOrder = 3
      Visible = False
    end
    object Progresso: TProgressBar
      Left = 159
      Top = 20
      Width = 348
      Height = 16
      Min = 0
      Max = 100
      TabOrder = 4
      Visible = False
    end
  end
  object cInfComplementares: TDBMemo
    Left = 298
    Top = 10
    Width = 47
    Height = 28
    Hint = '   Pressione ( CTRL+ENTER ) para inserir uma linha.   '
    Color = clWhite
    DataField = 'Inf_Complementares'
    DataSource = dmFiscal.dsNotas
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    Visible = False
  end
  object cDataEmissao: TDateEdit
    Left = 122
    Top = 54
    Width = 110
    Height = 21
    CheckOnExit = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    YearDigits = dyFour
    TabOrder = 4
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 54
    Width = 112
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data de Emiss'#227'o'
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
  object cDataEntradaSaida: TDateEdit
    Left = 122
    Top = 77
    Width = 110
    Height = 21
    CheckOnExit = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    YearDigits = dyFour
    TabOrder = 6
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 77
    Width = 112
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data Entrada/Sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object StaticText3: TStaticText
    Left = 8
    Top = 100
    Width = 112
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Hora da Emiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cHora: TMaskEdit
    Left = 122
    Top = 100
    Width = 51
    Height = 21
    EditMask = '99:99;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 5
    ParentFont = False
    TabOrder = 9
    Text = '  :  '
  end
  object tTabela: TMSTable
    Connection = Dados.Banco
    Left = 520
    Top = 8
  end
  object ImprimeBase: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
        'SELECT * FROM Impressao WHERE (Imprimir = 1) ORDER BY Linha,Colu' +
        'na'
      ''
      ''
      '')
    FetchRows = 1
    Left = 488
    Top = 8
    object ImprimeBaseReg: TSmallintField
      FieldName = 'Reg'
    end
    object ImprimeBaseTipoNota: TSmallintField
      FieldName = 'TipoNota'
    end
    object ImprimeBaseTabela: TStringField
      FieldName = 'Tabela'
      Size = 30
    end
    object ImprimeBaseCampo: TStringField
      FieldName = 'Campo'
      Size = 30
    end
    object ImprimeBaseTamanho: TSmallintField
      FieldName = 'Tamanho'
    end
    object ImprimeBaseLinha: TSmallintField
      FieldName = 'Linha'
    end
    object ImprimeBaseColuna: TSmallintField
      FieldName = 'Coluna'
    end
    object ImprimeBaseTipo: TStringField
      FieldName = 'Tipo'
      Size = 15
    end
    object ImprimeBaseLinha_Memo: TSmallintField
      FieldName = 'Linha_Memo'
    end
    object ImprimeBaseMascara: TStringField
      FieldName = 'Mascara'
      Size = 25
    end
    object ImprimeBaseDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object ImprimeBaseImprimir: TBooleanField
      FieldName = 'Imprimir'
    end
    object ImprimeBaseValor_Padrao: TStringField
      FieldName = 'Valor_Padrao'
      Size = 50
    end
    object ImprimeBasePosicao: TStringField
      FieldName = 'Posicao'
      FixedChar = True
      Size = 1
    end
    object ImprimeBaseSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
    end
  end
  object ImprimeItens: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
        'SELECT * FROM Impressao WHERE (Imprimir = 1) ORDER BY Linha,Colu' +
        'na'
      '')
    FetchRows = 1
    Left = 456
    Top = 8
    object ImprimeItensReg: TSmallintField
      FieldName = 'Reg'
    end
    object ImprimeItensTipoNota: TSmallintField
      FieldName = 'TipoNota'
    end
    object ImprimeItensTabela: TStringField
      FieldName = 'Tabela'
      Size = 30
    end
    object ImprimeItensCampo: TStringField
      FieldName = 'Campo'
      Size = 30
    end
    object ImprimeItensTamanho: TSmallintField
      FieldName = 'Tamanho'
    end
    object ImprimeItensLinha: TSmallintField
      FieldName = 'Linha'
    end
    object ImprimeItensColuna: TSmallintField
      FieldName = 'Coluna'
    end
    object ImprimeItensTipo: TStringField
      FieldName = 'Tipo'
      Size = 15
    end
    object ImprimeItensLinha_Memo: TSmallintField
      FieldName = 'Linha_Memo'
    end
    object ImprimeItensMascara: TStringField
      FieldName = 'Mascara'
      Size = 25
    end
    object ImprimeItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object ImprimeItensImprimir: TBooleanField
      FieldName = 'Imprimir'
    end
    object ImprimeItensValor_Padrao: TStringField
      FieldName = 'Valor_Padrao'
      Size = 50
    end
    object ImprimeItensPosicao: TStringField
      FieldName = 'Posicao'
      FixedChar = True
      Size = 1
    end
    object ImprimeItensSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
    end
  end
  object ImprimeTopo: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
        'SELECT * FROM Impressao WHERE (Imprimir = 1) ORDER BY Linha,Colu' +
        'na'
      '')
    FetchRows = 1
    Left = 424
    Top = 8
    object ImprimeTopoReg: TSmallintField
      FieldName = 'Reg'
    end
    object ImprimeTopoTipoNota: TSmallintField
      FieldName = 'TipoNota'
    end
    object ImprimeTopoTabela: TStringField
      FieldName = 'Tabela'
      Size = 30
    end
    object ImprimeTopoCampo: TStringField
      FieldName = 'Campo'
      Size = 30
    end
    object ImprimeTopoTamanho: TSmallintField
      FieldName = 'Tamanho'
    end
    object ImprimeTopoLinha: TSmallintField
      FieldName = 'Linha'
    end
    object ImprimeTopoColuna: TSmallintField
      FieldName = 'Coluna'
    end
    object ImprimeTopoTipo: TStringField
      FieldName = 'Tipo'
      Size = 15
    end
    object ImprimeTopoLinha_Memo: TSmallintField
      FieldName = 'Linha_Memo'
    end
    object ImprimeTopoMascara: TStringField
      FieldName = 'Mascara'
      Size = 25
    end
    object ImprimeTopoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object ImprimeTopoImprimir: TBooleanField
      FieldName = 'Imprimir'
    end
    object ImprimeTopoValor_Padrao: TStringField
      FieldName = 'Valor_Padrao'
      Size = 50
    end
    object ImprimeTopoPosicao: TStringField
      FieldName = 'Posicao'
      FixedChar = True
      Size = 1
    end
    object ImprimeTopoSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
    end
  end
  object DataSource1: TDataSource
    DataSet = tTabela
    Left = 552
    Top = 8
  end
  object tChecaData: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Data_Emissao) AS Data_Emissao FROM NotasFiscais'
      '')
    FetchRows = 1
    Left = 592
    Top = 8
    object tChecaDataData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      ReadOnly = True
    end
  end
  object TabEnter1: TTabEnter
    ClassNotAffected.Strings = (
      'TMemo'
      'TButton'
      'TBitBtn')
    Enabled = True
    Left = 360
    Top = 8
  end
end
