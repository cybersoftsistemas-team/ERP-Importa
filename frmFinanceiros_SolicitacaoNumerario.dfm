object Financeiros_SolicitacaoNumerario: TFinanceiros_SolicitacaoNumerario
  Left = 384
  Top = 100
  BorderStyle = bsDialog
  Caption = 'Financeiros_SolicitacaoNumerario'
  ClientHeight = 532
  ClientWidth = 565
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
  object XPPanel1: TXPPanel
    Left = 0
    Top = 0
    Width = 565
    Height = 46
    Align = alTop
    Direction = xdStretchImage
    Color = clHighlight
    ColorEnd = clWhite
    DesignSize = (
      565
      46)
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
      Width = 232
      Height = 19
      Caption = 'Solicita'#231#227'o de N'#250'merarios a Clientes.'
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
    object iJatoTinta: TImage
      Left = 527
      Top = 6
      Width = 34
      Height = 33
      Anchors = [akTop, akRight]
      Picture.Data = {
        055449636F6E0000010001002020100000000000E80200001600000028000000
        2000000040000000010004000000000080020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000008880000800000000000000000000008880880080
        8000000000000000008800080008880F0800000000000000080880700700807F
        F08000000000000080F00870077007F7FF0800000000000808F7087007707FFF
        7FF080000000008088F70870077077FFFFFF08000000080888F708FF0F70FF7F
        F77FF0000000808888F70FF0FF07FFFFFF77FF000008088888070F0FF07F8FF7
        7FF7FF000000888888F000FF07F8F8FF77FFF0000000888887F800F087FF8F8F
        F7FF0000000088888F778000087FF8F8FFF08000000088887F7878000087FF8F
        8F08080000008887FF878780000877F8F00808800000887FF7F8787800008877
        00F80800000087FF7F7F8787800008800F708000000007F7F7F7F87878000000
        F70800000000087F7F7F7F878780000F7080000000000837F7F7F7F8787800F7
        08000000000008837F7F7F7F87878080000000000000007837F7F7F7F8787088
        0000000000000007837F7F7F7F87078800000000000000007837F7F7F7F80770
        000000000000000007837F7F7F7F80700000000000000000007837F7F7F7F800
        00000000000000000007837F7F7F7000000000000000000000007837F7F70000
        0000000000000000000008087F70000000000000000000000000000008000000
        00000000FFFFFFFFFFFFFFFFFFFF1EFFFFFC0C7FFFC8003FFF80001FFF00000F
        FE000007FC000003F8000003F0000001E0000001E0000003E0000007E0000007
        E0000003E0000001E0000003E0000007E000000FF000001FF000003FF000007F
        F800007FFC00007FFE0000FFFF0000FFFF8001FFFFC003FFFFE007FFFFF00FFF
        FFFE1FFF}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 502
    Width = 565
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      565
      30)
    object bSair: TButton
      Left = 498
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
    object bImprimir: TButton
      Left = 432
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
  end
  object StaticText4: TStaticText
    Left = 7
    Top = 52
    Width = 65
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Processo N'#186
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cProcesso: TRxDBLookupCombo
    Left = 74
    Top = 52
    Width = 120
    Height = 21
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsProcessosDOC
    ParentFont = False
    TabOrder = 3
    OnChange = cProcessoChange
  end
  object Grade: TRxDBGrid
    Left = 7
    Top = 76
    Width = 551
    Height = 420
    DataSource = dstPagamentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    MultiSelect = True
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Classificacao'
        Title.Alignment = taCenter
        Title.Caption = 'Classifica'#231#227'o'
        Width = 345
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Custo'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object TabEnter1: TTabEnter
    ClassNotAffected.Strings = (
      'TMemo'
      'TButton'
      'TBitBtn')
    Enabled = True
    Left = 264
    Top = 8
  end
  object tPagamentos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Numero,'
        '       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Clas' +
        'sificacaoFinanceira.Codigo = Classificacao)) AS Classificacao,'
        '       (SELECT Custo     FROM ClassificacaoFinanceira WHERE(Clas' +
        'sificacaoFinanceira.Codigo = Classificacao)) AS Custo,'
      '       Data_Vencimento,'
      '       Valor_Operacao AS Valor,'
      '       Processo'
      'FROM PagarReceber')
    Active = True
    Left = 304
    Top = 8
    object tPagamentosNumero: TLargeintField
      Alignment = taCenter
      FieldName = 'Numero'
      Origin = 'PagarReceber.Numero'
    end
    object tPagamentosClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tPagamentosValor: TCurrencyField
      DisplayWidth = 14
      FieldName = 'Valor'
      Origin = 'PagarReceber.Valor_Operacao'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tPagamentosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'PagarReceber.Processo'
      Size = 15
    end
    object tPagamentosCusto: TBooleanField
      FieldName = 'Custo'
      Origin = '.'
      ReadOnly = True
    end
  end
  object dstPagamentos: TDataSource
    DataSet = tPagamentos
    Left = 336
    Top = 8
  end
end
