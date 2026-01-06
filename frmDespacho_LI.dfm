object Despacho_LI: TDespacho_LI
  Left = 452
  Top = 126
  BorderStyle = bsDialog
  Caption = 'Despacho_LI'
  ClientHeight = 655
  ClientWidth = 726
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 726
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 101
    Height = 18
    Caption = 'Solicita'#231#227'o de LI'
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
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 78
    Height = 21
    Caption = 'DESPACHO'
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
  object Pasta: TPageControl
    Left = 5
    Top = 51
    Width = 716
    Height = 568
    ActivePage = TabSheet3
    HotTrack = True
    TabHeight = 24
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Lista'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeSLI: TRxDBGrid
        Left = 0
        Top = 0
        Width = 708
        Height = 499
        Align = alTop
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'Registro'
            Title.Alignment = taCenter
            Title.Caption = '#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'PROCESSO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Invoice'
            Title.Alignment = taCenter
            Title.Caption = 'INVOICE N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 113
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'SLI N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exportador_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'FORNECEDOR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 309
            Visible = True
          end>
      end
      object cPesquisa: TEdit
        Left = 70
        Top = 501
        Width = 618
        Height = 21
        TabOrder = 1
        OnChange = cPesquisaChange
      end
      object StaticText30: TStaticText
        Left = 0
        Top = 501
        Width = 68
        Height = 21
        Alignment = taCenter
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
        TabOrder = 2
        Transparent = False
        StyleElements = []
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Dados Principais'
      Enabled = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        708
        534)
      object bPesqPais: TSpeedButton
        Left = 674
        Top = 48
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqPaisClick
      end
      object bPesqURFDes: TSpeedButton
        Left = 674
        Top = 186
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqURFDesClick
      end
      object bPesqURFEnt: TSpeedButton
        Left = 674
        Top = 209
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqURFEntClick
      end
      object bPesqExp: TSpeedButton
        Left = 674
        Top = 94
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqExpClick
      end
      object bPesqMoe: TSpeedButton
        Left = 674
        Top = 140
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
      end
      object bPesqOrgao: TSpeedButton
        Left = 674
        Top = 255
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqOrgaoClick
      end
      object StaticText51: TStaticText
        Left = 4
        Top = 187
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'URF Despacho'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 24
        Transparent = False
        StyleElements = []
      end
      object StaticText59: TStaticText
        Left = 4
        Top = 26
        Width = 111
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
        TabOrder = 25
        Transparent = False
        StyleElements = []
      end
      object StaticText107: TStaticText
        Left = 4
        Top = 49
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pais Proced'#234'ncia'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 26
        Transparent = False
        StyleElements = []
      end
      object StaticText1: TStaticText
        Left = 285
        Top = 26
        Width = 46
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Invoice'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 27
        Transparent = False
        StyleElements = []
      end
      object StaticText2: TStaticText
        Left = 4
        Top = 210
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'URF Entrada'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 28
        Transparent = False
        StyleElements = []
      end
      object StaticText4: TStaticText
        Left = 4
        Top = 141
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Moeda'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 29
        Transparent = False
        StyleElements = []
      end
      object StaticText5: TStaticText
        Left = 4
        Top = 72
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo de Fornecedor'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 30
        Transparent = False
        StyleElements = []
      end
      object StaticText6: TStaticText
        Left = 4
        Top = 118
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Condi'#231#227'o Mercadoria'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 31
        Transparent = False
        StyleElements = []
      end
      object StaticText7: TStaticText
        Left = 4
        Top = 95
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Exportador'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 32
        Transparent = False
        StyleElements = []
      end
      object DBEdit15: TDBEdit
        Left = 117
        Top = 233
        Width = 210
        Height = 21
        DataField = 'Processo_Anuente'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object cDias: TDBEdit
        Left = 607
        Top = 371
        Width = 66
        Height = 21
        DataField = 'Dias_LimitePgto'
        DataSource = dmDespacho.dsSLI
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object StaticText8: TStaticText
        Left = 4
        Top = 164
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'INCOTERMS'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 33
        Transparent = False
        StyleElements = []
      end
      object StaticText9: TStaticText
        Left = 4
        Top = 256
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Org'#227'o Anuente'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 34
        Transparent = False
        StyleElements = []
      end
      object StaticText10: TStaticText
        Left = 204
        Top = 3
        Width = 34
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'NCM'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 35
        Transparent = False
        StyleElements = []
      end
      object StaticText11: TStaticText
        Left = 4
        Top = 233
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Processo Anuente'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 36
        Transparent = False
        StyleElements = []
      end
      object StaticText13: TStaticText
        Left = 335
        Top = 233
        Width = 63
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'DrawBack'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 37
        Transparent = False
        StyleElements = []
      end
      object StaticText14: TStaticText
        Left = 4
        Top = 348
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Cobertura Cambial'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 38
        Transparent = False
        StyleElements = []
      end
      object StaticText15: TStaticText
        Left = 4
        Top = 279
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Regime Tributa'#231#227'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 39
        Transparent = False
        StyleElements = []
      end
      object StaticText16: TStaticText
        Left = 4
        Top = 325
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Acordo Tarif'#225'rio'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 40
        Transparent = False
        StyleElements = []
      end
      object StaticText17: TStaticText
        Left = 4
        Top = 302
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Fundamento Legal'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 41
        Transparent = False
        StyleElements = []
      end
      object StaticText18: TStaticText
        Left = 4
        Top = 371
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modalidade Pgto'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 42
        Transparent = False
        StyleElements = []
      end
      object StaticText19: TStaticText
        Left = 512
        Top = 371
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Limite Pgto(Dias)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 43
        Transparent = False
        StyleElements = []
      end
      object DBMemo1: TDBMemo
        Left = 117
        Top = 440
        Width = 556
        Height = 37
        DataField = 'Inf_Complem'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object StaticText20: TStaticText
        Left = 4
        Top = 440
        Width = 111
        Height = 37
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Informa'#231#245'es Complementares'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 44
        Transparent = False
        StyleElements = []
      end
      object cProcesso: TDBLookupComboBox
        Left = 117
        Top = 26
        Width = 166
        Height = 21
        DataField = 'Processo'
        DataSource = dmDespacho.dsSLI
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Processo'
        ListField = 'Processo'
        ListSource = Dados.dsProcessosDOC
        NullValueKey = 46
        ParentFont = False
        TabOrder = 0
        OnClick = cProcessoClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 333
        Top = 26
        Width = 187
        Height = 21
        DataField = 'Invoice'
        DataSource = dmDespacho.dsSLI
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Numero'
        ListField = 'Numero'
        ListSource = Dados.dsInvoice
        NullValueKey = 46
        ParentFont = False
        TabOrder = 1
        OnClick = DBLookupComboBox1Click
      end
      object RxDBComboBox1: TRxDBComboBox
        Left = 117
        Top = 72
        Width = 556
        Height = 21
        DataField = 'Tipo_Fornecedor'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Items.Strings = (
          'Fabricante/Produtor '#233' Exportador'
          'Fabricante/Produtor n'#227'o '#233' Exportador'
          'Fabricante/Produtor '#233' Desconhecido')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object RxDBComboBox2: TRxDBComboBox
        Left = 117
        Top = 118
        Width = 556
        Height = 21
        DataField = 'Condicao_Mercadoria'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum'
          'Material usado')
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          '0'
          '1')
      end
      object cPaisPro: TRxDBLookupCombo
        Left = 117
        Top = 49
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Pais_Procedencia'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Nome'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsPaises
        ParentFont = False
        TabOrder = 3
      end
      object cURFDesp: TRxDBLookupCombo
        Left = 117
        Top = 187
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'URF_Despacho'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsUnidadesRFB
        ParentFont = False
        TabOrder = 9
      end
      object cURFEnt: TRxDBLookupCombo
        Left = 117
        Top = 210
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'URF_Entrada'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsUnidadesRFB
        ParentFont = False
        TabOrder = 10
      end
      object cExport: TRxDBLookupCombo
        Left = 117
        Top = 95
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Exportador'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Nome'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsFornecedores
        ParentFont = False
        TabOrder = 5
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 117
        Top = 141
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Moeda'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Nome'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsMoedas
        ParentFont = False
        TabOrder = 7
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 117
        Top = 164
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'INCOTERMS'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsIncoterms
        ParentFont = False
        TabOrder = 8
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 240
        Top = 3
        Width = 432
        Height = 21
        DropDownCount = 0
        DisplayAllFields = True
        Color = 16762566
        DataField = 'NCM'
        DataSource = dmDespacho.dsSLI
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'NCM'
        LookupDisplay = 'NCM;Produto'
        LookupDisplayIndex = 1
        LookupSource = dmFiscal.dsNCM
        ParentFont = False
        TabOrder = 11
        TabStop = False
      end
      object cOrgaoAnuente: TRxDBLookupCombo
        Left = 117
        Top = 256
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Orgao_Anuente'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsOrgaosAnuentes
        ParentFont = False
        TabOrder = 14
      end
      object RxDBComboBox3: TRxDBComboBox
        Left = 400
        Top = 233
        Width = 273
        Height = 21
        DataField = 'DrawBack'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Items.Strings = (
          'N'#227'o tem Drawback'
          'Suspens'#227'o Gen'#233'rico'
          'Suspens'#227'o n'#227'o Gen'#233'rico'
          'Insen'#231#227'o AC Web'
          'Insen'#231#227'o AC Papel')
        ParentFont = False
        TabOrder = 13
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 117
        Top = 279
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Regime_Tributacao'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsRegimeTributacao
        ParentFont = False
        TabOrder = 15
      end
      object cFundamento: TRxDBComboBox
        Left = 117
        Top = 302
        Width = 556
        Height = 21
        DataField = 'Fundamento_Legal'
        DataSource = dmDespacho.dsSLI
        DropDownCount = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Items.Strings = (
          
            'IN RFB 1361/2013 ART. 36, CAPUT,  INC. I  - EVENTOS CIENT'#205'FICOS,' +
            ' T'#201'CNICOS, POL'#205'TICOS, EDUCACIONAIS, RELIGIOSOS, ART'#205'STICOS, CULT' +
            'URAIS, ESPORTIVOS, COMERCIAIS OU'
          
            'IN RFB 1361/2013 ART. 36, CAPUT, INC. II -  PROMO'#199#195'O COMERCIAL, ' +
            'INCLUSIVE AMOSTRAS SEM DESTINA'#199#195'O COMERCIAL E MOSTRU'#193'RIOS DE REP' +
            'RESENTANTES COMERCIAIS'
          
            'IN RFB 1361/2013 ART. 36, CAPUT, INC. III - EXECU'#199#195'O DE CONTRATO' +
            ' DE ARRENDAMENTO OPERACIONAL, DE ALUGUEL, DE EMPR'#201'STIMO OU DE PR' +
            'ESTA'#199#195'O DE SERVI'#199'OS, NO EXTERIOR'
          
            'IN RFB 1361/2013 ART. 36, CAPUT, INC. IV - PRESTA'#199#195'O DE ASSIST'#202'N' +
            'CIA T'#201'CNICA A PRODUTOS EXPORTADOS, EM VIRTUDE DE TERMOS DE GARAN' +
            'TIA'
          
            'IN RFB 1361/2013 ART. 36, CAPUT, INC. V - ASSIST'#202'NCIA E SALVAMEN' +
            'TO EM SITUA'#199#213'ES DE CALAMIDADE OU DE ACIDENTES DE QUE DECORRA DAN' +
            'O OU AMEA'#199'A DE DANO '#192
          
            'IN RFB 1361/2013 ART. 36, CAPUT, INC. VI - HOMOLOGA'#199#195'O, ENSAIOS,' +
            ' TESTES DE FUNCIONAMENTO OU RESIST'#202'NCIA, OU AINDA A SEREM UTILIZ' +
            'ADOS NO DESENVOLVIMENTO'
          
            'IN RFB 1361/2013 ART. 36, CAPUT, INC. VII - SUBSTITUI'#199#195'O DE OUTR' +
            'O BEM OU PRODUTO NACIONAL, OU SUAS PARTES E PE'#199'AS, ANTERIORMENTE' +
            ' EXPORTADO DEFINITIVAMENTE, QUE'
          
            'IN RFB 1361/2013 ART. 36, CAPUT, INC. VIII - ACONDICIONAMENTO E ' +
            'MANUSEIO DE OUTROS BENS EXPORTADOS, DESDE QUE REUTILIZ'#193'VEIS'
          
            'IN RFB 1361/2013 ART. 36, CAPUT, INC. IX -  PASTOREIO, ADESTRAME' +
            'NTO, COBERTURA E CUIDADOS DA MEDICINA VETERIN'#193'RIA'
          
            'IN RFB 1361/2013 ART. 36, '#167' 1'#186', INC. I - BEM NACIONAL OU NACIONA' +
            'LIZADO, PARA SER SUBMETIDO A OPERA'#199#195'O DE TRANSFORMA'#199#195'O, ELABORA'#199 +
            #195'O, BENEFICIAMENTO OU'
          
            'IN RFB 1361/2013 ART. 36, '#167' 1'#186', INC. II - BEM NACIONAL OU NACION' +
            'ALIZADO PARA SER SUBMETIDO A PROCESSO DE CONSERTO, REPARO OU RES' +
            'TAURA'#199#195'O'
          
            'IN RFB 1361/2013 ART. 36, '#167' 1'#186', INC. III - BENS AO AMPARO DA CON' +
            'VEN'#199#195'O DE ISTAMBUL'
          
            'IN RFB 1361/2013 ART. 36, '#167' 1'#186', INC. IV - OUTROS BENS OU PRODUTO' +
            'S MANUFATURADOS E ACABADOS, AUTORIZADOS, EM CADA CASO, PELO RESP' +
            'ONS'#193'VEL PELA CONCESS'#195'O DO')
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13')
        OnChange = cFundamentoChange
      end
      object RxDBComboBox5: TRxDBComboBox
        Left = 117
        Top = 325
        Width = 556
        Height = 21
        DataField = 'Acordo_Tarifario'
        DataSource = dmDespacho.dsSLI
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Items.Strings = (
          'ALADI'
          'OMC'
          'SGPC')
        ParentFont = False
        TabOrder = 17
        Values.Strings = (
          '')
      end
      object cCobertura: TRxDBComboBox
        Left = 117
        Top = 348
        Width = 556
        Height = 21
        DataField = 'Cobertura_Cambial'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Items.Strings = (
          'Com Cobertura at'#233' 180 dias'
          'Com Cobertura de 180 at'#233' 360 dias'
          'Com Cobertura acima 360 dias'
          'Sem Cobertura')
        ParentFont = False
        TabOrder = 18
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
        OnChange = cCoberturaChange
      end
      object cModalidade: TRxDBLookupCombo
        Left = 117
        Top = 371
        Width = 388
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Modalidade_Pgto'
        DataSource = dmDespacho.dsSLI
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsModalidadesRFB
        ParentFont = False
        TabOrder = 19
      end
      object cFinanciadora: TRxDBLookupCombo
        Left = 117
        Top = 394
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Financiadora'
        DataSource = dmDespacho.dsSLI
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsFinanciadora
        ParentFont = False
        TabOrder = 21
      end
      object StaticText3: TStaticText
        Left = 4
        Top = 394
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Inst.Financiadora'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 45
        Transparent = False
        StyleElements = []
      end
      object StaticText12: TStaticText
        Left = 4
        Top = 417
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Motivo Imp.s/Cobert.'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 46
        Transparent = False
        StyleElements = []
      end
      object cMotivo: TRxDBLookupCombo
        Left = 117
        Top = 417
        Width = 556
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Motivo_ImpCambial'
        DataSource = dmDespacho.dsSLI
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsMotivoCambial
        ParentFont = False
        TabOrder = 22
      end
      object StaticText27: TStaticText
        Left = 525
        Top = 26
        Width = 31
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'LI n'#186
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 47
        Transparent = False
        StyleElements = []
      end
      object DBEdit1: TDBEdit
        Left = 558
        Top = 26
        Width = 114
        Height = 21
        DataField = 'Numero'
        DataSource = dmDespacho.dsSLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText28: TStaticText
        Left = 4
        Top = 3
        Width = 111
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Registro'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 48
        Transparent = False
        StyleElements = []
      end
      object cRegistro: TDBEdit
        Left = 117
        Top = 3
        Width = 84
        Height = 21
        Color = 16762566
        DataField = 'Registro'
        DataSource = dmDespacho.dsSLI
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 49
        OnChange = cRegistroChange
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 478
        Width = 702
        Height = 54
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Totais da SLI'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 50
        object Image6: TImage
          Left = 180
          Top = 14
          Width = 168
          Height = 33
          Stretch = True
        end
        object Image7: TImage
          Left = 526
          Top = 14
          Width = 168
          Height = 33
          Stretch = True
        end
        object Image4: TImage
          Left = 7
          Top = 14
          Width = 168
          Height = 33
          Stretch = True
        end
        object Label13: TLabel
          Left = 10
          Top = 16
          Width = 24
          Height = 11
          Caption = 'Itens:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 183
          Top = 16
          Width = 54
          Height = 11
          Caption = 'Peso L'#237'quido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 530
          Top = 16
          Width = 121
          Height = 11
          Caption = 'Total na Condi'#231#227'o de Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cTotalCond: TDBText
          Left = 532
          Top = 27
          Width = 156
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor_TotalCond'
          DataSource = dstTotais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object cTotalPeso: TDBText
          Left = 186
          Top = 27
          Width = 156
          Height = 16
          Alignment = taRightJustify
          DataField = 'Peso_Total'
          DataSource = dstTotais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object cTotalItens: TDBText
          Left = 13
          Top = 27
          Width = 156
          Height = 16
          Alignment = taRightJustify
          DataField = 'Qtde_Total'
          DataSource = dstTotais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Image5: TImage
          Left = 353
          Top = 14
          Width = 168
          Height = 33
          Stretch = True
        end
        object Label1: TLabel
          Left = 358
          Top = 16
          Width = 113
          Height = 11
          Caption = 'Total o Local de Embarque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cTotalEmb: TDBText
          Left = 362
          Top = 27
          Width = 156
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor_TotalEmb'
          DataSource = dstTotais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Itens'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeItens: TRxDBGrid
        Left = 0
        Top = 224
        Width = 708
        Height = 255
        DataSource = dmDespacho.dsSLIItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'Item'
            Title.Alignment = taCenter
            Title.Caption = '#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'PRODUTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRI'#199#195'O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 418
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde_UnidadeCom'
            Title.Alignment = taCenter
            Title.Caption = 'QTDE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_CondVenda'
            Title.Alignment = taCenter
            Title.Caption = 'VALOR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 708
        Height = 221
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 1
        object bPesqProd: TSpeedButton
          Left = 673
          Top = 8
          Width = 23
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
            B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
            1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
            BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
            BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
          OnClick = bPesqProdClick
        end
        object StaticText21: TStaticText
          Left = 9
          Top = 9
          Width = 149
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
          TabOrder = 0
          Transparent = False
          StyleElements = []
        end
        object cDescricao: TRxDBLookupCombo
          Left = 234
          Top = 9
          Width = 439
          Height = 21
          DropDownCount = 20
          DropDownWidth = 600
          DataField = 'Codigo_Mercadoria'
          DataSource = dmDespacho.dsSLIItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao_Reduzida'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsProdutos
          ParentFont = False
          TabOrder = 1
        end
        object cCodigo: TDBEdit
          Left = 160
          Top = 9
          Width = 72
          Height = 21
          DataField = 'Codigo_Mercadoria'
          DataSource = dmDespacho.dsSLIItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 160
          Top = 32
          Width = 112
          Height = 21
          DataField = 'Peso_Liquido'
          DataSource = dmDespacho.dsSLIItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 160
          Top = 55
          Width = 112
          Height = 21
          DataField = 'Qtde_UnidadeCom'
          DataSource = dmDespacho.dsSLIItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 160
          Top = 78
          Width = 112
          Height = 21
          DataField = 'Qtde_MedidaEst'
          DataSource = dmDespacho.dsSLIItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 160
          Top = 101
          Width = 112
          Height = 21
          DataField = 'Valor_LocEmbarque'
          DataSource = dmDespacho.dsSLIItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit9: TDBEdit
          Left = 160
          Top = 124
          Width = 112
          Height = 21
          DataField = 'Valor_CondVenda'
          DataSource = dmDespacho.dsSLIItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText22: TStaticText
          Left = 9
          Top = 32
          Width = 149
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
          TabOrder = 8
          Transparent = False
          StyleElements = []
        end
        object StaticText23: TStaticText
          Left = 9
          Top = 55
          Width = 149
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Qtde.Unidade Comercializada'
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
        object StaticText24: TStaticText
          Left = 9
          Top = 101
          Width = 149
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor no Local do Embarque'
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
        object StaticText25: TStaticText
          Left = 9
          Top = 78
          Width = 149
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Qtde.na Medida Estat'#237'stica'
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
        object StaticText26: TStaticText
          Left = 9
          Top = 124
          Width = 149
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor na Condi'#231#227'o de Venda '
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
        object StaticText29: TStaticText
          Left = 9
          Top = 147
          Width = 149
          Height = 64
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 
            '                                                                ' +
            '                  Descri'#231#227'o'
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
        object DBMemo2: TDBMemo
          Left = 160
          Top = 147
          Width = 536
          Height = 64
          DataField = 'Descricao'
          DataSource = dmDespacho.dsSLIItens
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 482
        Width = 506
        Height = 44
        BevelOuter = bvLowered
        TabOrder = 2
        object NavegaItens: TDBNavigator
          Left = 121
          Top = 7
          Width = 261
          Height = 29
          Cursor = crHandPoint
          DataSource = dmDespacho.dsSLIItens
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Ctl3D = False
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
          BeforeAction = NavegaItensBeforeAction
          OnClick = NavegaItensClick
        end
      end
      object StaticText31: TStaticText
        Left = 508
        Top = 482
        Width = 74
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Itens'
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
      object lTotal: TStaticText
        Left = 508
        Top = 505
        Width = 74
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor Total'
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
      object cItensTotal: TCurrencyEdit
        Left = 584
        Top = 482
        Width = 108
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16762566
        DecimalPlaces = 0
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object cValorTotal: TCurrencyEdit
        Left = 584
        Top = 505
        Width = 108
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16762566
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 624
    Width = 726
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      726
      31)
    object bSair: TButton
      Left = 660
      Top = 2
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
    object Navega: TDBNavigator
      Left = 1
      Top = 2
      Width = 333
      Height = 28
      Cursor = crHandPoint
      DataSource = dmDespacho.dsSLI
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
  end
  object cProcChange: TDBEdit
    Left = 176
    Top = 11
    Width = 73
    Height = 21
    DataField = 'Processo'
    DataSource = dmDespacho.dsSLI
    TabOrder = 2
    Visible = False
    OnChange = cProcChangeChange
  end
  object cInvoiceChange: TDBEdit
    Left = 256
    Top = 11
    Width = 73
    Height = 21
    DataField = 'Invoice'
    DataSource = dmDespacho.dsSLI
    TabOrder = 3
    Visible = False
    OnChange = cInvoiceChangeChange
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 532
    Top = 8
  end
  object tNCM: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ISNULL(MAX(Registro),0) AS Registro FROM PackingListItens')
    Left = 564
    Top = 8
  end
  object tCopia: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ISNULL(MAX(Registro),0) AS Registro FROM PackingListItens')
    Left = 595
    Top = 8
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 500
    Top = 8
  end
  object tSLI: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 622
    Top = 8
  end
  object tTotais: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT SUM(Valor_LocEmbarque * Qtde_UnidadeCom) AS Valor_TotalEm' +
        'b'
      
        '      ,SUM(Valor_LocEmbarque * Qtde_UnidadeCom) AS Valor_TotalCo' +
        'nd'
      '      ,SUM(Peso_Liquido) AS Peso_Total'
      '      ,COUNT(*) AS Qtde_Total'
      'FROM  SLIItens'
      'WHERE SLI = 4')
    FetchRows = 1
    Left = 651
    Top = 8
    object tTotaisValor_TotalEmb: TFloatField
      FieldName = 'Valor_TotalEmb'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotaisValor_TotalCond: TFloatField
      FieldName = 'Valor_TotalCond'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotaisPeso_Total: TFloatField
      FieldName = 'Peso_Total'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tTotaisQtde_Total: TIntegerField
      FieldName = 'Qtde_Total'
      ReadOnly = True
      DisplayFormat = '0'
    end
  end
  object dstTotais: TDataSource
    DataSet = tTotais
    Left = 624
    Top = 48
  end
end
