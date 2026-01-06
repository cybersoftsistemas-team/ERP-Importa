object Contabilidade_LancamentosDiferenca: TContabilidade_LancamentosDiferenca
  Left = 377
  Top = 106
  BorderStyle = bsToolWindow
  Caption = 'Contabilidade_LancamentosDiferenca'
  ClientHeight = 650
  ClientWidth = 617
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
  object Panel1: TPanel
    Left = 0
    Top = 620
    Width = 617
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      617
      30)
    object bSair: TButton
      Left = 542
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bOK: TButton
      Left = 467
      Top = 1
      Width = 74
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&OK'
      TabOrder = 1
      OnClick = bOKClick
    end
  end
  object Grade: TDBGrid
    Left = 6
    Top = 72
    Width = 603
    Height = 541
    DataSource = dstDiferenca
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lote'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debitos'
        Title.Alignment = taCenter
        Title.Caption = 'D'#233'bitos'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Creditos'
        Title.Alignment = taCenter
        Title.Caption = 'Cr'#233'ditos'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 154
        Visible = True
      end
      item
        Color = 14540287
        Expanded = False
        FieldName = 'Diferenca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Diferen'#231'a'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 145
        Visible = True
      end>
  end
  object StaticText2: TStaticText
    Left = 7
    Top = 14
    Width = 40
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'M'#234's'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Transparent = False
    StyleElements = []
  end
  object cAno: TRxSpinEdit
    Left = 49
    Top = 38
    Width = 136
    Height = 21
    Value = 2012.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object cMes: TComboBox
    Left = 49
    Top = 14
    Width = 136
    Height = 21
    DropDownCount = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object bFiltro: TBitBtn
    Left = 258
    Top = 14
    Width = 76
    Height = 43
    Caption = '&Filtrar'
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B004000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC700CE223A00001700CB00CEFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFC000D4ADC5003B5300CC00D8FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF6D0081C8D6855462006C006DFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF640078E0F68CFFFF45BABB72607600650067FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF630077D3
      F07BFFFF91F5F540BDBD6CA7A8715370006E0079FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF550069E2FE87FFFF82FFFF
      75E9E995D7D7549A9A5AAFAF79617D00540054FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF73007DF3FF91FFFF8BEEEE73F0F05DCACA93
      C3C33B83834397975AA6A66C68840077007AFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FF57005739564387871A29294016162428283876767E74748268
      687003030C0000003E3E0007240056005BFF00FFFF00FFFF00FFFF00FFFF00FF
      6D046D182E188484841E1E28EAEAEAE0E0E0F8F8F8B0B0B0AEAEAEF1F1F14848
      484242446D6D7579797E637963660066FF00FFFF00FFFF00FF7200725B785B93
      9493353535C7C7C7D7D7D7D4D4D4A8A8A8A7A7A7DBDBDB7A7A7A7A7A7A777777
      4545458888888586855B785B720072FF00FFFF00FF1F061F8F998F7777774949
      49BABABAA8A8A8BABABAD4D4D4D1D1D1F7F7F7343434B8B8B8B2B2B215151590
      90908181818E988E1F061FFF00FFFF00FFCA00CA385038595D59717171B3B3B3
      AEAEAEEEEEEECFCFCFCFCFCFF7F7F7464646F0F0F0A6A6A69C9C9C2D2D2D7C8A
      7C354D35CA00CAFF00FFFF00FFFF00FFDA00DA0E0F0ED6D8D6B9B9B9FBFBFBB8
      B8B8BFBFBFBDBDBDA0A0A0A6A6A6EFEFEF9D9D9DACACAC283428600160C600C6
      FF00FFFF00FFFF00FFFF00FF7A007AB9C7B9D3D4D3E3E3E3B3B3B3B5B5B5B1B1
      B1FFFFFF000000C5C5C5E6E6E6D1D1D1A1A1A1587058D500D5FF00FFFF00FFFF
      00FFFF00FFF400F46D546DE6ECE6DFDFDFF8F8F8FFFFFF3636365656563B3B3B
      414141FFFFFFE9E9E9EBEBEBE9E9E9889388580958FF00FFFF00FFFF00FFFF00
      FFF800F8385A38212121212121141414181818F8F8F83A3A3AFFFFFFFFFFFFAF
      AFAF7575757C7C7C3737375C5F5C010801E100E1FF00FFFF00FFFF00FF520552
      5E6B5E919191ACACACAEAEAEB3B3B3DEDEDE161616383838313131A0A0A0BEBE
      BECDCDCDFFFFFFF8F8F8B3C8B3590059FF00FFFF00FFFF00FF8D028D15431586
      9186A9ACA9A1A1A1BDBDBDE7E7E7F3F3F3EEEEEEFBFBFBFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF8AA18ABB00BBFF00FFFF00FFFF00FFFF00FFFA00FA3B003B6968
      69607760C1C6C1F7F7F7EDEDEDEBEBEBFFFFFFFFFFFFB4C8B4C2DBC2664E6626
      0326C500C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA00CAA800A8
      502D50404540464646464646393C39514951A200A2930093E800E8FF00FFFF00
      FFFF00FFFF00FFFF00FF}
    TabOrder = 5
    OnClick = bFiltroClick
  end
  object cTodosMes: TCheckBox
    Left = 187
    Top = 16
    Width = 55
    Height = 17
    Caption = 'Todos'
    TabOrder = 6
    OnClick = cTodosMesClick
  end
  object StaticText1: TStaticText
    Left = 7
    Top = 37
    Width = 40
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Ano'
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
  object cTodosAno: TCheckBox
    Left = 187
    Top = 40
    Width = 55
    Height = 17
    Caption = 'Todos'
    TabOrder = 8
    OnClick = cTodosAnoClick
  end
  object tDiferenca: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT Data'
      '      ,Lote'
      
        '      ,Debitos   = SUM(CASE WHEN Conta_Debito  <> '#39#39' THEN Valor ' +
        'END)'
      
        '      ,Creditos  = SUM(CASE WHEN Conta_Credito <> '#39#39' THEN Valor ' +
        'END)'
      
        '      ,Diferenca = (SELECT SUM(Valor) FROM Lancamentos Lan2 WHER' +
        'E Conta_Debito  <> '#39' AND Lan2.Data = Lan.Data) -'
      
        '                   (SELECT SUM(Valor) FROM Lancamentos Lan2 WHER' +
        'E Conta_Credito <> '#39' AND Lan2.Data = Lan.Data)'
      'FROM Lancamentos Lan'
      'GROUP BY Data, Lote'
      'ORDER BY Data, Lote')
    FetchRows = 1
    Left = 385
    Top = 15
    object tDiferencaData: TDateField
      Alignment = taCenter
      FieldName = 'Data'
    end
    object tDiferencaLote: TLargeintField
      Alignment = taCenter
      FieldName = 'Lote'
      DisplayFormat = '000'
    end
    object tDiferencaDebitos: TCurrencyField
      FieldName = 'Debitos'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tDiferencaCreditos: TCurrencyField
      FieldName = 'Creditos'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tDiferencaDiferenca: TCurrencyField
      FieldName = 'Diferenca'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
  end
  object dstDiferenca: TDataSource
    DataSet = tDiferenca
    Left = 448
    Top = 15
  end
end
