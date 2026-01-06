object Fiscal_SaldoICMSIPI: TFiscal_SaldoICMSIPI
  Left = 201
  Top = 79
  BorderStyle = bsDialog
  Caption = 'Fiscal_SaldoICMSIPI'
  ClientHeight = 444
  ClientWidth = 1041
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
    1041
    444)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1041
    Height = 45
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 133
    Height = 21
    Caption = 'APURA'#199#195'O FISCAL'
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
    Width = 281
    Height = 18
    Caption = 'Ajustes dos Saldos do ICMS/ IPI/ PIS/ COFINS'
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
    Left = 1001
    Top = 5
    Width = 35
    Height = 32
    Anchors = [akTop, akRight]
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF00000000000000000000000000000000000F7FFFFF7FFF0FF00FF00FF0
      F0FFFFF00F7777777FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F7777777FFFFFFFFFFFFFFF
      FF0FFFF00F7FFFFF7FF0FFF0F0F0F0F0FF00FF000F7FFFFF7FF0FFF0F0F0F0F0
      F0FFF0F00F7FFFFF7FF0F0707000F00FF0FFF0F00F7FFFFF7FF00F00007070F0
      F0FFF0F00F7FFFFF7FF0FF0000377070FF00FF000F7777777FFFFF0003B3B707
      8FFFFFF00FFFFFFFFFFFFFF03B3B3B3078FFFFF00FFFFCFFFFFFFFF0B3B3B3B9
      078FFFF00F777CC77FFFFFFB3B3B3B999078FFF00F7FCCCF7FF0FF00B3B3B389
      990780F00F7FCCCC7FF0FF0F3B3B9998999078F00F7CCCCCCFF00F00F3B89999
      899907800F7CCFFCCCF0FF0FFB998999989990700F7CCFFFCCF00F00F9999899
      998999070F777777CCCFFFFFFF999989999899900FFFFFFFFCCCFFFFFFF99998
      999989990FFFFCFFFCCCCFFFFFFF9999899998990F777CC77FCCCCFFFFFFF999
      989999890F7FCCCF7FFCCCC0F0F0FF99998999980F7FCCCC7FF0F0F0F0F0FF09
      999899990F7CCCCCCFFFF0F000F0F00F999989990F7CCFFCCCFFF0F0F0F00F0F
      099998990F7CCFFFCCFFF0FF0FF0FF0F009999890F777777CCCFFFFFFFFFFFFF
      FFF999980FFFFFFFFCCCFFFFFFFFFFFFFFFF99990000000000CCC00000000000
      00000099FFFFFFFF800000018000000180000001800000018000000180000001
      8000000180000001800000018000000180000001800000018000000180000001
      8000000180000001800000018000000180000000800000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      FFC7FFFC}
  end
  object Panel1: TPanel
    Left = 0
    Top = 413
    Width = 1041
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1041
      31)
    object bSair: TButton
      Left = 969
      Top = 1
      Width = 72
      Height = 30
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bICMS: TButton
      Left = 1
      Top = 1
      Width = 136
      Height = 30
      Caption = 'Gerar Apura'#231#227'o I&CMS'
      TabOrder = 1
      OnClick = bICMSClick
    end
    object bIPI: TButton
      Left = 136
      Top = 1
      Width = 136
      Height = 30
      Caption = 'Gerar Apura'#231#227'o I&PI'
      TabOrder = 2
      OnClick = bIPIClick
    end
    object bPisCOfins: TButton
      Left = 271
      Top = 1
      Width = 170
      Height = 30
      Caption = 'Gerar Apura'#231#227'o PIS/COFINS'
      TabOrder = 3
      OnClick = bPisCOfinsClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 50
    Width = 330
    Height = 358
    Caption = 'Saldo ICMS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object GradeICMS: TRxDBGrid
      Left = 2
      Top = 15
      Width = 326
      Height = 341
      Align = alClient
      BorderStyle = bsNone
      Color = 12189695
      DataSource = dsSaldoICMS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      RowColor2 = 16776176
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Mes_Ano'
          Title.Alignment = taCenter
          Title.Caption = 'M'#234's/Ano'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
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
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 115
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 342
    Top = 50
    Width = 330
    Height = 358
    Caption = 'Saldo IPI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object GradeIPI: TRxDBGrid
      Left = 2
      Top = 15
      Width = 326
      Height = 341
      Align = alClient
      BorderStyle = bsNone
      Color = 12189695
      DataSource = dsSaldoIPI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      RowColor2 = 16776176
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Mes_Ano'
          Title.Alignment = taCenter
          Title.Caption = 'M'#234's/Ano'
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
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 115
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 678
    Top = 50
    Width = 357
    Height = 358
    Caption = 'Saldo PIS/CONFINS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object RxDBGrid1: TRxDBGrid
      Left = 2
      Top = 15
      Width = 353
      Height = 341
      Align = alClient
      BorderStyle = bsNone
      Color = 12189695
      DataSource = dsSaldoPIS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      RowColor2 = 16776176
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Mes_Ano'
          Title.Alignment = taCenter
          Title.Caption = 'M'#234's/Ano'
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
          FieldName = 'Saldo_PIS'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo PIS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo_COFINS'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo COFINS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 137
          Visible = True
        end>
    end
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 250
    Top = 5
  end
  object SaldoICMS: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SaldoICMS'
      '  (Mes_Ano, Operacao, Saldo)'
      'VALUES'
      '  (:Mes_Ano, :Operacao, :Saldo)')
    SQLDelete.Strings = (
      'DELETE FROM SaldoICMS'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano AND Operacao = :Old_Operacao')
    SQLUpdate.Strings = (
      'UPDATE SaldoICMS'
      'SET'
      '  Mes_Ano = :Mes_Ano, Operacao = :Operacao, Saldo = :Saldo'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano AND Operacao = :Old_Operacao')
    SQLRefresh.Strings = (
      
        'SELECT SaldoICMS.Mes_Ano, SaldoICMS.Operacao, SaldoICMS.Saldo FR' +
        'OM SaldoICMS'
      
        'WHERE SaldoICMS.Mes_Ano = :Mes_Ano AND SaldoICMS.Operacao = :Ope' +
        'racao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * '
      
        '      ,Descricao = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Inc' +
        'entivosFiscais WHERE Codigo = Operacao)'
      'FROM SaldoICMS')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    OnNewRecord = SaldoICMSNewRecord
    Active = True
    Left = 291
    Top = 8
    object SaldoICMSMes_Ano: TStringField
      DisplayWidth = 8
      FieldName = 'Mes_Ano'
      Origin = 'SaldoICMS.Mes_Ano'
      EditMask = '##/####;0'
      FixedChar = True
      Size = 6
    end
    object SaldoICMSOperacao: TSmallintField
      DisplayWidth = 10
      FieldName = 'Operacao'
      Origin = 'SaldoICMS.Operacao'
    end
    object SaldoICMSSaldo: TCurrencyField
      DisplayWidth = 17
      FieldName = 'Saldo'
      Origin = 'SaldoICMS.Saldo'
      DisplayFormat = ',##0.00'
    end
    object SaldoICMSDescricao: TStringField
      FieldName = 'Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 15
    end
  end
  object dsSaldoICMS: TDataSource
    DataSet = SaldoICMS
    Left = 323
    Top = 8
  end
  object SaldoIPI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SaldoIPI'
      '  (Mes_Ano, Operacao, Saldo)'
      'VALUES'
      '  (:Mes_Ano, :Operacao, :Saldo)')
    SQLDelete.Strings = (
      'DELETE FROM SaldoIPI'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano AND Operacao = :Old_Operacao')
    SQLUpdate.Strings = (
      'UPDATE SaldoIPI'
      'SET'
      '  Mes_Ano = :Mes_Ano, Operacao = :Operacao, Saldo = :Saldo'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano AND Operacao = :Old_Operacao')
    SQLRefresh.Strings = (
      
        'SELECT SaldoIPI.Mes_Ano, SaldoIPI.Operacao, SaldoIPI.Saldo FROM ' +
        'SaldoIPI'
      
        'WHERE SaldoIPI.Mes_Ano = :Mes_Ano AND SaldoIPI.Operacao = :Opera' +
        'cao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * '
      
        '      ,Descricao = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Inc' +
        'entivosFiscais WHERE Codigo = Operacao)'
      'FROM SaldoIPI')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    OnNewRecord = SaldoIPINewRecord
    Active = True
    Left = 371
    Top = 8
    object SaldoIPIMes_Ano: TStringField
      FieldName = 'Mes_Ano'
      Origin = 'SaldoIPI.Mes_Ano'
      EditMask = '##/####;0'
      FixedChar = True
      Size = 6
    end
    object SaldoIPIOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'SaldoIPI.Operacao'
      DisplayFormat = ',##0.00'
    end
    object SaldoIPISaldo: TCurrencyField
      FieldName = 'Saldo'
      Origin = 'SaldoIPI.Saldo'
      DisplayFormat = ',##0.00'
    end
    object SaldoIPIDescricao: TStringField
      FieldName = 'Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 15
    end
  end
  object dsSaldoIPI: TDataSource
    DataSet = SaldoIPI
    Left = 403
    Top = 8
  end
  object SaldoPIS: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SaldoPISCOFINS'
      '  (Mes_Ano, Saldo_PIS, Saldo_COFINS)'
      'VALUES'
      '  (:Mes_Ano, :Saldo_PIS, :Saldo_COFINS)')
    SQLDelete.Strings = (
      'DELETE FROM SaldoPISCOFINS'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano')
    SQLUpdate.Strings = (
      'UPDATE SaldoPISCOFINS'
      'SET'
      
        '  Mes_Ano = :Mes_Ano, Saldo_PIS = :Saldo_PIS, Saldo_COFINS = :Sa' +
        'ldo_COFINS'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano')
    SQLRefresh.Strings = (
      
        'SELECT SaldoPISCOFINS.Mes_Ano, SaldoPISCOFINS.Saldo_PIS, SaldoPI' +
        'SCOFINS.Saldo_COFINS FROM SaldoPISCOFINS'
      'WHERE SaldoPISCOFINS.Mes_Ano = :Mes_Ano ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM SaldoPISCOFINS')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    OnNewRecord = SaldoPISNewRecord
    Left = 451
    Top = 8
    object SaldoPISMes_Ano: TStringField
      FieldName = 'Mes_Ano'
      Origin = 'SaldoPISCOFINS.Mes_Ano'
      EditMask = '##/####;0'
      FixedChar = True
      Size = 6
    end
    object SaldoPISSaldo_PIS: TCurrencyField
      FieldName = 'Saldo_PIS'
      Origin = 'SaldoPISCOFINS.Saldo_PIS'
      DisplayFormat = ',##0.00'
    end
    object SaldoPISSaldo_COFINS: TCurrencyField
      FieldName = 'Saldo_COFINS'
      Origin = 'SaldoPISCOFINS.Saldo_COFINS'
      DisplayFormat = ',##0.00'
    end
  end
  object dsSaldoPIS: TDataSource
    DataSet = SaldoPIS
    Left = 483
    Top = 8
  end
end
