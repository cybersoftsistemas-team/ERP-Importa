object LeitorSISCOMEXWEB: TLeitorSISCOMEXWEB
  Left = 190
  Top = 128
  BorderStyle = bsDialog
  Caption = 'Ler SISCOMEX WEB'
  ClientHeight = 668
  ClientWidth = 1314
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1314
    Height = 625
    ActivePage = TabSheet3
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabHeight = 25
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = '&Web Browser'
      ImageIndex = 2
      object Label1: TLabel
        Left = 0
        Top = 1
        Width = 22
        Height = 13
        Caption = 'URL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 808
        Top = 1
        Width = 110
        Height = 13
        Caption = 'Numero da Declara'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cBrowser: TWebBrowser
        Left = 0
        Top = 75
        Width = 1304
        Height = 590
        TabOrder = 0
        OnBeforeNavigate2 = cBrowserBeforeNavigate2
        OnDocumentComplete = cBrowserDocumentComplete
        ControlData = {
          4C000000C6860000FA3C00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object cURL: TEdit
        Left = 0
        Top = 17
        Width = 800
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 
          'https://www4c.receita.fazenda.gov.br/siscomexImpweb-7/inicio.htm' +
          'l'
      end
      object Panel2: TPanel
        Left = 0
        Top = 40
        Width = 1358
        Height = 32
        BevelOuter = bvLowered
        TabOrder = 2
        object bVolta: TSpeedButton
          Left = 2
          Top = 1
          Width = 38
          Height = 30
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000993333FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000993333FF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000993333FF6666FF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00993333FF6666FF6666FF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000009933
            33FF6666FF6666FF6666FF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000FF9999FF66
            66FF6666FF6666FF6666FF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFCC
            CCFF6666FF6666FF6666FF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FFCCCCFF6666FF6666FF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFCCCCFF6666FF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000FFCCCCFF6666FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000FFCCCCFF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000FF999900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = bVoltaClick
        end
        object bAdianta: TSpeedButton
          Left = 40
          Top = 1
          Width = 38
          Height = 30
          Enabled = False
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF999900000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF999999333300000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF666699333300000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF6666FF666699333300000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF6666FF6666FF666699333300000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF6666FF6666FF6666FF666699333300000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF6666FF6666FF6666FF6666FF666699333300000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF6666FF6666FF6666FF6666FF666600000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF6666FF6666FF6666FF666600000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF6666FF6666FF666600000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF6666FF666600000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF9999FF666600000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00FF999900000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = bAdiantaClick
        end
      end
      object cDI: TEdit
        Left = 808
        Top = 17
        Width = 193
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = '1319012410'
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Dados da Declara'#231#227'o'
      object cSituacao: TEdit
        Left = 200
        Top = 1
        Width = 660
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cURFDespacho: TEdit
        Left = 200
        Top = 23
        Width = 660
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object cFUNDAP: TRadioGroup
        Left = 922
        Top = 554
        Width = 209
        Height = 37
        Caption = 'Opera'#231#227'o'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'FUNDAP'
          'N'#195'O FUNDAP')
        ParentFont = False
        TabOrder = 51
      end
      object cDataRegistro: TEdit
        Left = 200
        Top = 45
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object cModalidadeDesp: TEdit
        Left = 200
        Top = 89
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object cTipoDeclaracao: TEdit
        Left = 200
        Top = 111
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText1: TStaticText
        Left = 2
        Top = 1
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '> Situa'#231#227'o da Entrega da Carga <'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 52
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText2: TStaticText
        Left = 2
        Top = 23
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>URF de Despacho:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 53
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText3: TStaticText
        Left = 2
        Top = 45
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Data de Registro:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 54
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText4: TStaticText
        Left = 2
        Top = 89
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Modalidade do Despacho:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 55
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText5: TStaticText
        Left = 2
        Top = 111
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Tipo de Declara'#231#227'o:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 56
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cImportador: TEdit
        Left = 200
        Top = 133
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText6: TStaticText
        Left = 2
        Top = 133
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Importador:< (CNPJ)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 57
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cNome: TEdit
        Left = 200
        Top = 155
        Width = 660
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText7: TStaticText
        Left = 2
        Top = 155
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 58
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText8: TStaticText
        Left = 2
        Top = 177
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Endere'#231'o:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 59
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cEndereco: TEdit
        Left = 200
        Top = 177
        Width = 660
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object StaticText9: TStaticText
        Left = 2
        Top = 199
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Respons'#225'vel pela Retifica'#231#227'o da DI:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 60
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cResponsavel: TEdit
        Left = 200
        Top = 199
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText10: TStaticText
        Left = 2
        Top = 243
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '> Caracteriza'#231#227'o da Opera'#231#227'o <'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 61
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cOperacao: TEdit
        Left = 200
        Top = 243
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object StaticText11: TStaticText
        Left = 2
        Top = 287
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>FATURA COMERCIAL <'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 62
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cFatura: TEdit
        Left = 200
        Top = 287
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object StaticText13: TStaticText
        Left = 2
        Top = 221
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 63
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cNomeResponsavel: TEdit
        Left = 200
        Top = 221
        Width = 400
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText12: TStaticText
        Left = 2
        Top = 67
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Data de Desembara'#231'o:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 64
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cDataDesembaraco: TEdit
        Left = 200
        Top = 67
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText14: TStaticText
        Left = 2
        Top = 309
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>ROMANEIO DE CARGA <'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 65
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cRomaneio: TEdit
        Left = 200
        Top = 309
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object StaticText16: TStaticText
        Left = 2
        Top = 331
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>CONHECIMENTO DE CARGA <'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 66
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cConhecimentoCarga: TEdit
        Left = 200
        Top = 331
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object StaticText17: TStaticText
        Left = 2
        Top = 353
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '> Processos Vinculados <'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 67
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cProcessoVinculado: TEdit
        Left = 200
        Top = 353
        Width = 400
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object StaticText18: TStaticText
        Left = 2
        Top = 375
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Proced'#234'ncia:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 68
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cProcedencia: TEdit
        Left = 200
        Top = 375
        Width = 400
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object StaticText19: TStaticText
        Left = 2
        Top = 397
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>URF de Entrada:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 69
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cURFEntrada: TEdit
        Left = 200
        Top = 397
        Width = 400
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object StaticText21: TStaticText
        Left = 2
        Top = 441
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Peso Bruto (Kg):<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 70
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cPesoBruto: TEdit
        Left = 200
        Top = 441
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object StaticText20: TStaticText
        Left = 2
        Top = 419
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Data de Chegada:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 71
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cDataChegada: TEdit
        Left = 200
        Top = 419
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object StaticText22: TStaticText
        Left = 2
        Top = 463
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Peso L'#237'quido (Kg):<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 72
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cPesoLiquido: TEdit
        Left = 200
        Top = 463
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object StaticText23: TStaticText
        Left = 2
        Top = 485
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Recinto Aduaneiro:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 73
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cRecintoAduaneiro: TEdit
        Left = 200
        Top = 485
        Width = 400
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object cSetor: TEdit
        Left = 200
        Top = 507
        Width = 400
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object StaticText24: TStaticText
        Left = 2
        Top = 507
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Setor:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 74
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText25: TStaticText
        Left = 2
        Top = 529
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Armaz'#233'm:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 75
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cArmazem: TEdit
        Left = 200
        Top = 529
        Width = 400
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
      end
      object cQuantidade: TEdit
        Left = 200
        Top = 551
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
      end
      object StaticText26: TStaticText
        Left = 2
        Top = 551
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Quantidade:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 76
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText27: TStaticText
        Left = 2
        Top = 265
        Width = 196
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 77
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cNomeCaracter: TEdit
        Left = 200
        Top = 265
        Width = 400
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object cMultiModal: TRadioGroup
        Left = 1138
        Top = 554
        Width = 133
        Height = 37
        Caption = 'Multimodal'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'SIM'
          'N'#195'O')
        ParentFont = False
        TabOrder = 78
      end
      object StaticText35: TStaticText
        Left = 863
        Top = 177
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Via de Transporte:<  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 79
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cViaTransporte: TEdit
        Left = 994
        Top = 177
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
      end
      object StaticText36: TStaticText
        Left = 863
        Top = 199
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Transportador:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 80
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cTransportador: TEdit
        Left = 994
        Top = 199
        Width = 300
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 35
      end
      object StaticText37: TStaticText
        Left = 863
        Top = 221
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Nome da Embarca'#231#227'o:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 81
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cNomeEmbarcacao: TEdit
        Left = 994
        Top = 221
        Width = 300
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
      end
      object cManifestoCarga: TEdit
        Left = 994
        Top = 243
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 37
      end
      object StaticText38: TStaticText
        Left = 863
        Top = 243
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Manifesto da Carga <'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 82
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText39: TStaticText
        Left = 863
        Top = 265
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Local de Embarque:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 83
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cLocalEmbarque: TEdit
        Left = 994
        Top = 265
        Width = 300
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 38
      end
      object cDataEmbarque: TEdit
        Left = 994
        Top = 287
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 39
      end
      object StaticText40: TStaticText
        Left = 863
        Top = 287
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Data de Embarque:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 84
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText41: TStaticText
        Left = 863
        Top = 309
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Tipo do Conhecimento:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 85
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cTipoConhecimento: TEdit
        Left = 994
        Top = 309
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 40
      end
      object StaticText30: TStaticText
        Left = 863
        Top = 67
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Prepaid:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 86
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cPrepaid: TEdit
        Left = 994
        Top = 67
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
      end
      object StaticText31: TStaticText
        Left = 863
        Top = 111
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Total em D'#243'lares:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 87
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cTotalDolares: TEdit
        Left = 994
        Top = 111
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
      end
      object StaticText32: TStaticText
        Left = 863
        Top = 89
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Collect:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 88
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cCollect: TEdit
        Left = 994
        Top = 89
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
      end
      object StaticText33: TStaticText
        Left = 863
        Top = 133
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Total em Reais:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 89
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cTotalReais: TEdit
        Left = 994
        Top = 133
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 32
      end
      object StaticText34: TStaticText
        Left = 863
        Top = 155
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Em Territ'#243'rio Nacional:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 90
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cTerritorioNac: TEdit
        Left = 994
        Top = 155
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
      end
      object StaticText42: TStaticText
        Left = 863
        Top = 331
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Utiliza'#231#227'o:<'#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 91
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cUtilizacao: TEdit
        Left = 994
        Top = 331
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 41
      end
      object StaticText43: TStaticText
        Left = 863
        Top = 353
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Id. do Conhecimento:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 92
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cConhecimento: TEdit
        Left = 994
        Top = 353
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 42
      end
      object StaticText44: TStaticText
        Left = 863
        Top = 375
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Retif.<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 93
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cRetif: TEdit
        Left = 994
        Top = 375
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 43
      end
      object StaticText45: TStaticText
        Left = 863
        Top = 397
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Receita<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 94
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cReceita: TEdit
        Left = 994
        Top = 397
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 44
      end
      object cValorReceita: TEdit
        Left = 994
        Top = 419
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 45
      end
      object StaticText46: TStaticText
        Left = 863
        Top = 419
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Valor da Receita<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 95
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText47: TStaticText
        Left = 863
        Top = 441
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Juros/Encargos<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 96
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cJurosEncargos: TEdit
        Left = 994
        Top = 441
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 46
      end
      object cMulta: TEdit
        Left = 994
        Top = 463
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 47
      end
      object StaticText48: TStaticText
        Left = 863
        Top = 463
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Multa<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 97
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText49: TStaticText
        Left = 863
        Top = 485
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Valor Total<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 98
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cValorTotal: TEdit
        Left = 994
        Top = 485
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 48
      end
      object StaticText50: TStaticText
        Left = 863
        Top = 507
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Data<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 99
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cData: TEdit
        Left = 994
        Top = 507
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 49
      end
      object StaticText51: TStaticText
        Left = 863
        Top = 529
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Tipo<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 100
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cTipo: TEdit
        Left = 994
        Top = 529
        Width = 200
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 50
      end
      object StaticText15: TStaticText
        Left = 863
        Top = 1
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Tipo da Embalagem:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 101
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cTipoEmbalagem: TEdit
        Left = 994
        Top = 1
        Width = 250
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
      end
      object StaticText28: TStaticText
        Left = 863
        Top = 23
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Moeda Negociada:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 102
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cMoedaNegociada: TEdit
        Left = 994
        Top = 23
        Width = 308
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
      end
      object StaticText29: TStaticText
        Left = 863
        Top = 45
        Width = 129
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '>Total na Moeda:<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 103
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cTotalMoeda: TEdit
        Left = 994
        Top = 45
        Width = 120
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Adi'#231#245'es'
      ImageIndex = 2
      object gAdicoes: TStringGrid
        Left = 0
        Top = 0
        Width = 1306
        Height = 590
        Align = alClient
        ColCount = 14
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentFont = False
        TabOrder = 0
        ColWidths = (
          42
          40
          46
          54
          62
          421
          134
          77
          83
          69
          89
          75
          64
          64)
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Informa'#231#245'es Complementares'
      ImageIndex = 3
      object cComplemento: TMemo
        Left = 0
        Top = 0
        Width = 1306
        Height = 590
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Lines.Strings = (
          'cComplemento')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 638
    Width = 1314
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1314
      30)
    object cCarrega: TButton
      Left = 1
      Top = 1
      Width = 109
      Height = 29
      Caption = '&Carrega Dados'
      TabOrder = 0
      OnClick = cCarregaClick
    end
    object Button1: TButton
      Left = 1234
      Top = 1
      Width = 80
      Height = 29
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = Button1Click
    end
    object bSalvar: TButton
      Left = 110
      Top = 1
      Width = 131
      Height = 29
      Caption = '&Salvar Paginas HTML'
      TabOrder = 2
      OnClick = bSalvarClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 224
    Top = 706
  end
end
