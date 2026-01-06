object Importa_Excel: TImporta_Excel
  Left = 111
  Top = 100
  BorderStyle = bsDialog
  Caption = 'Representa v1.0'
  ClientHeight = 595
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ATTitlePanel1: TATTitlePanel
    Left = 0
    Top = 0
    Width = 894
    Height = 50
    Align = alTop
    Caption = 
      'Manuten'#231#227'o da Tabela de Produtos (Importa'#231#227'o de Planilhas do Mic' +
      'rosoft Excel)'
    Color = clWhite
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      0000000080000080000000808000800000008000800080800000C0C0C0008080
      80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000777777777777770000000000000000008888888877777700000000
      00000000000000000877777706E000000EEEEEEEEEEEEEEE0877777706E00000
      0EEEEEEEEEEEEEEE0877777706E000000EEEEEEEEEEEEEEE0888887706E00000
      0EEEEEEEEEEEEEEE0000007706E007E70EEEEEEEEEEEEEEE06E7E07706E00E7E
      0EEEEEEEEEEEEEEE067E707706E007E70EEEEEEEEEEEEEEE06E7E0006EE00E7E
      0EEEEEEEEEEEEEEE066670EEEEE007E70EEEEEEEEEEEEEEE0006E00000000E7E
      0EEEEEEEEEEEEEEE06067000000007E7E0000000000000006F06E00000000E7E
      7E7E7E7E7E7E06FEFE067000000007E7E7E7E7E7E7E706EFEF06E00000000E7E
      7E7E7E7E7E7E06FEFE067000000000000000000000006FEFEF00000000000000
      000EFEFEFEFEFEFEFE00000000000000000FEFEFEFEFEFEFEF00000000000000
      000EFEFEFEFEFEFEFE00000000000000000FEFEF000FEFEFEF00000000000000
      000000007F000000000000000000000000000007F00B00000000000000000000
      000077BF000F000000000000000000000007FBF7000B00000000000000007770
      077FBFB700BF0000000000000000BFB00BFBFBFBFBF00000000000000000FBF0
      0FBFBFBFBF00000000000000000000000000000000000000000000000000FFFF
      FFFFFFF80007FFF80007FFF80000F0000000F0000000F0000000F00000000000
      000000000000000000000000000000000000000000010000003F0000003F0000
      003F0000003F0000003F8000007FFC0001FFFC0001FFFC0001FFFC0001FFFE00
      03FFFF007FFFFE047FFF00047FFF00007FFF0000FFFF0001FFFF0003FFFF}
    IconType = idCustom
    Title = 'IMPORTA'#199#195'O DE DADOS'
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object bSair: TButton
    Left = 813
    Top = 108
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 0
    OnClick = bSairClick
  end
  object Grupo: TGroupBox
    Left = 7
    Top = 51
    Width = 799
    Height = 540
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 11
      Width = 226
      Height = 13
      Caption = 'Informe a Planilha do Microsoft Excel p/Importar'
    end
    object Label10: TLabel
      Left = 9
      Top = 54
      Width = 115
      Height = 13
      Caption = 'Fornecedor / Fabricante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Aviso: TVrLabel
      Left = 8
      Top = 96
      Width = 781
      Height = 169
      Style = lsNone
      BiDiMode = bdLeftToRight
      Color = clBlack
      Caption = 'Carregando arquivo. . .'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentBiDiMode = False
      Visible = False
    end
    object Label2: TLabel
      Left = 631
      Top = 296
      Width = 88
      Height = 13
      Caption = 'Tempo Decorrido :'
    end
    object VrClock1: TVrClock
      Left = 722
      Top = 293
      Width = 67
      Height = 19
      Threaded = True
      ClockType = ctElapsed
      ShowSeconds = True
      Blink = True
      Palette.Low = clGreen
      Palette.High = clLime
      Style = ns7x13
      Color = clBlack
      ParentColor = False
    end
    object bArquivo: TSpeedButton
      Left = 751
      Top = 26
      Width = 37
      Height = 22
      Caption = '...'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999800000000
        000099987777777777709998FFFFFFFFFF709998F7777F777F709998F7F7FF7F
        7F709998F7777FFF7F709998F7F7F7FFFF709998000077777F7000000EE007FF
        7F700660EE0607777F70900EE00007FF7F7090EE080777777F700EE00EE0FFFF
        0000000FF000FFFF8F099998FFFFFFFF80999998888888888999}
      Layout = blGlyphRight
      OnClick = bArquivoClick
    end
    object Grade: TDBGrid
      Left = 8
      Top = 96
      Width = 781
      Height = 193
      DataSource = DataSource5
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ColA'
          Title.Alignment = taCenter
          Title.Caption = 'A'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ColB'
          Title.Alignment = taCenter
          Title.Caption = 'B'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ColC'
          Title.Alignment = taCenter
          Title.Caption = 'C'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ColD'
          Title.Alignment = taCenter
          Title.Caption = 'D'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ColE'
          Title.Alignment = taCenter
          Title.Caption = 'E'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ColF'
          Title.Alignment = taCenter
          Title.Caption = 'F'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ColG'
          Title.Alignment = taCenter
          Title.Caption = 'G'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ColH'
          Title.Alignment = taCenter
          Title.Caption = 'H'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 9
      Top = 27
      Width = 739
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cFornecedorChange
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 319
      Width = 153
      Height = 212
      Caption = 'Colunas do Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object VrLabel1: TVrLabel
        Left = 4
        Top = 16
        Width = 23
        Height = 21
        ColorShadow = clSilver
        Color = clBtnFace
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object VrLabel2: TVrLabel
        Left = 4
        Top = 40
        Width = 23
        Height = 21
        ColorShadow = clSilver
        Color = clBtnFace
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object VrLabel3: TVrLabel
        Left = 4
        Top = 64
        Width = 23
        Height = 21
        ColorShadow = clSilver
        Color = clBtnFace
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object VrLabel4: TVrLabel
        Left = 4
        Top = 88
        Width = 23
        Height = 21
        ColorShadow = clSilver
        Color = clBtnFace
        Caption = 'D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object VrLabel5: TVrLabel
        Left = 4
        Top = 112
        Width = 23
        Height = 21
        ColorShadow = clSilver
        Color = clBtnFace
        Caption = 'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object VrLabel6: TVrLabel
        Left = 4
        Top = 136
        Width = 23
        Height = 21
        ColorShadow = clSilver
        Color = clBtnFace
        Caption = 'F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object VrLabel7: TVrLabel
        Left = 4
        Top = 160
        Width = 23
        Height = 21
        ColorShadow = clSilver
        Color = clBtnFace
        Caption = 'G'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object VrLabel8: TVrLabel
        Left = 4
        Top = 184
        Width = 23
        Height = 21
        ColorShadow = clSilver
        Color = clBtnFace
        Caption = 'H'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object ComboA: TComboBox
        Left = 26
        Top = 16
        Width = 120
        Height = 21
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnClick = ComboAClick
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Dimens'#245'es'
          'Quantidade'
          'Valor'
          'Grupo'
          'Estoque'
          'Aliquota do IPI')
      end
      object ComboH: TComboBox
        Left = 26
        Top = 184
        Width = 120
        Height = 21
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 7
        OnClick = ComboHClick
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Dimens'#245'es'
          'Quantidade'
          'Valor'
          'Grupo'
          'Estoque'
          'Aliquota do IPI')
      end
      object ComboC: TComboBox
        Left = 26
        Top = 64
        Width = 120
        Height = 21
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 2
        OnClick = ComboCClick
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Dimens'#245'es'
          'Quantidade'
          'Valor'
          'Grupo'
          'Estoque'
          'Aliquota do IPI')
      end
      object ComboB: TComboBox
        Left = 26
        Top = 40
        Width = 120
        Height = 21
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 1
        OnClick = ComboBClick
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Dimens'#245'es'
          'Quantidade'
          'Valor'
          'Grupo'
          'Estoque'
          'Aliquota do IPI')
      end
      object ComboE: TComboBox
        Left = 26
        Top = 112
        Width = 120
        Height = 21
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 4
        OnClick = ComboEClick
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Dimens'#245'es'
          'Quantidade'
          'Valor'
          'Grupo'
          'Estoque'
          'Aliquota do IPI')
      end
      object ComboD: TComboBox
        Left = 26
        Top = 88
        Width = 120
        Height = 21
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 3
        OnClick = ComboDClick
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Dimens'#245'es'
          'Quantidade'
          'Valor'
          'Grupo'
          'Estoque'
          'Aliquota do IPI')
      end
      object ComboF: TComboBox
        Left = 26
        Top = 136
        Width = 120
        Height = 21
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 5
        OnChange = ComboFChange
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Dimens'#245'es'
          'Quantidade'
          'Valor'
          'Grupo'
          'Estoque'
          'Aliquota do IPI')
      end
      object ComboG: TComboBox
        Left = 26
        Top = 160
        Width = 120
        Height = 21
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 6
        OnClick = ComboGClick
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Dimens'#245'es'
          'Quantidade'
          'Valor'
          'Grupo'
          'Estoque'
          'Aliquota do IPI')
      end
    end
    object cFornecedor: TComboBox
      Left = 104
      Top = 70
      Width = 685
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 2
      OnChange = cFornecedorChange
      OnClick = cFornecedorClick
    end
    object GroupBox9: TGroupBox
      Left = 169
      Top = 319
      Width = 456
      Height = 212
      Caption = 'Campos da Tabela de Produtos'
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Label22: TLabel
        Left = 15
        Top = 25
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 15
        Top = 48
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 15
        Top = 71
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 15
        Top = 92
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 15
        Top = 114
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'Dimen'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 15
        Top = 136
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 15
        Top = 158
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 15
        Top = 180
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 207
        Top = 92
        Width = 55
        Height = 13
        AutoSize = False
        Caption = 'Aliquota IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 22
        Width = 121
        Height = 21
        DataField = 'Codigo'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 44
        Width = 369
        Height = 21
        DataField = 'Descricao'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 80
        Top = 66
        Width = 41
        Height = 21
        DataField = 'Unidade'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 80
        Top = 88
        Width = 121
        Height = 21
        DataField = 'Preco'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 80
        Top = 110
        Width = 241
        Height = 21
        DataField = 'Dimensoes'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 80
        Top = 132
        Width = 41
        Height = 21
        DataField = 'Grupo'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 80
        Top = 154
        Width = 57
        Height = 21
        DataField = 'Desconto'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 80
        Top = 176
        Width = 57
        Height = 21
        DataField = 'Estoque'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 272
        Top = 88
        Width = 49
        Height = 21
        DataField = 'IPI'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
    object GroupBox2: TGroupBox
      Left = 632
      Top = 319
      Width = 157
      Height = 212
      Caption = 'Resultados'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Memo1: TMemo
        Left = 5
        Top = 14
        Width = 145
        Height = 192
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Lista: TDBGrid
      Left = 376
      Top = 463
      Width = 186
      Height = 53
      DataSource = DataSource1
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
    object cCodigo: TComboBox
      Left = 8
      Top = 70
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnChange = cFornecedorChange
      OnClick = cCodigoClick
    end
    object Barra: TProgressBar
      Left = 8
      Top = 294
      Width = 617
      Height = 16
      Min = 0
      Max = 100
      TabOrder = 8
      Visible = False
    end
  end
  object bImportar: TButton
    Left = 813
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Importar'
    Enabled = False
    TabOrder = 2
    OnClick = bImportarClick
  end
  object Button1: TButton
    Left = 813
    Top = 82
    Width = 75
    Height = 25
    Caption = '&Listar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    Ctl3D = False
    Left = 837
    Top = 144
  end
  object Produtos: TTable
    DatabaseName = 'Representa'
    TableName = 'Produtos.DB'
    Left = 461
    Top = 8
    object ProdutosCodigo: TStringField
      FieldName = 'Codigo'
      Transliterate = False
    end
    object ProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object ProdutosPreco: TCurrencyField
      FieldName = 'Preco'
      DisplayFormat = '###,##0.00;0; '
      EditFormat = '###,##0.00;0; '
    end
    object ProdutosGrupo: TSmallintField
      FieldName = 'Grupo'
    end
    object ProdutosDimensoes: TStringField
      FieldName = 'Dimensoes'
    end
    object ProdutosUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object ProdutosEstoque: TIntegerField
      FieldName = 'Estoque'
    end
    object ProdutosDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object ProdutosFabricante: TIntegerField
      FieldName = 'Fabricante'
    end
    object ProdutosQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object ProdutosRegistro: TAutoIncField
      FieldName = 'Registro'
      ReadOnly = True
    end
    object ProdutosComissao: TFloatField
      FieldName = 'Comissao'
    end
    object ProdutosObservacao: TStringField
      FieldName = 'Observacao'
      Size = 60
    end
    object ProdutosVendidos: TIntegerField
      FieldName = 'Vendidos'
    end
    object ProdutosTotal: TCurrencyField
      FieldName = 'Total'
    end
    object ProdutosImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object ProdutosSituacao: TStringField
      FieldName = 'Situacao'
      Size = 7
    end
    object ProdutosIPI: TFloatField
      FieldName = 'IPI'
    end
    object ProdutosPromocao: TBooleanField
      FieldName = 'Promocao'
    end
  end
  object DataSource1: TDataSource
    DataSet = Produtos
    Left = 493
    Top = 8
  end
  object Fornecedores: TTable
    DatabaseName = 'Representa'
    IndexFieldNames = 'Nome'
    TableName = 'Fornecedores.DB'
    Left = 524
    Top = 8
    object FornecedoresCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object FornecedoresNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object DataSource4: TDataSource
    DataSet = Fornecedores
    Left = 556
    Top = 8
  end
  object Grupos: TTable
    DatabaseName = 'Representa'
    TableName = 'Grupos.DB'
    Left = 589
    Top = 8
    object GruposCodigo_Grupo: TSmallintField
      FieldName = 'Codigo_Grupo'
    end
    object GruposDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object GruposFabricante: TSmallintField
      FieldName = 'Fabricante'
    end
  end
  object DataSource2: TDataSource
    DataSet = Grupos
    Left = 621
    Top = 8
  end
  object Config: TTable
    DatabaseName = 'Representa'
    TableName = 'Config.DB'
    Left = 653
    Top = 8
    object ConfigGrupo: TSmallintField
      FieldName = 'Grupo'
    end
  end
  object DataSource3: TDataSource
    DataSet = Config
    Left = 685
    Top = 8
  end
  object Temp: TTable
    DatabaseName = 'Representa'
    Exclusive = True
    TableName = 'Excel_Temp.DB'
    Left = 728
    Top = 8
    object TempColA: TStringField
      FieldName = 'ColA'
    end
    object TempColB: TStringField
      FieldName = 'ColB'
      Size = 50
    end
    object TempColC: TStringField
      FieldName = 'ColC'
    end
    object TempColD: TStringField
      FieldName = 'ColD'
      Size = 8
    end
    object TempColE: TStringField
      FieldName = 'ColE'
      Size = 8
    end
    object TempColF: TStringField
      FieldName = 'ColF'
      Size = 8
    end
    object TempColG: TStringField
      FieldName = 'ColG'
      Size = 8
    end
    object TempColH: TStringField
      FieldName = 'ColH'
      Size = 8
    end
  end
  object DataSource5: TDataSource
    DataSet = Temp
    Left = 760
    Top = 8
  end
end
