object Processo_POImportaItens: TProcesso_POImportaItens
  Left = 412
  Top = 193
  BorderStyle = bsDialog
  Caption = 'Processo_POImportaItens'
  ClientHeight = 611
  ClientWidth = 1092
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
  DesignSize = (
    1092
    611)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 581
    Width = 1092
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 1026
      Top = 1
      Width = 65
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 1033
      ExplicitTop = 0
    end
    object Progresso: TProgressBar
      Left = 8
      Top = 6
      Width = 297
      Height = 17
      TabOrder = 1
      Visible = False
    end
    object bImportarCli: TButton
      Left = 960
      Top = 1
      Width = 66
      Height = 28
      Align = alRight
      Caption = '&Importar'
      Enabled = False
      TabOrder = 2
      OnClick = bImportarCliClick
      ExplicitLeft = 961
    end
    object blayout: TButton
      Left = 875
      Top = 1
      Width = 85
      Height = 28
      Align = alRight
      Caption = '&Salvar Layout'
      TabOrder = 3
      OnClick = blayoutClick
    end
  end
  object PageControl1: TPageControl
    Left = 6
    Top = 8
    Width = 1080
    Height = 567
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akBottom]
    TabHeight = 24
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cLinhaIniCli: TRxSpinEdit
        Left = 105
        Top = 26
        Width = 63
        Height = 21
        Alignment = taRightJustify
        Decimal = 0
        MaxValue = 10000.000000000000000000
        MinValue = 1.000000000000000000
        Value = 2.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10000
        ParentFont = False
        TabOrder = 0
      end
      object StaticText2: TStaticText
        Left = 4
        Top = 26
        Width = 99
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Linha Inicial'
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
      object cLinhaFimCli: TRxSpinEdit
        Left = 105
        Top = 49
        Width = 63
        Height = 21
        Alignment = taRightJustify
        Decimal = 0
        MaxValue = 10000.000000000000000000
        MinValue = 1.000000000000000000
        Value = 2.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10000
        ParentFont = False
        TabOrder = 2
      end
      object StaticText8: TStaticText
        Left = 4
        Top = 3
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Arquivo de Origem'
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
      object cArquivoCli: TFilenameEdit
        Left = 105
        Top = 3
        Width = 935
        Height = 21
        OnButtonClick = cArquivoCliButtonClick
        DefaultExt = '*.xlsx'
        FileEditStyle = fsComboBox
        Filter = 
          'Planilha do Microsoft Excel (xlsx)|*.xlsx|Planilha do Microsoft ' +
          'Excel (xls)|*.xls'
        FilterIndex = 0
        DialogOptions = [ofReadOnly, ofHideReadOnly]
        DialogTitle = 'Abrir Planilha'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GlyphKind = gkCustom
        Glyph.Data = {
          CA050000424DCA05000000000000360000002800000016000000150000000100
          1800000000009405000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DFCDA0B78EE1E8
          DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFEDF1E9C1D0B596AF81658B4744721F295E0031640825
          5B00DAE3D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000C4D2B886A46E5880373B6B152E620533650A396A123E6D1841701C44721F
          44721F3D6E16678450748A6176955E76945E76945E76945E76945E75945D7391
          5BF5F7F4000060884036670E3F6E1942701D44721F44721F44721F44721F4472
          1F44721F44721F3B6D1288967CA0A49CCCD3C7C1CABAC8CFC2C8CFC3C8CFC3C7
          CEC18EA27D8BA47600006B904E3F6E1944721F44721F44721F44721F44721F44
          721F44721F44721F44721F3E6F16708660818E779BAF8CE3E4E39CAE8E9FB192
          99AC8BDADEDAB6C0AB8EA77A00006B904E3F6E1944721F44721F44721F44721F
          44721F44721F44721F44721F44721F457520264C051B4000144900CED4C91C4D
          00225300144700B0BEA6B6C0AC8FA77B00006B904E3F6E1944721F3B6B143869
          1144721F3F6E182B5F01396A1244721F44721F3D6E158695799EA39AC0CBB6E7
          E6E8C0C8B6C3CCBBBEC8B5E2E4E3B2BDA78FA77B00006B904E3F6E193A6B139A
          B287ABBF9A2E61045B843CFFFFFF81A0683D6C1644721F4575202B500B224605
          1D5000CBD2C72555002B5A071D4E00B3C0AAB6C0AC8FA77B00006B904E3F6E19
          3E6D18658B47FFFFFF36680FCDD9C4F8FAF72A5E0044721F44721F44731D3D5E
          213A58223D681CD1D6CD436B2449702A3C661CBCC7B7B5C0AB8FA77B00006B90
          4E3F6E1944721F2C6002DEE6D8C5D3BAFFFFFF658A463D6D1744721F44721F3E
          6F167B8E6D909989AFBEA3E4E3E4AEBCA3B2BEA8ACBAA0DDDFDCB2BDA78FA77B
          00006B904E3F6E1944721F3F6E194C7728FFFFFFDBE4D5275C0044721F44721F
          44721F457520264C051B4000144900CCD3C81C4E00235300144800B0BEA6B6C0
          AC8FA77B00006B904E3F6E1944721F37681097B083FFFFFFFFFFFF3768104270
          1C44721F44721F3E6F157C8E6E919A8AB0BFA5E4E4E4AFBCA4B3BFA9ADBBA1DE
          DFDDB2BDA78FA77B00006B904E3F6E1943711E2E6104FFFFFF77995DEBF0E8B6
          C7A733650A44721F44721F43731D4161263F5C28436D23D4D8D149702C4F7432
          426A23BFC9B9B5C0AB8FA77B00006B904E3F6E19396A12A6BB94FFFFFF2F6206
          799A5FFFFFFF4A762641701B44721F467520254C051A3F00124800CDD3C81B4D
          00215200124600B0BEA8B6C1AC8FA77B00006B904E3F6E1944721F33650B265C
          0042701D396A126389445D853E416F1B44721F3C6D13919E87ADAFACD5DAD1EA
          E9EAD2D7CFD6D9D3D2D7CEE9E7E9B1BDA68FA77B00006B904E3F6E1944721F44
          721F44721F44721F43711E3F6E19416F1B44721F44721F457520254C051A3F00
          134800CDD4C91B4D00215200134700B0BEA6B6C0AC8FA77B00006B904E3F6E19
          44721F44721F44721F44721F44721F44721F44721F44721F44721F3F7018637C
          506F8061849D6FDFE0DD859D7389A077829A6ED2D7D0B5BFAA8FA77A00006289
          43386911416F1B43711E44721F44721F44721F44721F44721F44721F44721F39
          6C1199A48FB7B6B8E7E8E7DBDDD9E3E3E3E3E3E3E3E3E3E1E2E1A1B19488A274
          0000B3C5A470935446732135660D2E610536670E3B6B153F6E1A43711E44721F
          44721F3F6F1952713755713E597E3C587D3B587D3B587D3B587D3B587C3B577C
          3BEBEFE80000FFFFFFFFFFFFFFFFFFFBFCFADCE4D5ABBF9A7F9E65557E333466
          0C2B5F0135660D275D00DDE6D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEFF3ECC2D1B689A673DEE5D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000}
        ButtonWidth = 22
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = ''
        OnChange = cArquivoCliChange
      end
      object cApagarCli: TCheckBox
        Left = 813
        Top = 30
        Width = 147
        Height = 17
        Caption = 'Apagar os itens existentes.'
        TabOrder = 5
        OnClick = cApagarCliClick
      end
      object StaticText6: TStaticText
        Left = 4
        Top = 49
        Width = 99
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Linha Final'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        Transparent = False
        StyleElements = []
      end
      object Grade: TStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 76
        Width = 1066
        Height = 218
        Align = alBottom
        Color = 13602864
        ColCount = 2
        DefaultColWidth = 120
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 3
        FixedRows = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        GradientEndColor = clGreen
        GradientStartColor = clLime
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goAlwaysShowEditor, goThumbTracking]
        ParentFont = False
        TabOrder = 7
        OnDrawCell = GradeDrawCell
      end
      object cCodigo: TCheckBox
        Left = 813
        Top = 51
        Width = 213
        Height = 17
        Caption = 'Utilizar c'#243'digo dos cadastros da planilha.'
        Checked = True
        State = cbChecked
        TabOrder = 8
        Visible = False
      end
      object cMsg: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 375
        Width = 1066
        Height = 155
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'cMsg')
        ParentFont = False
        TabOrder = 9
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 300
        Width = 1066
        Height = 69
        Align = alBottom
        DataSource = dstNCM
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 10
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NCM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Texto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 476
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'II'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COFINS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CEST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AntD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Dmp'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NVE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CIDE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'LI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 28
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Purchase Order (PO)'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        1072
        533)
      object cLinhaIniPO: TRxSpinEdit
        Left = 114
        Top = 36
        Width = 63
        Height = 21
        Alignment = taRightJustify
        Decimal = 0
        MaxValue = 10000.000000000000000000
        MinValue = 1.000000000000000000
        Value = 4.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10000
        ParentFont = False
        TabOrder = 0
        OnChange = cLinhaIniPOChange
      end
      object StaticText1: TStaticText
        Left = 13
        Top = 36
        Width = 99
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Intervalo de Linhas'
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
      object cLinhaFimPO: TRxSpinEdit
        Left = 205
        Top = 36
        Width = 63
        Height = 21
        Alignment = taRightJustify
        Decimal = 0
        MaxValue = 10000.000000000000000000
        MinValue = 1.000000000000000000
        Value = 4.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10000
        ParentFont = False
        TabOrder = 2
      end
      object StaticText5: TStaticText
        Left = 179
        Top = 36
        Width = 24
        Height = 21
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'At'#233
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
      object GradePO: TDBGrid
        Left = 0
        Top = 112
        Width = 1072
        Height = 421
        Align = alBottom
        DataSource = dstPlanPO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Title.Caption = 'ITEM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 36
            Visible = True
          end
          item
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
            Title.Caption = 'DESCRIPTION'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Package_Type'
            Title.Alignment = taCenter
            Title.Caption = 'PKGS TYPE'
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
            FieldName = 'Qty_Pkgs'
            Title.Alignment = taCenter
            Title.Caption = 'QTY PKGS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Net_Qty'
            Title.Alignment = taCenter
            Title.Caption = 'NET QTY'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'UN'
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
            FieldName = 'Total_Qty'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL QTY'
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
            FieldName = 'Unit_Price'
            Title.Alignment = taCenter
            Title.Caption = 'UNIT PRICE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
      object StaticText4: TStaticText
        Left = 13
        Top = 13
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Arquivo de Origem'
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
      object cArquivoPO: TFilenameEdit
        Left = 114
        Top = 13
        Width = 839
        Height = 21
        OnButtonClick = cArquivoPOButtonClick
        DefaultExt = '*.xlsx'
        FileEditStyle = fsComboBox
        Filter = 
          'Planilha do Microsoft Excel (xlsx)|*.xlsx|Planilha do Microsoft ' +
          'Excel (xls)|*.xls'
        FilterIndex = 0
        DialogOptions = [ofReadOnly, ofHideReadOnly]
        DialogTitle = 'Abrir Planilha'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GlyphKind = gkCustom
        Glyph.Data = {
          CA050000424DCA05000000000000360000002800000016000000150000000100
          1800000000009405000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DFCDA0B78EE1E8
          DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFEDF1E9C1D0B596AF81658B4744721F295E0031640825
          5B00DAE3D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000C4D2B886A46E5880373B6B152E620533650A396A123E6D1841701C44721F
          44721F3D6E16678450748A6176955E76945E76945E76945E76945E75945D7391
          5BF5F7F4000060884036670E3F6E1942701D44721F44721F44721F44721F4472
          1F44721F44721F3B6D1288967CA0A49CCCD3C7C1CABAC8CFC2C8CFC3C8CFC3C7
          CEC18EA27D8BA47600006B904E3F6E1944721F44721F44721F44721F44721F44
          721F44721F44721F44721F3E6F16708660818E779BAF8CE3E4E39CAE8E9FB192
          99AC8BDADEDAB6C0AB8EA77A00006B904E3F6E1944721F44721F44721F44721F
          44721F44721F44721F44721F44721F457520264C051B4000144900CED4C91C4D
          00225300144700B0BEA6B6C0AC8FA77B00006B904E3F6E1944721F3B6B143869
          1144721F3F6E182B5F01396A1244721F44721F3D6E158695799EA39AC0CBB6E7
          E6E8C0C8B6C3CCBBBEC8B5E2E4E3B2BDA78FA77B00006B904E3F6E193A6B139A
          B287ABBF9A2E61045B843CFFFFFF81A0683D6C1644721F4575202B500B224605
          1D5000CBD2C72555002B5A071D4E00B3C0AAB6C0AC8FA77B00006B904E3F6E19
          3E6D18658B47FFFFFF36680FCDD9C4F8FAF72A5E0044721F44721F44731D3D5E
          213A58223D681CD1D6CD436B2449702A3C661CBCC7B7B5C0AB8FA77B00006B90
          4E3F6E1944721F2C6002DEE6D8C5D3BAFFFFFF658A463D6D1744721F44721F3E
          6F167B8E6D909989AFBEA3E4E3E4AEBCA3B2BEA8ACBAA0DDDFDCB2BDA78FA77B
          00006B904E3F6E1944721F3F6E194C7728FFFFFFDBE4D5275C0044721F44721F
          44721F457520264C051B4000144900CCD3C81C4E00235300144800B0BEA6B6C0
          AC8FA77B00006B904E3F6E1944721F37681097B083FFFFFFFFFFFF3768104270
          1C44721F44721F3E6F157C8E6E919A8AB0BFA5E4E4E4AFBCA4B3BFA9ADBBA1DE
          DFDDB2BDA78FA77B00006B904E3F6E1943711E2E6104FFFFFF77995DEBF0E8B6
          C7A733650A44721F44721F43731D4161263F5C28436D23D4D8D149702C4F7432
          426A23BFC9B9B5C0AB8FA77B00006B904E3F6E19396A12A6BB94FFFFFF2F6206
          799A5FFFFFFF4A762641701B44721F467520254C051A3F00124800CDD3C81B4D
          00215200124600B0BEA8B6C1AC8FA77B00006B904E3F6E1944721F33650B265C
          0042701D396A126389445D853E416F1B44721F3C6D13919E87ADAFACD5DAD1EA
          E9EAD2D7CFD6D9D3D2D7CEE9E7E9B1BDA68FA77B00006B904E3F6E1944721F44
          721F44721F44721F43711E3F6E19416F1B44721F44721F457520254C051A3F00
          134800CDD4C91B4D00215200134700B0BEA6B6C0AC8FA77B00006B904E3F6E19
          44721F44721F44721F44721F44721F44721F44721F44721F44721F3F7018637C
          506F8061849D6FDFE0DD859D7389A077829A6ED2D7D0B5BFAA8FA77A00006289
          43386911416F1B43711E44721F44721F44721F44721F44721F44721F44721F39
          6C1199A48FB7B6B8E7E8E7DBDDD9E3E3E3E3E3E3E3E3E3E1E2E1A1B19488A274
          0000B3C5A470935446732135660D2E610536670E3B6B153F6E1A43711E44721F
          44721F3F6F1952713755713E597E3C587D3B587D3B587D3B587D3B587C3B577C
          3BEBEFE80000FFFFFFFFFFFFFFFFFFFBFCFADCE4D5ABBF9A7F9E65557E333466
          0C2B5F0135660D275D00DDE6D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEFF3ECC2D1B689A673DEE5D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000}
        ButtonWidth = 30
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = ''
        OnChange = cArquivoPOChange
      end
      object bImportarPO: TButton
        Left = 994
        Top = 9
        Width = 66
        Height = 47
        Anchors = [akTop, akRight]
        Caption = '&Importar'
        Enabled = False
        TabOrder = 7
        OnClick = bImportarPOClick
      end
      object cApagarPO: TCheckBox
        Left = 275
        Top = 38
        Width = 154
        Height = 17
        Caption = 'Apagar os itens existentes.'
        TabOrder = 8
        OnClick = cApagarPOClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'LOG'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1072
        Height = 533
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object dstPlanPO: TDataSource
    DataSet = tPlanPO
    Left = 280
    Top = 265
  end
  object tPlanPO: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 279
    Top = 214
    object tPlanPOItem: TSmallintField
      Alignment = taCenter
      DisplayWidth = 3
      FieldName = 'Item'
      DisplayFormat = '000'
    end
    object tPlanPOCodigo_Mercadoria: TSmallintField
      FieldName = 'Codigo_Mercadoria'
    end
    object tPlanPODescricao: TStringField
      FieldName = 'Descricao'
      Size = 500
    end
    object tPlanPONCM: TStringField
      Alignment = taCenter
      FieldName = 'NCM'
      EditMask = '####.##.##;0; '
      Size = 8
    end
    object tPlanPOPackage_Type: TStringField
      FieldName = 'Package_Type'
    end
    object tPlanPOQty_Pkgs: TIntegerField
      FieldName = 'Qty_Pkgs'
    end
    object tPlanPONet_Qty: TFloatField
      FieldName = 'Net_Qty'
      DisplayFormat = ',##0.000'
    end
    object tPlanPOUnidade: TStringField
      FieldName = 'Unidade'
    end
    object tPlanPOTotal_Qty: TFloatField
      FieldName = 'Total_Qty'
      DisplayFormat = ',##0.000'
    end
    object tPlanPOUnit_Price: TCurrencyField
      FieldName = 'Unit_Price'
      DisplayFormat = ',##0.00'
    end
    object tPlanPOTotal: TCurrencyField
      FieldName = 'Total'
      DisplayFormat = ',##0.00'
    end
  end
  object dstPlanCli: TDataSource
    DataSet = tPlanCli
    Left = 352
    Top = 265
  end
  object tPlanCli: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 351
    Top = 214
    object tPlanCliCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tPlanCliCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
    end
    object tPlanCliTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object tPlanCliUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tPlanCliQuantidade_Unidade: TFloatField
      FieldName = 'Quantidade_Unidade'
    end
    object tPlanCliNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object tPlanCliPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object tPlanCliPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object tPlanCliDescricao_Reduzida: TStringField
      FieldName = 'Descricao_Reduzida'
      Size = 60
    end
    object tPlanCliDescricao: TStringField
      FieldName = 'Descricao'
      Size = 5000
    end
    object tPlanCliDescricao_Ingles: TStringField
      FieldName = 'Descricao_Ingles'
      Size = 5000
    end
    object tPlanCliAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
    end
    object tPlanCliAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
    end
    object tPlanCliAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
    end
    object tPlanCliAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
    end
    object tPlanCliTipo_Item: TSmallintField
      FieldName = 'Tipo_Item'
    end
    object tPlanCliValor_IPI: TFloatField
      FieldName = 'Valor_IPI'
    end
    object tPlanCliClasseEnquadra_IPI: TStringField
      FieldName = 'ClasseEnquadra_IPI'
      FixedChar = True
      Size = 1
    end
    object tPlanCliDumping_Valor: TFloatField
      FieldName = 'Dumping_Valor'
    end
    object tPlanCliFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
    object tPlanCliFornecedor_Nome: TStringField
      FieldName = 'Fornecedor_Nome'
      Size = 60
    end
    object tPlanCliFabricante: TIntegerField
      FieldName = 'Fabricante'
    end
    object tPlanCliValor_Venda: TCurrencyField
      FieldName = 'Valor_Venda'
    end
    object tPlanCliValor_CustoMedio: TCurrencyField
      FieldName = 'Valor_CustoMedio'
    end
    object tPlanCliValor_Entrada: TCurrencyField
      FieldName = 'Valor_Entrada'
    end
    object tPlanCliTipo_Conversao: TStringField
      FieldName = 'Tipo_Conversao'
      FixedChar = True
      Size = 1
    end
    object tPlanCliReducao_COFINS: TFloatField
      FieldName = 'Reducao_COFINS'
    end
    object tPlanCliReducao_PIS: TFloatField
      FieldName = 'Reducao_PIS'
    end
    object tPlanCliLinha: TSmallintField
      FieldName = 'Linha'
    end
    object tPlanCliGTIN: TStringField
      FieldName = 'GTIN'
      Size = 14
    end
    object tPlanCliUnidade_Origem: TStringField
      FieldName = 'Unidade_Origem'
      Size = 3
    end
    object tPlanCliGTIN_Unidade: TStringField
      FieldName = 'GTIN_Unidade'
      Size = 14
    end
    object tPlanCliLargura: TFloatField
      FieldName = 'Largura'
    end
    object tPlanCliComprimento: TFloatField
      FieldName = 'Comprimento'
    end
    object tPlanCliAltura: TFloatField
      FieldName = 'Altura'
    end
    object tPlanCliICMS_Reducao: TFloatField
      FieldName = 'ICMS_Reducao'
    end
    object tPlanCliQuantidade_Volumes: TFloatField
      FieldName = 'Quantidade_Volumes'
    end
    object tPlanCliSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tPlanCliDumping: TBooleanField
      FieldName = 'Dumping'
    end
    object tPlanCliReciclavel: TBooleanField
      FieldName = 'Reciclavel'
    end
    object tPlanCliCodigo_ANP: TStringField
      FieldName = 'Codigo_ANP'
    end
    object tPlanCliCodigo_Provisorio: TIntegerField
      FieldName = 'Codigo_Provisorio'
    end
    object tPlanCliReducao_IPI: TFloatField
      FieldName = 'Reducao_IPI'
    end
    object tPlanCliReducao_II: TFloatField
      FieldName = 'Reducao_II'
    end
    object tPlanCliAcordo_TarifarioII: TFloatField
      FieldName = 'Acordo_TarifarioII'
    end
    object tPlanCliAcordo_TarifarioIPI: TFloatField
      FieldName = 'Acordo_TarifarioIPI'
    end
    object tPlanCliEntrada_ST: TBooleanField
      FieldName = 'Entrada_ST'
    end
    object tPlanCliDesativado: TBooleanField
      FieldName = 'Desativado'
    end
    object tPlanCliCusto_Seletivo: TBooleanField
      FieldName = 'Custo_Seletivo'
    end
    object tPlanCliPIS_Nota: TFloatField
      FieldName = 'PIS_Nota'
    end
    object tPlanCliCOFINS_Nota: TFloatField
      FieldName = 'COFINS_Nota'
    end
    object tPlanCliDetalhe_Especifico: TStringField
      FieldName = 'Detalhe_Especifico'
      FixedChar = True
      Size = 1
    end
    object tPlanCliICMS_DentroEstado: TFloatField
      FieldName = 'ICMS_DentroEstado'
    end
    object tPlanCliICMS_ForaEstado: TFloatField
      FieldName = 'ICMS_ForaEstado'
    end
    object tPlanCliPIS_NotaSaida: TFloatField
      FieldName = 'PIS_NotaSaida'
    end
    object tPlanCliCOFINS_NotaSaida: TFloatField
      FieldName = 'COFINS_NotaSaida'
    end
    object tPlanCliCAMEX: TBooleanField
      FieldName = 'CAMEX'
    end
    object tPlanCliTabela_CAMEX: TBooleanField
      FieldName = 'Tabela_CAMEX'
    end
    object tPlanCliPotencia_Motor: TStringField
      FieldName = 'Potencia_Motor'
      Size = 4
    end
    object tPlanCliCilindradas: TStringField
      FieldName = 'Cilindradas'
      Size = 4
    end
    object tPlanCliTipo_Combustivel: TStringField
      FieldName = 'Tipo_Combustivel'
      Size = 2
    end
    object tPlanCliCapacidade_Tracao: TFloatField
      FieldName = 'Capacidade_Tracao'
    end
    object tPlanCliDistancia_Eixos: TStringField
      FieldName = 'Distancia_Eixos'
      Size = 4
    end
    object tPlanCliTipo_Pintura: TStringField
      FieldName = 'Tipo_Pintura'
      Size = 1
    end
    object tPlanCliTipo_Veiculo: TStringField
      FieldName = 'Tipo_Veiculo'
      Size = 2
    end
    object tPlanCliEspecie_Veiculo: TStringField
      FieldName = 'Especie_Veiculo'
      Size = 1
    end
    object tPlanCliCondicao_VIN: TStringField
      FieldName = 'Condicao_VIN'
      Size = 1
    end
    object tPlanCliCondicao_Veiculo: TStringField
      FieldName = 'Condicao_Veiculo'
      Size = 1
    end
    object tPlanCliPassageiros: TSmallintField
      FieldName = 'Passageiros'
    end
    object tPlanCliCodigo_MarcaModelo: TStringField
      FieldName = 'Codigo_MarcaModelo'
      Size = 6
    end
    object tPlanCliValor_VendaA: TCurrencyField
      FieldName = 'Valor_VendaA'
    end
    object tPlanCliValor_VendaB: TCurrencyField
      FieldName = 'Valor_VendaB'
    end
    object tPlanCliValor_VendaC: TCurrencyField
      FieldName = 'Valor_VendaC'
    end
    object tPlanCliValor_VendaD: TCurrencyField
      FieldName = 'Valor_VendaD'
    end
    object tPlanCliValor_VendaE: TCurrencyField
      FieldName = 'Valor_VendaE'
    end
    object tPlanCliModalidade: TSmallintField
      FieldName = 'Modalidade'
    end
    object tPlanCliFCP: TBooleanField
      FieldName = 'FCP'
    end
    object tPlanCliLote_Obrigatorio: TBooleanField
      FieldName = 'Lote_Obrigatorio'
    end
    object tPlanCliProducao_Nacional: TBooleanField
      FieldName = 'Producao_Nacional'
    end
    object tPlanCliRegistro_ANVISA: TStringField
      FieldName = 'Registro_ANVISA'
      Size = 12
    end
    object tPlanCliVencimento_ANVISA: TDateTimeField
      FieldName = 'Vencimento_ANVISA'
    end
    object tPlanCliProcesso_ANVISA: TStringField
      FieldName = 'Processo_ANVISA'
    end
    object tPlanCliSerial_Obrigatorio: TBooleanField
      FieldName = 'Serial_Obrigatorio'
    end
    object tPlanCliValor_ConsumidorFinal: TCurrencyField
      FieldName = 'Valor_ConsumidorFinal'
    end
    object tPlanCliOrigem: TStringField
      FieldName = 'Origem'
      FixedChar = True
      Size = 1
    end
    object tPlanCliEscala_Relevante: TBooleanField
      FieldName = 'Escala_Relevante'
    end
    object tPlanCliCNPJ_Fabricante: TStringField
      FieldName = 'CNPJ_Fabricante'
      Size = 14
    end
    object tPlanCliDescricao_ANP: TStringField
      FieldName = 'Descricao_ANP'
      Size = 100
    end
    object tPlanCliPercentual_GLP: TFloatField
      FieldName = 'Percentual_GLP'
    end
    object tPlanCliPercentual_GLGNN: TFloatField
      FieldName = 'Percentual_GLGNN'
    end
    object tPlanCliPercentual_GLGNI: TFloatField
      FieldName = 'Percentual_GLGNI'
    end
    object tPlanCliValor_Partida: TCurrencyField
      FieldName = 'Valor_Partida'
    end
    object tPlanCliPreco_MaxConsumidor: TCurrencyField
      FieldName = 'Preco_MaxConsumidor'
    end
    object tPlanCliValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
    end
    object tPlanCliBeneficio_Fiscal: TStringField
      FieldName = 'Beneficio_Fiscal'
      Size = 8
    end
    object tPlanCliICMS_DentroEstadoSimples: TFloatField
      FieldName = 'ICMS_DentroEstadoSimples'
    end
    object tPlanCliMateria_Prima: TBooleanField
      FieldName = 'Materia_Prima'
    end
    object tPlanCliICMS_EstadoEntrada: TFloatField
      FieldName = 'ICMS_EstadoEntrada'
    end
    object tPlanCliICMS_ForaEstadoEntrada: TFloatField
      FieldName = 'ICMS_ForaEstadoEntrada'
    end
    object tPlanCliServico: TBooleanField
      FieldName = 'Servico'
    end
    object tPlanCliClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 15
    end
    object tPlanCliRequer_LI: TBooleanField
      FieldName = 'Requer_LI'
    end
    object tPlanCliCliente: TSmallintField
      FieldName = 'Cliente'
    end
    object tPlanCliOrgao_AnuenteImp: TSmallintField
      FieldName = 'Orgao_AnuenteImp'
    end
    object tPlanCliOrgao_AnuenteExp: TSmallintField
      FieldName = 'Orgao_AnuenteExp'
    end
  end
  object tProd: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 403
    Top = 214
  end
  object tReg: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 467
    Top = 214
  end
  object tCampos: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 523
    Top = 214
  end
  object MenuCampos: TPopupMenu
    Alignment = paCenter
    AutoPopup = False
    OwnerDraw = True
    Left = 599
    Top = 214
  end
  object LayImp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutImportacao'
      
        '  (Tabela, LinhaIni, LinhaFim, Fornecedor, CodigoPlan, Titulo, A' +
        'pagar, DataIni, DataFim, Coluna, Campo)'
      'VALUES'
      
        '  (:Tabela, :LinhaIni, :LinhaFim, :Fornecedor, :CodigoPlan, :Tit' +
        'ulo, :Apagar, :DataIni, :DataFim, :Coluna, :Campo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutImportacao'
      'WHERE'
      '  Tabela = :Old_Tabela AND Coluna = :Old_Coluna')
    SQLUpdate.Strings = (
      'UPDATE LayoutImportacao'
      'SET'
      
        '  Tabela = :Tabela, LinhaIni = :LinhaIni, LinhaFim = :LinhaFim, ' +
        'Fornecedor = :Fornecedor, CodigoPlan = :CodigoPlan, Titulo = :Ti' +
        'tulo, Apagar = :Apagar, DataIni = :DataIni, DataFim = :DataFim, ' +
        'Coluna = :Coluna, Campo = :Campo'
      'WHERE'
      '  Tabela = :Old_Tabela AND Coluna = :Old_Coluna')
    SQLRefresh.Strings = (
      
        'SELECT LayoutImportacao.Tabela, LayoutImportacao.LinhaIni, Layou' +
        'tImportacao.LinhaFim, LayoutImportacao.Fornecedor, LayoutImporta' +
        'cao.CodigoPlan, LayoutImportacao.Titulo, LayoutImportacao.Apagar' +
        ', LayoutImportacao.DataIni, LayoutImportacao.DataFim, LayoutImpo' +
        'rtacao.Coluna, LayoutImportacao.Campo FROM LayoutImportacao'
      
        'WHERE LayoutImportacao.Tabela = :Tabela AND LayoutImportacao.Col' +
        'una = :Coluna ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM   LayoutImportacao')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 732
    Top = 214
  end
  object dsLayInp: TDataSource
    DataSet = LayImp
    Left = 731
    Top = 265
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 470
    Top = 265
  end
  object dstNCM: TDataSource
    DataSet = tNCM
    Left = 677
    Top = 265
  end
  object vConv: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Response = RResponse
    Left = 515
    Top = 156
  end
  object tNCM: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Texto'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'UM'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ICMS'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IPI'
        DataType = ftFloat
      end
      item
        Name = 'II'
        DataType = ftFloat
      end
      item
        Name = 'PIS'
        DataType = ftFloat
      end
      item
        Name = 'COFINS'
        DataType = ftFloat
      end
      item
        Name = 'CIDE'
        DataType = ftFloat
      end
      item
        Name = 'CEST'
        DataType = ftBoolean
      end
      item
        Name = 'EX'
        DataType = ftBoolean
      end
      item
        Name = 'NVE'
        DataType = ftBoolean
      end
      item
        Name = 'AntD'
        DataType = ftBoolean
      end
      item
        Name = 'LI'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 676
    Top = 214
    object tNCMNCM: TStringField
      DisplayWidth = 10
      FieldName = 'NCM'
      EditMask = '####.##.##;0; '
      Size = 8
    end
    object tNCMTexto: TStringField
      DisplayWidth = 65
      FieldName = 'Texto'
      Size = 250
    end
    object tNCMUM: TStringField
      DisplayWidth = 5
      FieldName = 'UM'
      Size = 5
    end
    object tNCMICMS: TStringField
      DisplayWidth = 15
      FieldName = 'ICMS'
      Size = 15
    end
    object tNCMIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      DisplayFormat = ',##0.00'
    end
    object tNCMII: TFloatField
      DisplayWidth = 10
      FieldName = 'II'
      DisplayFormat = ',##0.00'
    end
    object tNCMPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'PIS'
      DisplayFormat = ',##0.00'
    end
    object tNCMCOFINS: TFloatField
      DisplayWidth = 10
      FieldName = 'COFINS'
      DisplayFormat = ',##0.00'
    end
    object tNCMCIDE: TFloatField
      DisplayWidth = 10
      FieldName = 'CIDE'
    end
    object tNCMCEST: TBooleanField
      DisplayWidth = 5
      FieldName = 'CEST'
      DisplayValues = 'a'
    end
    object tNCMEX: TBooleanField
      DisplayWidth = 5
      FieldName = 'EX'
      DisplayValues = 'a'
    end
    object tNCMNVE: TBooleanField
      DisplayWidth = 5
      FieldName = 'NVE'
      DisplayValues = 'a'
    end
    object tNCMAntD: TBooleanField
      DisplayWidth = 5
      FieldName = 'AntD'
      DisplayValues = 'a'
    end
    object tNCMLI: TBooleanField
      FieldName = 'LI'
      DisplayValues = 'a'
    end
  end
  object RClient: TRESTClient
    Authenticator = RAutentica
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://www.ncmweb.com.br/api/ncmweb/v1/subitens/8523.41.10?aliq' +
      'uotas=true&indicadores=true'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 276
    Top = 155
  end
  object RRequest: TRESTRequest
    Client = RClient
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Options = [poDoNotEncode]
        Value = 
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjA0NDgzMGIxN' +
          'ThlNDg5ZWUwY2NhYjM1MzMxYzcwMTkzYTQyZjk4NGJmZGIxZDE4NzJkYjA3N2NiO' +
          'TA4MGFlYmY4MjU1ZGM4OTgwZjI2YzhiIn0.eyJhdWQiOiI0NiIsImp0aSI6IjA0N' +
          'DgzMGIxNThlNDg5ZWUwY2NhYjM1MzMxYzcwMTkzYTQyZjk4NGJmZGIxZDE4NzJkY' +
          'jA3N2NiOTA4MGFlYmY4MjU1ZGM4OTgwZjI2YzhiIiwiaWF0IjoxNjU1Mjk4MDUwL' +
          'CJuYmYiOjE2NTUyOTgwNTAsImV4cCI6MTY4NjgzNDA1MCwic3ViIjoiODQ2NCIsI' +
          'nNjb3BlcyI6W119.iKr8i5f_70zk6tMQ2EPTfwYcPN8jnHY5jldq4LyvHTF0aHGq' +
          'RHBZW9btJeoBABmR4UWnDh7AzWQrhnTjPd8NymkKKXjlI5SXoH14uxhmjNbokqe4' +
          'u_4rUFa2Ug6FbvzlMlF1F5gNxkljZmpdzQRlE6M8onOOJX-X-fhYc9e0tP-xVlgL' +
          'dgFSovQE-WfVfFRlPMGe0o7X-PYbzUbhtq4BO8P0RfFuCl0EE5zNmSoqTNs0hpi8' +
          '28y_VAS-ZPPw2BqR32u8n2ce_DbiBRw-pjCmXiBr-dPZCO5CYk04CIHgK_x2iUlb' +
          'WAZzlMnMz1B8GY7pkxihhdCwB0a9jr9YWjWGh9F2451OGXqYkmCXw5M19yGIN_ps' +
          'Z9JlGcIlQ3UheVvGCG38MaffZPL_Oe7U2xGgEuljE3Vw6a3CkQZA2coTpzmfNKpk' +
          'suw8AaBtNtesul7LSpvsy_j8mdHDNX9ps6e1h8ZKVqmLkJVF08kbtRhyryfpludM' +
          'jpuY19Zu_fqZVCfB90xGFTR9xoq08j5OehXXvTCZUEXEwrJc06EJjea4goMu3acL' +
          '-5D1pyNFdyy3RmYGM0aqbS2SNgf6kJKDjvliToP5080Ne_IfnvpgRN5YzsTIkR81' +
          'UKBu4m8hPloc2gLSNYbRqLk7w4dVw6bnKcUPtb4JwMlTdZwmXtd5dLQqfLQ'
      end>
    Response = RResponse
    SynchronizedEvents = False
    Left = 326
    Top = 155
  end
  object RResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 388
    Top = 155
  end
  object RAutentica: TOAuth2Authenticator
    AccessToken = 
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjA0NDgzMGIxNThlNDg5' +
      'ZWUwY2NhYjM1MzMxYzcwMTkzYTQyZjk4NGJmZGIxZDE4NzJkYjA3N2NiOTA4MGFl' +
      'YmY4MjU1ZGM4OTgwZjI2YzhiIn0.eyJhdWQiOiI0NiIsImp0aSI6IjA0NDgzMGIx' +
      'NThlNDg5ZWUwY2NhYjM1MzMxYzcwMTkzYTQyZjk4NGJmZGIxZDE4NzJkYjA3N2Ni' +
      'OTA4MGFlYmY4MjU1ZGM4OTgwZjI2YzhiIiwiaWF0IjoxNjU1Mjk4MDUwLCJuYmYi' +
      'OjE2NTUyOTgwNTAsImV4cCI6MTY4NjgzNDA1MCwic3ViIjoiODQ2NCIsInNjb3Bl' +
      'cyI6W119.iKr8i5f_70zk6tMQ2EPTfwYcPN8jnHY5jldq4LyvHTF0aHGqRHBZW9b' +
      'tJeoBABmR4UWnDh7AzWQrhnTjPd8NymkKKXjlI5SXoH14uxhmjNbokqe4u_4rUFa' +
      '2Ug6FbvzlMlF1F5gNxkljZmpdzQRlE6M8onOOJX-X-fhYc9e0tP-xVlgLdgFSovQ' +
      'E-WfVfFRlPMGe0o7X-PYbzUbhtq4BO8P0RfFuCl0EE5zNmSoqTNs0hpi828y_VAS' +
      '-ZPPw2BqR32u8n2ce_DbiBRw-pjCmXiBr-dPZCO5CYk04CIHgK_x2iUlbWAZzlMn' +
      'Mz1B8GY7pkxihhdCwB0a9jr9YWjWGh9F2451OGXqYkmCXw5M19yGIN_psZ9JlGcI' +
      'lQ3UheVvGCG38MaffZPL_Oe7U2xGgEuljE3Vw6a3CkQZA2coTpzmfNKpksuw8AaB' +
      'tNtesul7LSpvsy_j8mdHDNX9ps6e1h8ZKVqmLkJVF08kbtRhyryfpludMjpuY19Z' +
      'u_fqZVCfB90xGFTR9xoq08j5OehXXvTCZUEXEwrJc06EJjea4goMu3acL-5D1pyN' +
      'Fdyy3RmYGM0aqbS2SNgf6kJKDjvliToP5080Ne_IfnvpgRN5YzsTIkR81UKBu4m8' +
      'hPloc2gLSNYbRqLk7w4dVw6bnKcUPtb4JwMlTdZwmXtd5dLQqfLQ'
    Left = 450
    Top = 154
  end
end
