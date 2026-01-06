object Impressao_Financeiros_Boleto: TImpressao_Financeiros_Boleto
  Left = 350
  Top = 175
  ActiveControl = bSair
  BorderStyle = bsDialog
  Caption = 'Impressao_Financeiros_Boleto'
  ClientHeight = 439
  ClientWidth = 900
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
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 182
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
    Width = 232
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
    Width = 33
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
  object XPPanel1: TXPPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 46
    Align = alTop
    Direction = xdStretchImage
    Color = clHighlight
    ColorEnd = clWhite
    DesignSize = (
      900
      46)
    object Image1: TImage
      Left = 861
      Top = 6
      Width = 34
      Height = 34
      Anchors = [akTop, akRight]
     
      IncrementalDisplay = True
      Picture.Data = {
        055449636F6E0000010001002020100000000000E80200001600000028000000
        2000000040000000010004000000000080020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF0FFF0FFFFF0FFF0FFFFFFFFFFFFFFFFF0FF0F0FFFFF0F0F
        0FFFFFFFFFF0F00F00FFF0F0F0F00FF0FF00FFFFFFF0F00FFFFFFFF0F0FFFFFF
        FF00F0FFFFF0F00F0F00F000F0F00F0F0F00F0FFFFF0F00F0F00F000F0F00F0F
        0F00F0FFFFF0F00F0F00F000F0F00F0F0F00F0FFFFF0F00F0F00F000F0F00F0F
        0700F0FFFFF0F00F0F00F000F0F007070000F0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7777770000FF07FFFFFFFFFFF77777770000000F
        FFFF07FFFFFFFFFF700000000FFFFFFFFFFF07FFFFFF777700FFFFFFFFFFFFFF
        FFFF07FFFFF800000FFFFFFFFFFFFFFFFFFF07FFFF80FFFFFFFFFFFFFFFFFFFF
        FFFF07FFFF0FFFFFFFFFFFFFFFFFFFFFFFFF07FFFF0FFFFFFFFFFFFFFFFFFFFF
        FFFF07FFFF0FFFFFFFFFFFFFFFFFFFFFFFFF07FFFF0FFFFFFFFFFFFFFFFFFFFF
        FFFF07FFFF0FFCCFFFCFFCCFCCFFCFFFCFFF07FFFF0FFCFCFCFCFCFFCFFFCFFC
        FCFF07FFFF0FFCCFFCFCFCFFCCFFCFFCFCFF07FFFF0FFCFCFCFCFCFFCFFFCFFC
        FCFF07FFFF0FFCCFFFCFFCFFCCFCCCFFCFFF07FFFF0FFFFFFFFFFFFFFFFFFFFF
        FFFF07FFFF0FFFFFFFFFFFFFFFFFFFFFFFFF07FFFF0FFFFFFFFFFFFFFFFFFFFF
        FFFF08FFFF0000000000000000000000000008FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBBEEFFFFB1F47FE93AA6CFE9FEBFCBE948A54B
        E948A54BE948A54BE948A50BE948A00BFFFFFFFFFFFF0003FF800003FF000003
        F0000003E0000003C0000003C0000003C0000003C0000003C0000003C0000003
        C0000003C0000003C0000003C0000003C0000003C0000003C0000003C0000003
        FFFFFFFF}
    end
    object RxLabel1: TRxLabel
      Left = 8
      Top = 3
      Width = 195
      Height = 21
      Caption = 'IMPRESS'#195'O - FINANCEIROS'
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
      Width = 201
      Height = 18
      Caption = 'Impress'#227'o de Boletos Banc'#225'rios.'
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
    Left = 3
    Top = 49
    Width = 894
    Height = 357
    DataSource = dstBoletos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
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
        FieldName = 'Registro'
        Title.Alignment = taCenter
        Title.Caption = 'Boleto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'T'#237'tulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Banco'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Especie_Documento'
        Title.Alignment = taCenter
        Title.Caption = 'Documento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nosso_Numero'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Sacado'
        Title.Alignment = taCenter
        Title.Caption = 'Sacado'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 276
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Vencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Vencto.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Documento'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 409
    Width = 900
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      900
      30)
    object bSair: TButton
      Left = 833
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImprimir: TBitBtn
      Left = 750
      Top = 1
      Width = 83
      Height = 28
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = '&Imprimir'
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = bImprimirClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDD000DDD
        DDDDDDDD0078800DDDDDDD00778008800DDDD07788788008800DD88877788880
        080D887777788888800D8F7777F8888888808F77FF77788888808FFF77997778
        88808F77AA7778807880D88F777887F0788DDDD88F87FFFF0DDDDDDDD88FFFFF
        F0DDDDDDDDD8FFFFFF00DDDDDDDD8FFF88DDDDDDDDDDD888DDDD}
      Layout = blGlyphRight
      Spacing = 8
    end
    object bSelTodas: TButton
      Left = 556
      Top = 1
      Width = 97
      Height = 28
      Cursor = crHandPoint
      Hint = '  Seleciona todas as duplicatas  '
      Anchors = [akTop, akRight]
      Caption = '&Selecionar Todas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSelTodasClick
    end
    object bPesquisa: TButton
      Left = 482
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object Button1: TButton
      Left = 653
      Top = 2
      Width = 97
      Height = 28
      Cursor = crHandPoint
      Hint = '  Seleciona todas as duplicatas  '
      Anchors = [akTop, akRight]
      Caption = '&Desmarcar Todas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object tBoletos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Registro, '
      '       Numero,'
      '       Banco,'
        '       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE Co' +
        'digo = Banco) AS Nome_Banco,'
        '       (SELECT Nome FROM Clientes WHERE Codigo = Sacado) AS Nome' +
        '_Sacado,'
      '       Especie_Documento,'
      '       Nosso_Numero,'
      '       Sacado,'
      '       Data_Vencimento,'
      '       Valor_Documento'
      'FROM   Boletos'
      'WHERE Registro < 100')
    Left = 352
    Top = 8
    object tBoletosRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Boletos.Registro'
    end
    object tBoletosNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'Boletos.Numero'
    end
    object tBoletosBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Boletos.Banco'
    end
    object tBoletosNome_Banco: TStringField
      FieldName = 'Nome_Banco'
      Origin = '.'
      ReadOnly = True
      Size = 30
    end
    object tBoletosNome_Sacado: TStringField
      FieldName = 'Nome_Sacado'
      Origin = '.'
      ReadOnly = True
      Size = 50
    end
    object tBoletosEspecie_Documento: TStringField
      FieldName = 'Especie_Documento'
      Origin = 'Boletos.Especie_Documento'
      Size = 40
    end
    object tBoletosNosso_Numero: TStringField
      FieldName = 'Nosso_Numero'
      Origin = 'Boletos.Nosso_Numero'
      Size = 15
    end
    object tBoletosSacado: TSmallintField
      FieldName = 'Sacado'
      Origin = 'Boletos.Sacado'
    end
    object tBoletosData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'Boletos.Data_Vencimento'
    end
    object tBoletosValor_Documento: TCurrencyField
      FieldName = 'Valor_Documento'
      Origin = 'Boletos.Valor_Documento'
      DisplayFormat = ',##0.00'
    end
  end
  object dstBoletos: TDataSource
    DataSet = tBoletos
    Left = 384
    Top = 8
  end
end
