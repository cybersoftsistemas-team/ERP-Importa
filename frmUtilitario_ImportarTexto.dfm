object Utilitario_ImportarTexto: TUtilitario_ImportarTexto
  Left = 256
  Top = 48
  BorderStyle = bsDialog
  Caption = 'Utilitario_ImportarTexto'
  ClientHeight = 634
  ClientWidth = 951
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
  DesignSize = (
    951
    634)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 951
    Height = 46
    Align = alTop
    Stretch = True
  end
  object bEstoque: TSpeedButton
    Left = 631
    Top = 76
    Width = 23
    Height = 22
    Caption = '...'
    Enabled = False
    OnClick = bEstoqueClick
  end
  object bNotasEntrada: TSpeedButton
    Left = 631
    Top = 120
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = bNotasEntradaClick
  end
  object bNotasSaida: TSpeedButton
    Left = 631
    Top = 164
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = bNotasSaidaClick
  end
  object bParticipante: TSpeedButton
    Left = 631
    Top = 208
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = bParticipanteClick
  end
  object SpeedButton1: TSpeedButton
    Left = 631
    Top = 186
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 631
    Top = 142
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton2Click
  end
  object bInventario: TSpeedButton
    Left = 631
    Top = 98
    Width = 23
    Height = 22
    Caption = '...'
    Enabled = False
    OnClick = bInventarioClick
  end
  object bProdutos: TSpeedButton
    Left = 631
    Top = 54
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = bProdutosClick
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 199
    Height = 23
    Caption = 'IMPORTA'#199#195'O DE DADOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 8
    Top = 24
    Width = 245
    Height = 18
    Caption = 'Importa'#231#227'o de dados em arquivo texto.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Image2: TImage
    Left = 916
    Top = 9
    Width = 30
    Height = 33
    Anchors = [akTop, akRight]
    Picture.Data = {
      055449636F6E0000010002001010000000000000680500002600000020200000
      00000000A80800008E0500002800000010000000200000000100080000000000
      4001000000000000000000000001000000000000000000000000800000800000
      00808000800000008000800080800000C0C0C000C0DCC000F0CAA600CCFFFF00
      99FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CCFF0033CCFF00
      00CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099FF00FF66FF00
      CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33FF009933FF00
      6633FF003333FF000033FF00CC00FF009900FF006600FF003300FF00FFFFCC00
      CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCCCC00CCCCCC00
      99CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999CC006699CC00
      3399CC000099CC00FF66CC00CC66CC009966CC006666CC003366CC000066CC00
      FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00CC00CC00CC00
      9900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF990066FF9900
      33FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC990000CC9900
      FF999900CC99990099999900669999003399990000999900FF669900CC669900
      99669900666699003366990000669900FF339900CC3399009933990066339900
      3333990000339900FF009900CC00990099009900660099003300990000009900
      FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC6600CCCC6600
      99CC660066CC660033CC660000CC6600FF996600CC9966009999660066996600
      3399660000996600FF666600CC66660099666600666666003366660000666600
      FF336600CC33660099336600663366003333660000336600FF006600CC006600
      99006600660066003300660000006600FFFF3300CCFF330099FF330066FF3300
      33FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC330000CC3300
      FF993300CC99330099993300669933003399330000993300FF663300CC663300
      99663300666633003366330000663300FF333300CC3333009933330066333300
      3333330000333300FF003300CC00330099003300660033003300330000003300
      CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC000066CC0000
      33CC000000CC0000FF990000CC99000099990000669900003399000000990000
      FF660000CC66000099660000666600000066000033660000FF330000CC330000
      99330000663300003333000000330000CC000000990000006600000033000000
      0000DD000000BB000000AA000000880000007700000055000000440000002200
      00DD000000BB000000AA00000088000000770000005500000044000000220000
      DDDDDD0055555500777777007777770044444400222222001111110077000000
      550000004400000022000000F0FBFF00A4A0A000808080000000FF0000FF0000
      00FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000EFEF
      000000000000000000000000EFEC5CB2B2000000000000000000EFEC5B3131B2
      B200000000000000EFEC5B31315C09B2B20000000000EFEC5B3131315B8831B2
      B2000000EFEC5B3131315BEC318831B2B2000000EF313131ECEC885C5CB309B2
      B2000000EF3188EC5C31ECB209EC09B2B2000000EF3188885CEC5C315B0931B2
      B2000000EF31B35B88315B0931313188F0000000EF5C88315B09315C87EC875B
      EF000000EF31870931315D5C5B5B5BEC00000000EF313131315D875B5B5B5CEF
      00000000EF31315D875B87EFECB2EF0000000000EFED875B87EF000000000000
      0000000000EFECEF000000000000000000000000FFCFFFFFFF07FFFFFC07FFFF
      F007FFFFC007FFFF0007FFFF0007FFFF0007FFFF0007FFFF0007FFFF0007FFFF
      000FFFFF000FFFFF001FFFFF03FFFFFF8FFFFFFF280000002000000040000000
      0100080000000000800400000000000000000000000100000000000000000000
      000080000080000000808000800000008000800080800000C0C0C000C0DCC000
      F0CAA600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF00
      66CCFF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF00
      0099FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00
      CC33FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF00
      3300FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00
      FFCCCC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC00
      9999CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC00
      3366CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00
      FF00CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF9900
      99FF990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC9900
      33CC990000CC9900FF999900CC99990099999900669999003399990000999900
      FF669900CC66990099669900666699003366990000669900FF339900CC339900
      99339900663399003333990000339900FF009900CC0099009900990066009900
      3300990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600
      FFCC6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC996600
      99996600669966003399660000996600FF666600CC6666009966660066666600
      3366660000666600FF336600CC33660099336600663366003333660000336600
      FF006600CC00660099006600660066003300660000006600FFFF3300CCFF3300
      99FF330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC3300
      33CC330000CC3300FF993300CC99330099993300669933003399330000993300
      FF663300CC66330099663300666633003366330000663300FF333300CC333300
      99333300663333003333330000333300FF003300CC0033009900330066003300
      3300330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC0000
      99CC000066CC000033CC000000CC0000FF990000CC9900009999000066990000
      3399000000990000FF660000CC66000099660000666600000066000033660000
      FF330000CC33000099330000663300003333000000330000CC00000099000000
      66000000330000000000DD000000BB000000AA00000088000000770000005500
      000044000000220000DD000000BB000000AA0000008800000077000000550000
      0044000000220000DDDDDD005555550077777700777777004444440022222200
      1111110077000000550000004400000022000000F0FBFF00A4A0A00080808000
      0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000EF8600860000000000000000000000
      000000000000000000000000000000EF86868600860000000000000000000000
      00000000000000000000000000EF865B31318600860000000000000000000000
      0000000000000000000000EF865B313131318600860000000000000000000000
      000000000000000000EF865B3131313131318600860000000000000000000000
      00000000000000EF865B31313131313131318600860000000000000000000000
      0000000000EF865B313131313131310086318600860000000000000000000000
      000000EF865B313131313131315B003131318600860000000000000000000000
      00EF865B313131313131315B86310031313186008600000000000000000000EF
      865B313131313131315B8600313100313131860086000000000000000000865B
      313131313131315B863100313131003131318600860000000000000000003131
      31313131315B8600313100313131000086318600860000000000000000003131
      3131315B00000031000031313100003131318600860000000000000000003131
      31008600313131313100005B863100313131860086000000000000000000315B
      0031310031003131005B86003131005B86318600860000000000000000003131
      003131000031005B00313131315B863131318600860000000000000000003131
      00313100315B00313131315B8631313131318600860000000000000000003131
      0031315B00003131315B8631313131313131FF005B0000000000000000003131
      000086313131315B8631313131FF3131FF5B005B5B0000000000000000003100
      00313131315B8631313131FF5BEFEF5BEFEF5B5B310000000000000000003131
      0031315B8631313131FF5BEFEF5BEFEF5B5B5B5B000000000000000000003131
      005B86313131313131EFEF5B5B5B5B5B5B5B5B0000000000000000000000315B
      8631313131313131FFEF5B5B5B5B5B5B5B5B86EF000000000000000000003131
      313131313131FF5BEFEF5B5B5B5B5B5B5B310000000000000000000000003131
      31313131FF5BEFEF5B5B315B5B5B5B315BEFEF00000000000000000000003131
      3131FF5BEFEF5B5B315BEF005B315BEF00000000000000000000000000003131
      FF5BEFEF5B5B315BEF000000000000000000000000000000000000000000FF5B
      EFEF5B5B315BEF000000000000000000000000000000000000000000000000EF
      5B5B315BEF000000000000000000000000000000000000000000000000000000
      315BEF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFFFC7F
      FFFFF03FFFFFC03FFFFF003FFFFC003FFFF0003FFFC0003FFF00003FFC00003F
      F000003FC000003F8000003F8000003F8000003F8000003F8000003F8000003F
      8000003F8000003F8000003F8000003F8000007F800000FF800000FF800001FF
      800001FF800007FF80031FFF800FFFFF803FFFFFE0FFFFFFE3FFFFFF}
  end
  object Panel1: TPanel
    Left = 0
    Top = 604
    Width = 951
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      951
      30)
    object bSair: TButton
      Left = 882
      Top = 1
      Width = 69
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImportar: TButton
      Left = 90
      Top = 1
      Width = 69
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Caption = '&Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImportarClick
    end
    object bCarregar: TButton
      Left = 1
      Top = 1
      Width = 89
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Caption = '&Carregar Dados'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bCarregarClick
    end
  end
  object PageControl1: TPageControl
    Left = 3
    Top = 280
    Width = 945
    Height = 321
    ActivePage = AbaInventario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabHeight = 28
    TabOrder = 2
    object AbaProdutos: TTabSheet
      Caption = '&Produtos'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeProdutos: TRxDBGrid
        Left = 0
        Top = 0
        Width = 937
        Height = 283
        Align = alClient
        DataSource = dsProdutosTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        RowColor2 = 16776176
      end
    end
    object AbaEstoque: TTabSheet
      Caption = '&Estoque'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeEstoque: TRxDBGrid
        Left = 0
        Top = 0
        Width = 937
        Height = 283
        Align = alClient
        DataSource = dsEstoqueTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        RowColor2 = 16776176
      end
    end
    object AbaInventario: TTabSheet
      Caption = '&Invent'#225'rio'
      ImageIndex = 6
      object GradeInventario: TRxDBGrid
        Left = 0
        Top = 0
        Width = 937
        Height = 283
        Align = alClient
        DataSource = dsInventarioTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        RowColor2 = 16776176
      end
    end
    object AbaClientes: TTabSheet
      Caption = '&Clientes'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeClientes: TRxDBGrid
        Left = 0
        Top = 0
        Width = 937
        Height = 283
        Align = alClient
        DataSource = dsClientesTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        RowColor2 = 16776176
      end
    end
    object AbaFornecedores: TTabSheet
      Caption = '&Fornecedores'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeFornecedores: TRxDBGrid
        Left = 0
        Top = 0
        Width = 937
        Height = 283
        Align = alClient
        DataSource = dsFornecedoresTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        RowColor2 = 16776176
      end
    end
    object AbaNotas: TTabSheet
      Caption = '&Notas Fiscais'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeNotasItens: TRxDBGrid
        Left = 0
        Top = 127
        Width = 937
        Height = 156
        Align = alBottom
        Ctl3D = True
        DataSource = dsNotasTempItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        RowColor2 = 16776176
      end
      object GradeNotas: TRxDBGrid
        Left = 0
        Top = 0
        Width = 937
        Height = 127
        Align = alTop
        DataSource = dsNotasTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        RowColor2 = 16776176
      end
    end
    object AbaErros: TTabSheet
      Caption = '&Erros'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoErros: TMemo
        Left = 0
        Top = 0
        Width = 937
        Height = 283
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object AbaAvisos: TTabSheet
      Caption = '&Avisos'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoAvisos: TMemo
        Left = 0
        Top = 0
        Width = 937
        Height = 283
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object cParticipanteMai: TCheckBox
    Left = 696
    Top = 89
    Width = 250
    Height = 17
    Caption = 'Nomes de Clientes/Fornecedores em mai'#250'sculo.'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object StaticText8: TStaticText
    Left = 3
    Top = 54
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Produtos'
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
  object cProdutos: TEdit
    Left = 122
    Top = 54
    Width = 507
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 
      'H:\Importa'#231#227'o Estoque\MTRADING MATRIZ\Estoque\CADPRODU\CADPRODU.' +
      'txt'
  end
  object StaticText11: TStaticText
    Left = 695
    Top = 54
    Width = 104
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data Para as notas'
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
  object cDataEmissao: TDateEdit
    Left = 801
    Top = 54
    Width = 103
    Height = 21
    CheckOnExit = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GlyphKind = gkCustom
    Glyph.Data = {
      D2080000424DD208000000000000360000002800000026000000130000000100
      1800000000009C08000000000000000000000000000000000000171717151515
      1515151515151515151515151515151515151515151515151515151515151515
      1515151515151515151515151515151516161617171715151515151515151515
      1515151515151515151515151515151515151515151515151515151515151515
      15151515151515151516161600005A5A5A555555565656555555555555565656
      5656565757575858585858585757575757575555555555555555555555555555
      555555555959595A5A5A55555556565655555555555556565656565657575758
      5858585858575757575757555555555555555555555555555555555555595959
      0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
      A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
      B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
      B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
      E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
      FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
      F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
      FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
      6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
      D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
      FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
      FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
      ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
      DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
      4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
      FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
      FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
      FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
      FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
      FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
      EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
      F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
      C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
      00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
      282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
      C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
      FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
      F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
      F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
      F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
      F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
      C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
      4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
      C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
      2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
      C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
      B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
      75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
      43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
      A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
      6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
      7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
      2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
      15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
      6868687676768686866969696262625D5D5D61616122222200000C10093F391D
      473A0050410045380068655D4946394F4000776300705D007360007D67004F45
      11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
      28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
      3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
      464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
      00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
      4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
      00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
      594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
      2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
      10108181811717172222223E3E3E2B2B2B1B1B1B0000}
    NumGlyphs = 2
    ParentFont = False
    YearDigits = dyFour
    TabOrder = 6
  end
  object StaticText2: TStaticText
    Left = 3
    Top = 76
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Estoque'
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
  object StaticText1: TStaticText
    Left = 3
    Top = 120
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Notas de Entrada'
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
  object StaticText3: TStaticText
    Left = 3
    Top = 164
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Notas de Sa'#237'da'
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
  object cEstoque: TEdit
    Left = 122
    Top = 76
    Width = 507
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Text = 'H:\Importa'#231#227'o Estoque\MTRADING MATRIZ\Estoque\CADPRODU\RCPE.txt'
  end
  object cNotasEntrada: TEdit
    Left = 122
    Top = 120
    Width = 507
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    Text = 
      'H:\Importa'#231#227'o Estoque\MTRADING MATRIZ\Estoque\CADPRODU\ENTRADA.t' +
      'xt'
  end
  object cNotasSaida: TEdit
    Left = 122
    Top = 164
    Width = 507
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    Text = 'H:\Importa'#231#227'o Estoque\MTRADING MATRIZ\Estoque\CADPRODU\SAIDA.txt'
  end
  object StaticText4: TStaticText
    Left = 3
    Top = 208
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Clientes/Fornecedores'
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
  object cParticipante: TEdit
    Left = 122
    Top = 208
    Width = 507
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    Text = 
      'H:\Importa'#231#227'o Estoque\MTRADING MATRIZ\Estoque\CADPRODU\TERCEIROS' +
      '.TXT'
  end
  object StaticText5: TStaticText
    Left = 3
    Top = 142
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Itens Nota Entrada'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 15
    Transparent = False
    StyleElements = []
  end
  object cItensEntrada: TEdit
    Left = 122
    Top = 142
    Width = 507
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    Text = 
      'H:\Importa'#231#227'o Estoque\MTRADING MATRIZ\Estoque\CADPRODU\ITEM_ENT.' +
      'txt'
  end
  object StaticText6: TStaticText
    Left = 3
    Top = 186
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Itens Nota Sa'#237'da'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 17
    Transparent = False
    StyleElements = []
  end
  object cItensSaida: TEdit
    Left = 122
    Top = 186
    Width = 507
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    Text = 
      'H:\Importa'#231#227'o Estoque\MTRADING MATRIZ\Estoque\CADPRODU\ITEM_SAI.' +
      'txt'
  end
  object StaticText7: TStaticText
    Left = 3
    Top = 98
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Invent'#225'rio'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 19
    Transparent = False
    StyleElements = []
  end
  object cInventario: TEdit
    Left = 122
    Top = 98
    Width = 507
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    Text = 
      'H:\Importa'#231#227'o Estoque\MTRADING MATRIZ\Estoque\CADPRODU\LFSIVIMP.' +
      'txt'
  end
  object StaticText12: TStaticText
    Left = 3
    Top = 231
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'CFOP = Tipo Nota'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 21
    Transparent = False
    StyleElements = []
  end
  object cTipoNota: TEdit
    Left = 122
    Top = 231
    Width = 824
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    Text = '3102=9,3949=1,6102=6,6912=12,6949=4'
  end
  object cModificar: TCheckBox
    Left = 695
    Top = 113
    Width = 169
    Height = 17
    Caption = 'Substituir registros encontrados.'
    Checked = True
    State = cbChecked
    TabOrder = 23
  end
  object StaticText9: TStaticText
    Left = 3
    Top = 254
    Width = 117
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'CFOP = Refer'#234'ncia'
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
  object cReferencia: TEdit
    Left = 122
    Top = 254
    Width = 824
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
    Text = 
      '1120=,1253=9,1303=10,1353=8,1501=16,1556=5,1653=17,1906=7,1907=,' +
      '1908=,1910=1,51933=,2102=3,2202=,2353=8,2501=16,2556=5,2913=,293' +
      '3='
  end
  object cImpProdutos: TCheckBox
    Left = 656
    Top = 57
    Width = 18
    Height = 17
    TabOrder = 26
  end
  object cImpEstoque: TCheckBox
    Left = 656
    Top = 78
    Width = 18
    Height = 17
    TabOrder = 27
  end
  object Inventario: TCheckBox
    Left = 656
    Top = 100
    Width = 18
    Height = 17
    TabOrder = 28
  end
  object cImpNotas: TCheckBox
    Left = 656
    Top = 122
    Width = 18
    Height = 17
    TabOrder = 29
  end
  object cImpCliFor: TCheckBox
    Left = 656
    Top = 210
    Width = 18
    Height = 17
    TabOrder = 30
  end
  object AbrirArquivo: TOpenDialog
    Left = 520
    Top = 13
  end
  object NotasTemp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasTemp'
      
        '  (Linha, CNPJ, CNPJ_Participante, Numero, Tipo, Pedido, Saida_E' +
        'ntrada, Data_Emissao, Data_EntradaSaida, Hora_EntradaSaida, Tipo' +
        '_Nota, Serie, Modelo, Processo, FUNDAP, Lucro, Lucro_Valor, DI, ' +
        'Data_DI, Natureza_Codigo, Inscricao_Substituto, Inf_Complementar' +
        'es, Cliente_Codigo, Fornecedor_Codigo, Estado, Transportador_Cod' +
        'igo, Modalidade_Frete, Volume_Quantidade, Volume_Especie, Volume' +
        '_Marca, Volume_Numero, Volume_PesoLiquido, Volume_PesoBruto, Val' +
        'or_PIS, Valor_COFINS, Aliquota_ICMSOper, BCICMS, Valor_ICMS, Ali' +
        'quota_ICMSSub, BCICMS_Substitutivo, ValorICMS_Substitutivo, Valo' +
        'r_TotalProdutos, Total_Frete, Valor_Seguro, Valor_OutrasDespesas' +
        ', BCIPI, Valor_TotalIPI, Valor_TotalNota, Rateio_Despesas, Valor' +
        '_TotalMVA, Valor_ICMSReducao, Valor_TotalII, Modalidade_Pgto, De' +
        'sconto_Percentual, Desconto_Tipo, Total_Descontos, Cancelada, Mo' +
        'tivo_Cancelamento, Complementar, Devolucao, Ajuste, Nota_Referen' +
        'cia, Data_Referencia, NFe_cNF, Nfe_cNFRef, NFe_Lote, NFe_Recibo,' +
        ' Nfe_DataRecibo, NFe_Protocolo, NFe_DataProtocolo, Nfe_Denegada,' +
        ' Imprimir_DANFE, DPEC, Operacao_Veiculo, Transporte_Placa, Trans' +
        'porte_PlacaUF, Transporte_NomeMotorista, Transporte_RGMotorista,' +
        ' Transporte_CodigoANTT, Taxa_Cambio, Valor_IsentasICMS, Valor_Ou' +
        'trasICMS, Valor_IsentasIPI, Valor_OutrasIPI, Incentivo_Fiscal, E' +
        'mitente)'
      'VALUES'
      
        '  (:Linha, :CNPJ, :CNPJ_Participante, :Numero, :Tipo, :Pedido, :' +
        'Saida_Entrada, :Data_Emissao, :Data_EntradaSaida, :Hora_EntradaS' +
        'aida, :Tipo_Nota, :Serie, :Modelo, :Processo, :FUNDAP, :Lucro, :' +
        'Lucro_Valor, :DI, :Data_DI, :Natureza_Codigo, :Inscricao_Substit' +
        'uto, :Inf_Complementares, :Cliente_Codigo, :Fornecedor_Codigo, :' +
        'Estado, :Transportador_Codigo, :Modalidade_Frete, :Volume_Quanti' +
        'dade, :Volume_Especie, :Volume_Marca, :Volume_Numero, :Volume_Pe' +
        'soLiquido, :Volume_PesoBruto, :Valor_PIS, :Valor_COFINS, :Aliquo' +
        'ta_ICMSOper, :BCICMS, :Valor_ICMS, :Aliquota_ICMSSub, :BCICMS_Su' +
        'bstitutivo, :ValorICMS_Substitutivo, :Valor_TotalProdutos, :Tota' +
        'l_Frete, :Valor_Seguro, :Valor_OutrasDespesas, :BCIPI, :Valor_To' +
        'talIPI, :Valor_TotalNota, :Rateio_Despesas, :Valor_TotalMVA, :Va' +
        'lor_ICMSReducao, :Valor_TotalII, :Modalidade_Pgto, :Desconto_Per' +
        'centual, :Desconto_Tipo, :Total_Descontos, :Cancelada, :Motivo_C' +
        'ancelamento, :Complementar, :Devolucao, :Ajuste, :Nota_Referenci' +
        'a, :Data_Referencia, :NFe_cNF, :Nfe_cNFRef, :NFe_Lote, :NFe_Reci' +
        'bo, :Nfe_DataRecibo, :NFe_Protocolo, :NFe_DataProtocolo, :Nfe_De' +
        'negada, :Imprimir_DANFE, :DPEC, :Operacao_Veiculo, :Transporte_P' +
        'laca, :Transporte_PlacaUF, :Transporte_NomeMotorista, :Transport' +
        'e_RGMotorista, :Transporte_CodigoANTT, :Taxa_Cambio, :Valor_Isen' +
        'tasICMS, :Valor_OutrasICMS, :Valor_IsentasIPI, :Valor_OutrasIPI,' +
        ' :Incentivo_Fiscal, :Emitente)')
    SQLDelete.Strings = (
      'DELETE FROM NotasTemp'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLUpdate.Strings = (
      'UPDATE NotasTemp'
      'SET'
      
        '  Linha = :Linha, CNPJ = :CNPJ, CNPJ_Participante = :CNPJ_Partic' +
        'ipante, Numero = :Numero, Tipo = :Tipo, Pedido = :Pedido, Saida_' +
        'Entrada = :Saida_Entrada, Data_Emissao = :Data_Emissao, Data_Ent' +
        'radaSaida = :Data_EntradaSaida, Hora_EntradaSaida = :Hora_Entrad' +
        'aSaida, Tipo_Nota = :Tipo_Nota, Serie = :Serie, Modelo = :Modelo' +
        ', Processo = :Processo, FUNDAP = :FUNDAP, Lucro = :Lucro, Lucro_' +
        'Valor = :Lucro_Valor, DI = :DI, Data_DI = :Data_DI, Natureza_Cod' +
        'igo = :Natureza_Codigo, Inscricao_Substituto = :Inscricao_Substi' +
        'tuto, Inf_Complementares = :Inf_Complementares, Cliente_Codigo =' +
        ' :Cliente_Codigo, Fornecedor_Codigo = :Fornecedor_Codigo, Estado' +
        ' = :Estado, Transportador_Codigo = :Transportador_Codigo, Modali' +
        'dade_Frete = :Modalidade_Frete, Volume_Quantidade = :Volume_Quan' +
        'tidade, Volume_Especie = :Volume_Especie, Volume_Marca = :Volume' +
        '_Marca, Volume_Numero = :Volume_Numero, Volume_PesoLiquido = :Vo' +
        'lume_PesoLiquido, Volume_PesoBruto = :Volume_PesoBruto, Valor_PI' +
        'S = :Valor_PIS, Valor_COFINS = :Valor_COFINS, Aliquota_ICMSOper ' +
        '= :Aliquota_ICMSOper, BCICMS = :BCICMS, Valor_ICMS = :Valor_ICMS' +
        ', Aliquota_ICMSSub = :Aliquota_ICMSSub, BCICMS_Substitutivo = :B' +
        'CICMS_Substitutivo, ValorICMS_Substitutivo = :ValorICMS_Substitu' +
        'tivo, Valor_TotalProdutos = :Valor_TotalProdutos, Total_Frete = ' +
        ':Total_Frete, Valor_Seguro = :Valor_Seguro, Valor_OutrasDespesas' +
        ' = :Valor_OutrasDespesas, BCIPI = :BCIPI, Valor_TotalIPI = :Valo' +
        'r_TotalIPI, Valor_TotalNota = :Valor_TotalNota, Rateio_Despesas ' +
        '= :Rateio_Despesas, Valor_TotalMVA = :Valor_TotalMVA, Valor_ICMS' +
        'Reducao = :Valor_ICMSReducao, Valor_TotalII = :Valor_TotalII, Mo' +
        'dalidade_Pgto = :Modalidade_Pgto, Desconto_Percentual = :Descont' +
        'o_Percentual, Desconto_Tipo = :Desconto_Tipo, Total_Descontos = ' +
        ':Total_Descontos, Cancelada = :Cancelada, Motivo_Cancelamento = ' +
        ':Motivo_Cancelamento, Complementar = :Complementar, Devolucao = ' +
        ':Devolucao, Ajuste = :Ajuste, Nota_Referencia = :Nota_Referencia' +
        ', Data_Referencia = :Data_Referencia, NFe_cNF = :NFe_cNF, Nfe_cN' +
        'FRef = :Nfe_cNFRef, NFe_Lote = :NFe_Lote, NFe_Recibo = :NFe_Reci' +
        'bo, Nfe_DataRecibo = :Nfe_DataRecibo, NFe_Protocolo = :NFe_Proto' +
        'colo, NFe_DataProtocolo = :NFe_DataProtocolo, Nfe_Denegada = :Nf' +
        'e_Denegada, Imprimir_DANFE = :Imprimir_DANFE, DPEC = :DPEC, Oper' +
        'acao_Veiculo = :Operacao_Veiculo, Transporte_Placa = :Transporte' +
        '_Placa, Transporte_PlacaUF = :Transporte_PlacaUF, Transporte_Nom' +
        'eMotorista = :Transporte_NomeMotorista, Transporte_RGMotorista =' +
        ' :Transporte_RGMotorista, Transporte_CodigoANTT = :Transporte_Co' +
        'digoANTT, Taxa_Cambio = :Taxa_Cambio, Valor_IsentasICMS = :Valor' +
        '_IsentasICMS, Valor_OutrasICMS = :Valor_OutrasICMS, Valor_Isenta' +
        'sIPI = :Valor_IsentasIPI, Valor_OutrasIPI = :Valor_OutrasIPI, In' +
        'centivo_Fiscal = :Incentivo_Fiscal, Emitente = :Emitente'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLRefresh.Strings = (
      
        'SELECT NotasTemp.Linha, NotasTemp.CNPJ, NotasTemp.CNPJ_Participa' +
        'nte, NotasTemp.Numero, NotasTemp.Tipo, NotasTemp.Pedido, NotasTe' +
        'mp.Saida_Entrada, NotasTemp.Data_Emissao, NotasTemp.Data_Entrada' +
        'Saida, NotasTemp.Hora_EntradaSaida, NotasTemp.Tipo_Nota, NotasTe' +
        'mp.Serie, NotasTemp.Modelo, NotasTemp.Processo, NotasTemp.FUNDAP' +
        ', NotasTemp.Lucro, NotasTemp.Lucro_Valor, NotasTemp.DI, NotasTem' +
        'p.Data_DI, NotasTemp.Natureza_Codigo, NotasTemp.Inscricao_Substi' +
        'tuto, NotasTemp.Inf_Complementares, NotasTemp.Cliente_Codigo, No' +
        'tasTemp.Fornecedor_Codigo, NotasTemp.Estado, NotasTemp.Transport' +
        'ador_Codigo, NotasTemp.Modalidade_Frete, NotasTemp.Volume_Quanti' +
        'dade, NotasTemp.Volume_Especie, NotasTemp.Volume_Marca, NotasTem' +
        'p.Volume_Numero, NotasTemp.Volume_PesoLiquido, NotasTemp.Volume_' +
        'PesoBruto, NotasTemp.Valor_PIS, NotasTemp.Valor_COFINS, NotasTem' +
        'p.Aliquota_ICMSOper, NotasTemp.BCICMS, NotasTemp.Valor_ICMS, Not' +
        'asTemp.Aliquota_ICMSSub, NotasTemp.BCICMS_Substitutivo, NotasTem' +
        'p.ValorICMS_Substitutivo, NotasTemp.Valor_TotalProdutos, NotasTe' +
        'mp.Total_Frete, NotasTemp.Valor_Seguro, NotasTemp.Valor_OutrasDe' +
        'spesas, NotasTemp.BCIPI, NotasTemp.Valor_TotalIPI, NotasTemp.Val' +
        'or_TotalNota, NotasTemp.Rateio_Despesas, NotasTemp.Valor_TotalMV' +
        'A, NotasTemp.Valor_ICMSReducao, NotasTemp.Valor_TotalII, NotasTe' +
        'mp.Modalidade_Pgto, NotasTemp.Desconto_Percentual, NotasTemp.Des' +
        'conto_Tipo, NotasTemp.Total_Descontos, NotasTemp.Cancelada, Nota' +
        'sTemp.Motivo_Cancelamento, NotasTemp.Complementar, NotasTemp.Dev' +
        'olucao, NotasTemp.Ajuste, NotasTemp.Nota_Referencia, NotasTemp.D' +
        'ata_Referencia, NotasTemp.NFe_cNF, NotasTemp.Nfe_cNFRef, NotasTe' +
        'mp.NFe_Lote, NotasTemp.NFe_Recibo, NotasTemp.Nfe_DataRecibo, Not' +
        'asTemp.NFe_Protocolo, NotasTemp.NFe_DataProtocolo, NotasTemp.Nfe' +
        '_Denegada, NotasTemp.Imprimir_DANFE, NotasTemp.DPEC, NotasTemp.O' +
        'peracao_Veiculo, NotasTemp.Transporte_Placa, NotasTemp.Transport' +
        'e_PlacaUF, NotasTemp.Transporte_NomeMotorista, NotasTemp.Transpo' +
        'rte_RGMotorista, NotasTemp.Transporte_CodigoANTT, NotasTemp.Taxa' +
        '_Cambio, NotasTemp.Valor_IsentasICMS, NotasTemp.Valor_OutrasICMS' +
        ', NotasTemp.Valor_IsentasIPI, NotasTemp.Valor_OutrasIPI, NotasTe' +
        'mp.Incentivo_Fiscal, NotasTemp.Emitente FROM NotasTemp'
      'WHERE NotasTemp.Linha = :Linha ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterScroll = NotasTempAfterScroll
    Left = 421
    Top = 412
  end
  object dsNotasTemp: TDataSource
    DataSet = NotasTemp
    Left = 421
    Top = 442
  end
  object NotasTempItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasTempItens'
      
        '  (Linha, Nota, Data, Item, Fornecedor, Tipo, Sequencia_SISCOMEX' +
        ', Codigo_Mercadoria, Codigo_Fabricante, Descricao_Mercadoria, NC' +
        'M, EXTIPI, Unidade_Medida, Quantidade, Disponivel, Valor_Unitari' +
        'o, Valor_Total, Aliquota_IPI, Valor_IPI, Total_IPI, CodigoTrib_T' +
        'abA, CodigoTrib_TabB, CSTIPI, CSTPIS, CSTCOFINS, Adicao, Aliquot' +
        'a_II, Valor_II, Valor_BCICMSOper, Aliquota_ICMSOper, Valor_ICMSO' +
        'per, Valor_BCICMSSub, Aliquota_ICMSSub, Valor_ICMSSub, Aliquota_' +
        'MVA, Valor_MVA, Aliquota_ICMSReducao, Valor_ICMSReducao, Valor_S' +
        'eguro, Valor_Frete, Valor_Despesa, Aliquota_PIS, Valor_PIS, Aliq' +
        'uota_COFINS, Valor_COFINS, Peso_Liquido, Peso_Bruto, Veiculo, Sa' +
        'ida_Entrada, Movimenta_Inventario, Movimenta_Estoque, Cancelada,' +
        ' Modalidade_BCICMS, Modalidade_BCICMSST, DI, Processo, Valor_Ise' +
        'ntasICMS, Valor_OutrasICMS, Valor_IsentasIPI, Valor_OutrasIPI, L' +
        'ucro, Lucro_Valor, Valor_BCIPI, Rateio_ICMSProcesso)'
      'VALUES'
      
        '  (:Linha, :Nota, :Data, :Item, :Fornecedor, :Tipo, :Sequencia_S' +
        'ISCOMEX, :Codigo_Mercadoria, :Codigo_Fabricante, :Descricao_Merc' +
        'adoria, :NCM, :EXTIPI, :Unidade_Medida, :Quantidade, :Disponivel' +
        ', :Valor_Unitario, :Valor_Total, :Aliquota_IPI, :Valor_IPI, :Tot' +
        'al_IPI, :CodigoTrib_TabA, :CodigoTrib_TabB, :CSTIPI, :CSTPIS, :C' +
        'STCOFINS, :Adicao, :Aliquota_II, :Valor_II, :Valor_BCICMSOper, :' +
        'Aliquota_ICMSOper, :Valor_ICMSOper, :Valor_BCICMSSub, :Aliquota_' +
        'ICMSSub, :Valor_ICMSSub, :Aliquota_MVA, :Valor_MVA, :Aliquota_IC' +
        'MSReducao, :Valor_ICMSReducao, :Valor_Seguro, :Valor_Frete, :Val' +
        'or_Despesa, :Aliquota_PIS, :Valor_PIS, :Aliquota_COFINS, :Valor_' +
        'COFINS, :Peso_Liquido, :Peso_Bruto, :Veiculo, :Saida_Entrada, :M' +
        'ovimenta_Inventario, :Movimenta_Estoque, :Cancelada, :Modalidade' +
        '_BCICMS, :Modalidade_BCICMSST, :DI, :Processo, :Valor_IsentasICM' +
        'S, :Valor_OutrasICMS, :Valor_IsentasIPI, :Valor_OutrasIPI, :Lucr' +
        'o, :Lucro_Valor, :Valor_BCIPI, :Rateio_ICMSProcesso)')
    SQLDelete.Strings = (
      'DELETE FROM NotasTempItens'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLUpdate.Strings = (
      'UPDATE NotasTempItens'
      'SET'
      
        '  Linha = :Linha, Nota = :Nota, Data = :Data, Item = :Item, Forn' +
        'ecedor = :Fornecedor, Tipo = :Tipo, Sequencia_SISCOMEX = :Sequen' +
        'cia_SISCOMEX, Codigo_Mercadoria = :Codigo_Mercadoria, Codigo_Fab' +
        'ricante = :Codigo_Fabricante, Descricao_Mercadoria = :Descricao_' +
        'Mercadoria, NCM = :NCM, EXTIPI = :EXTIPI, Unidade_Medida = :Unid' +
        'ade_Medida, Quantidade = :Quantidade, Disponivel = :Disponivel, ' +
        'Valor_Unitario = :Valor_Unitario, Valor_Total = :Valor_Total, Al' +
        'iquota_IPI = :Aliquota_IPI, Valor_IPI = :Valor_IPI, Total_IPI = ' +
        ':Total_IPI, CodigoTrib_TabA = :CodigoTrib_TabA, CodigoTrib_TabB ' +
        '= :CodigoTrib_TabB, CSTIPI = :CSTIPI, CSTPIS = :CSTPIS, CSTCOFIN' +
        'S = :CSTCOFINS, Adicao = :Adicao, Aliquota_II = :Aliquota_II, Va' +
        'lor_II = :Valor_II, Valor_BCICMSOper = :Valor_BCICMSOper, Aliquo' +
        'ta_ICMSOper = :Aliquota_ICMSOper, Valor_ICMSOper = :Valor_ICMSOp' +
        'er, Valor_BCICMSSub = :Valor_BCICMSSub, Aliquota_ICMSSub = :Aliq' +
        'uota_ICMSSub, Valor_ICMSSub = :Valor_ICMSSub, Aliquota_MVA = :Al' +
        'iquota_MVA, Valor_MVA = :Valor_MVA, Aliquota_ICMSReducao = :Aliq' +
        'uota_ICMSReducao, Valor_ICMSReducao = :Valor_ICMSReducao, Valor_' +
        'Seguro = :Valor_Seguro, Valor_Frete = :Valor_Frete, Valor_Despes' +
        'a = :Valor_Despesa, Aliquota_PIS = :Aliquota_PIS, Valor_PIS = :V' +
        'alor_PIS, Aliquota_COFINS = :Aliquota_COFINS, Valor_COFINS = :Va' +
        'lor_COFINS, Peso_Liquido = :Peso_Liquido, Peso_Bruto = :Peso_Bru' +
        'to, Veiculo = :Veiculo, Saida_Entrada = :Saida_Entrada, Moviment' +
        'a_Inventario = :Movimenta_Inventario, Movimenta_Estoque = :Movim' +
        'enta_Estoque, Cancelada = :Cancelada, Modalidade_BCICMS = :Modal' +
        'idade_BCICMS, Modalidade_BCICMSST = :Modalidade_BCICMSST, DI = :' +
        'DI, Processo = :Processo, Valor_IsentasICMS = :Valor_IsentasICMS' +
        ', Valor_OutrasICMS = :Valor_OutrasICMS, Valor_IsentasIPI = :Valo' +
        'r_IsentasIPI, Valor_OutrasIPI = :Valor_OutrasIPI, Lucro = :Lucro' +
        ', Lucro_Valor = :Lucro_Valor, Valor_BCIPI = :Valor_BCIPI, Rateio' +
        '_ICMSProcesso = :Rateio_ICMSProcesso'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLRefresh.Strings = (
      
        'SELECT NotasTempItens.Linha, NotasTempItens.Nota, NotasTempItens' +
        '.Data, NotasTempItens.Item, NotasTempItens.Fornecedor, NotasTemp' +
        'Itens.Tipo, NotasTempItens.Sequencia_SISCOMEX, NotasTempItens.Co' +
        'digo_Mercadoria, NotasTempItens.Codigo_Fabricante, NotasTempIten' +
        's.Descricao_Mercadoria, NotasTempItens.NCM, NotasTempItens.EXTIP' +
        'I, NotasTempItens.Unidade_Medida, NotasTempItens.Quantidade, Not' +
        'asTempItens.Disponivel, NotasTempItens.Valor_Unitario, NotasTemp' +
        'Itens.Valor_Total, NotasTempItens.Aliquota_IPI, NotasTempItens.V' +
        'alor_IPI, NotasTempItens.Total_IPI, NotasTempItens.CodigoTrib_Ta' +
        'bA, NotasTempItens.CodigoTrib_TabB, NotasTempItens.CSTIPI, Notas' +
        'TempItens.CSTPIS, NotasTempItens.CSTCOFINS, NotasTempItens.Adica' +
        'o, NotasTempItens.Aliquota_II, NotasTempItens.Valor_II, NotasTem' +
        'pItens.Valor_BCICMSOper, NotasTempItens.Aliquota_ICMSOper, Notas' +
        'TempItens.Valor_ICMSOper, NotasTempItens.Valor_BCICMSSub, NotasT' +
        'empItens.Aliquota_ICMSSub, NotasTempItens.Valor_ICMSSub, NotasTe' +
        'mpItens.Aliquota_MVA, NotasTempItens.Valor_MVA, NotasTempItens.A' +
        'liquota_ICMSReducao, NotasTempItens.Valor_ICMSReducao, NotasTemp' +
        'Itens.Valor_Seguro, NotasTempItens.Valor_Frete, NotasTempItens.V' +
        'alor_Despesa, NotasTempItens.Aliquota_PIS, NotasTempItens.Valor_' +
        'PIS, NotasTempItens.Aliquota_COFINS, NotasTempItens.Valor_COFINS' +
        ', NotasTempItens.Peso_Liquido, NotasTempItens.Peso_Bruto, NotasT' +
        'empItens.Veiculo, NotasTempItens.Saida_Entrada, NotasTempItens.M' +
        'ovimenta_Inventario, NotasTempItens.Movimenta_Estoque, NotasTemp' +
        'Itens.Cancelada, NotasTempItens.Modalidade_BCICMS, NotasTempIten' +
        's.Modalidade_BCICMSST, NotasTempItens.DI, NotasTempItens.Process' +
        'o, NotasTempItens.Valor_IsentasICMS, NotasTempItens.Valor_Outras' +
        'ICMS, NotasTempItens.Valor_IsentasIPI, NotasTempItens.Valor_Outr' +
        'asIPI, NotasTempItens.Lucro, NotasTempItens.Lucro_Valor, NotasTe' +
        'mpItens.Valor_BCIPI, NotasTempItens.Rateio_ICMSProcesso FROM Not' +
        'asTempItens'
      'WHERE NotasTempItens.Linha = :Linha ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasTempItens')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 451
    Top = 412
  end
  object dsNotasTempItens: TDataSource
    DataSet = NotasTempItens
    Left = 451
    Top = 442
  end
  object ClientesTemp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ClientesTemp'
      
        '  (Codigo, Nome, Rua, Rua_Numero, Complemento, Bairro, Municipio' +
        '_Codigo, Municipio, Estado, Pais, CEP, Telefone1, Telefone2, FAX' +
        ', CNPJ, CPF, RG, Inscricao_Estadual, Isento, Inscricao_Municipal' +
        ', Rua_Entrega, Rua_EntregaNumero, Bairro_Entrega, Municipio_Entr' +
        'ega, Estado_Entrega, CEP_Entrega, CNPJ_Entrega, IE_Entrega, Emai' +
        'l, Site, Contato, Transportador, Data_Cadastro, Ativo, Praca_Pag' +
        'amento, Trader, Trader_Comissao, Tipo_Comissao, Conta_Ativo, Con' +
        'ta_Adiantamento, Matriz, Alterado, SUFRAMA, Desconto_Dupl_Tipo, ' +
        'Desconto_Dupl_Valor, Desconto_Dupl_Dias, Conta_Devolucao, Simple' +
        's_Nacional, Modalidade_Importacao, Desconto_Dupl_Campo, Nota)'
      'VALUES'
      
        '  (:Codigo, :Nome, :Rua, :Rua_Numero, :Complemento, :Bairro, :Mu' +
        'nicipio_Codigo, :Municipio, :Estado, :Pais, :CEP, :Telefone1, :T' +
        'elefone2, :FAX, :CNPJ, :CPF, :RG, :Inscricao_Estadual, :Isento, ' +
        ':Inscricao_Municipal, :Rua_Entrega, :Rua_EntregaNumero, :Bairro_' +
        'Entrega, :Municipio_Entrega, :Estado_Entrega, :CEP_Entrega, :CNP' +
        'J_Entrega, :IE_Entrega, :Email, :Site, :Contato, :Transportador,' +
        ' :Data_Cadastro, :Ativo, :Praca_Pagamento, :Trader, :Trader_Comi' +
        'ssao, :Tipo_Comissao, :Conta_Ativo, :Conta_Adiantamento, :Matriz' +
        ', :Alterado, :SUFRAMA, :Desconto_Dupl_Tipo, :Desconto_Dupl_Valor' +
        ', :Desconto_Dupl_Dias, :Conta_Devolucao, :Simples_Nacional, :Mod' +
        'alidade_Importacao, :Desconto_Dupl_Campo, :Nota)')
    SQLDelete.Strings = (
      'DELETE FROM ClientesTemp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ClientesTemp'
      'SET'
      
        '  Codigo = :Codigo, Nome = :Nome, Rua = :Rua, Rua_Numero = :Rua_' +
        'Numero, Complemento = :Complemento, Bairro = :Bairro, Municipio_' +
        'Codigo = :Municipio_Codigo, Municipio = :Municipio, Estado = :Es' +
        'tado, Pais = :Pais, CEP = :CEP, Telefone1 = :Telefone1, Telefone' +
        '2 = :Telefone2, FAX = :FAX, CNPJ = :CNPJ, CPF = :CPF, RG = :RG, ' +
        'Inscricao_Estadual = :Inscricao_Estadual, Isento = :Isento, Insc' +
        'ricao_Municipal = :Inscricao_Municipal, Rua_Entrega = :Rua_Entre' +
        'ga, Rua_EntregaNumero = :Rua_EntregaNumero, Bairro_Entrega = :Ba' +
        'irro_Entrega, Municipio_Entrega = :Municipio_Entrega, Estado_Ent' +
        'rega = :Estado_Entrega, CEP_Entrega = :CEP_Entrega, CNPJ_Entrega' +
        ' = :CNPJ_Entrega, IE_Entrega = :IE_Entrega, Email = :Email, Site' +
        ' = :Site, Contato = :Contato, Transportador = :Transportador, Da' +
        'ta_Cadastro = :Data_Cadastro, Ativo = :Ativo, Praca_Pagamento = ' +
        ':Praca_Pagamento, Trader = :Trader, Trader_Comissao = :Trader_Co' +
        'missao, Tipo_Comissao = :Tipo_Comissao, Conta_Ativo = :Conta_Ati' +
        'vo, Conta_Adiantamento = :Conta_Adiantamento, Matriz = :Matriz, ' +
        'Alterado = :Alterado, SUFRAMA = :SUFRAMA, Desconto_Dupl_Tipo = :' +
        'Desconto_Dupl_Tipo, Desconto_Dupl_Valor = :Desconto_Dupl_Valor, ' +
        'Desconto_Dupl_Dias = :Desconto_Dupl_Dias, Conta_Devolucao = :Con' +
        'ta_Devolucao, Simples_Nacional = :Simples_Nacional, Modalidade_I' +
        'mportacao = :Modalidade_Importacao, Desconto_Dupl_Campo = :Desco' +
        'nto_Dupl_Campo, Nota = :Nota'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT ClientesTemp.Codigo, ClientesTemp.Nome, ClientesTemp.Rua,' +
        ' ClientesTemp.Rua_Numero, ClientesTemp.Complemento, ClientesTemp' +
        '.Bairro, ClientesTemp.Municipio_Codigo, ClientesTemp.Municipio, ' +
        'ClientesTemp.Estado, ClientesTemp.Pais, ClientesTemp.CEP, Client' +
        'esTemp.Telefone1, ClientesTemp.Telefone2, ClientesTemp.FAX, Clie' +
        'ntesTemp.CNPJ, ClientesTemp.CPF, ClientesTemp.RG, ClientesTemp.I' +
        'nscricao_Estadual, ClientesTemp.Isento, ClientesTemp.Inscricao_M' +
        'unicipal, ClientesTemp.Rua_Entrega, ClientesTemp.Rua_EntregaNume' +
        'ro, ClientesTemp.Bairro_Entrega, ClientesTemp.Municipio_Entrega,' +
        ' ClientesTemp.Estado_Entrega, ClientesTemp.CEP_Entrega, Clientes' +
        'Temp.CNPJ_Entrega, ClientesTemp.IE_Entrega, ClientesTemp.Email, ' +
        'ClientesTemp.Site, ClientesTemp.Contato, ClientesTemp.Transporta' +
        'dor, ClientesTemp.Data_Cadastro, ClientesTemp.Ativo, ClientesTem' +
        'p.Praca_Pagamento, ClientesTemp.Trader, ClientesTemp.Trader_Comi' +
        'ssao, ClientesTemp.Tipo_Comissao, ClientesTemp.Conta_Ativo, Clie' +
        'ntesTemp.Conta_Adiantamento, ClientesTemp.Matriz, ClientesTemp.A' +
        'lterado, ClientesTemp.SUFRAMA, ClientesTemp.Desconto_Dupl_Tipo, ' +
        'ClientesTemp.Desconto_Dupl_Valor, ClientesTemp.Desconto_Dupl_Dia' +
        's, ClientesTemp.Conta_Devolucao, ClientesTemp.Simples_Nacional, ' +
        'ClientesTemp.Modalidade_Importacao, ClientesTemp.Desconto_Dupl_C' +
        'ampo, ClientesTemp.Nota FROM ClientesTemp'
      'WHERE ClientesTemp.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ClientesTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 481
    Top = 412
  end
  object dsClientesTemp: TDataSource
    DataSet = ClientesTemp
    Left = 481
    Top = 442
  end
  object FornecedoresTemp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO FornecedoresTemp'
      
        '  (Codigo, Nome, Nome_Fantasia, Tipo_Servico, Rua, Rua_Numero, B' +
        'airro, Municipio, Municipio_Codigo, Estado, Pais, CEP, Telefone1' +
        ', Telefone2, FAX, CNPJ, CPF, RG, Inscricao_Estadual, Isento, Ins' +
        'cricao_Municipal, Email, Site, Tipo_Produto, Conta, Registro_Alf' +
        'andega, Matriz, Banco_Nome, Banco_Conta, Banco_Agencia, Alterado' +
        ', SUFRAMA, Conta_Devolucao, Conta_Adiantamento, Ramo_Atividade, ' +
        'Modalidade_Importacao, Complemento, Nota)'
      'VALUES'
      
        '  (:Codigo, :Nome, :Nome_Fantasia, :Tipo_Servico, :Rua, :Rua_Num' +
        'ero, :Bairro, :Municipio, :Municipio_Codigo, :Estado, :Pais, :CE' +
        'P, :Telefone1, :Telefone2, :FAX, :CNPJ, :CPF, :RG, :Inscricao_Es' +
        'tadual, :Isento, :Inscricao_Municipal, :Email, :Site, :Tipo_Prod' +
        'uto, :Conta, :Registro_Alfandega, :Matriz, :Banco_Nome, :Banco_C' +
        'onta, :Banco_Agencia, :Alterado, :SUFRAMA, :Conta_Devolucao, :Co' +
        'nta_Adiantamento, :Ramo_Atividade, :Modalidade_Importacao, :Comp' +
        'lemento, :Nota)')
    SQLDelete.Strings = (
      'DELETE FROM FornecedoresTemp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE FornecedoresTemp'
      'SET'
      
        '  Codigo = :Codigo, Nome = :Nome, Nome_Fantasia = :Nome_Fantasia' +
        ', Tipo_Servico = :Tipo_Servico, Rua = :Rua, Rua_Numero = :Rua_Nu' +
        'mero, Bairro = :Bairro, Municipio = :Municipio, Municipio_Codigo' +
        ' = :Municipio_Codigo, Estado = :Estado, Pais = :Pais, CEP = :CEP' +
        ', Telefone1 = :Telefone1, Telefone2 = :Telefone2, FAX = :FAX, CN' +
        'PJ = :CNPJ, CPF = :CPF, RG = :RG, Inscricao_Estadual = :Inscrica' +
        'o_Estadual, Isento = :Isento, Inscricao_Municipal = :Inscricao_M' +
        'unicipal, Email = :Email, Site = :Site, Tipo_Produto = :Tipo_Pro' +
        'duto, Conta = :Conta, Registro_Alfandega = :Registro_Alfandega, ' +
        'Matriz = :Matriz, Banco_Nome = :Banco_Nome, Banco_Conta = :Banco' +
        '_Conta, Banco_Agencia = :Banco_Agencia, Alterado = :Alterado, SU' +
        'FRAMA = :SUFRAMA, Conta_Devolucao = :Conta_Devolucao, Conta_Adia' +
        'ntamento = :Conta_Adiantamento, Ramo_Atividade = :Ramo_Atividade' +
        ', Modalidade_Importacao = :Modalidade_Importacao, Complemento = ' +
        ':Complemento, Nota = :Nota'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT FornecedoresTemp.Codigo, FornecedoresTemp.Nome, Fornecedo' +
        'resTemp.Nome_Fantasia, FornecedoresTemp.Tipo_Servico, Fornecedor' +
        'esTemp.Rua, FornecedoresTemp.Rua_Numero, FornecedoresTemp.Bairro' +
        ', FornecedoresTemp.Municipio, FornecedoresTemp.Municipio_Codigo,' +
        ' FornecedoresTemp.Estado, FornecedoresTemp.Pais, FornecedoresTem' +
        'p.CEP, FornecedoresTemp.Telefone1, FornecedoresTemp.Telefone2, F' +
        'ornecedoresTemp.FAX, FornecedoresTemp.CNPJ, FornecedoresTemp.CPF' +
        ', FornecedoresTemp.RG, FornecedoresTemp.Inscricao_Estadual, Forn' +
        'ecedoresTemp.Isento, FornecedoresTemp.Inscricao_Municipal, Forne' +
        'cedoresTemp.Email, FornecedoresTemp.Site, FornecedoresTemp.Tipo_' +
        'Produto, FornecedoresTemp.Conta, FornecedoresTemp.Registro_Alfan' +
        'dega, FornecedoresTemp.Matriz, FornecedoresTemp.Banco_Nome, Forn' +
        'ecedoresTemp.Banco_Conta, FornecedoresTemp.Banco_Agencia, Fornec' +
        'edoresTemp.Alterado, FornecedoresTemp.SUFRAMA, FornecedoresTemp.' +
        'Conta_Devolucao, FornecedoresTemp.Conta_Adiantamento, Fornecedor' +
        'esTemp.Ramo_Atividade, FornecedoresTemp.Modalidade_Importacao, F' +
        'ornecedoresTemp.Complemento, FornecedoresTemp.Nota FROM Forneced' +
        'oresTemp'
      'WHERE FornecedoresTemp.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM FornecedoresTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 511
    Top = 412
  end
  object dsFornecedoresTemp: TDataSource
    DataSet = FornecedoresTemp
    Left = 511
    Top = 442
  end
  object tCodigo: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO FornecedoresTemp'
      
        '  (Codigo, Nome, Nome_Fantasia, Tipo_Servico, Rua, Rua_Numero, B' +
        'airro, Municipio, Municipio_Codigo, Estado, Pais, CEP, Telefone1' +
        ', Telefone2, FAX, CNPJ, CPF, RG, Inscricao_Estadual, Isento, Ins' +
        'cricao_Municipal, Email, Site, Tipo_Produto, Conta, Registro_Alf' +
        'andega, Matriz, Banco_Nome, Banco_Conta, Banco_Agencia, Alterado' +
        ', SUFRAMA, Conta_Devolucao, Conta_Adiantamento, Ramo_Atividade, ' +
        'Modalidade_Importacao, Complemento)'
      'VALUES'
      
        '  (:Codigo, :Nome, :Nome_Fantasia, :Tipo_Servico, :Rua, :Rua_Num' +
        'ero, :Bairro, :Municipio, :Municipio_Codigo, :Estado, :Pais, :CE' +
        'P, :Telefone1, :Telefone2, :FAX, :CNPJ, :CPF, :RG, :Inscricao_Es' +
        'tadual, :Isento, :Inscricao_Municipal, :Email, :Site, :Tipo_Prod' +
        'uto, :Conta, :Registro_Alfandega, :Matriz, :Banco_Nome, :Banco_C' +
        'onta, :Banco_Agencia, :Alterado, :SUFRAMA, :Conta_Devolucao, :Co' +
        'nta_Adiantamento, :Ramo_Atividade, :Modalidade_Importacao, :Comp' +
        'lemento)')
    SQLDelete.Strings = (
      'DELETE FROM FornecedoresTemp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE FornecedoresTemp'
      'SET'
      
        '  Codigo = :Codigo, Nome = :Nome, Nome_Fantasia = :Nome_Fantasia' +
        ', Tipo_Servico = :Tipo_Servico, Rua = :Rua, Rua_Numero = :Rua_Nu' +
        'mero, Bairro = :Bairro, Municipio = :Municipio, Municipio_Codigo' +
        ' = :Municipio_Codigo, Estado = :Estado, Pais = :Pais, CEP = :CEP' +
        ', Telefone1 = :Telefone1, Telefone2 = :Telefone2, FAX = :FAX, CN' +
        'PJ = :CNPJ, CPF = :CPF, RG = :RG, Inscricao_Estadual = :Inscrica' +
        'o_Estadual, Isento = :Isento, Inscricao_Municipal = :Inscricao_M' +
        'unicipal, Email = :Email, Site = :Site, Tipo_Produto = :Tipo_Pro' +
        'duto, Conta = :Conta, Registro_Alfandega = :Registro_Alfandega, ' +
        'Matriz = :Matriz, Banco_Nome = :Banco_Nome, Banco_Conta = :Banco' +
        '_Conta, Banco_Agencia = :Banco_Agencia, Alterado = :Alterado, SU' +
        'FRAMA = :SUFRAMA, Conta_Devolucao = :Conta_Devolucao, Conta_Adia' +
        'ntamento = :Conta_Adiantamento, Ramo_Atividade = :Ramo_Atividade' +
        ', Modalidade_Importacao = :Modalidade_Importacao, Complemento = ' +
        ':Complemento'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT FornecedoresTemp.Codigo, FornecedoresTemp.Nome, Fornecedo' +
        'resTemp.Nome_Fantasia, FornecedoresTemp.Tipo_Servico, Fornecedor' +
        'esTemp.Rua, FornecedoresTemp.Rua_Numero, FornecedoresTemp.Bairro' +
        ', FornecedoresTemp.Municipio, FornecedoresTemp.Municipio_Codigo,' +
        ' FornecedoresTemp.Estado, FornecedoresTemp.Pais, FornecedoresTem' +
        'p.CEP, FornecedoresTemp.Telefone1, FornecedoresTemp.Telefone2, F' +
        'ornecedoresTemp.FAX, FornecedoresTemp.CNPJ, FornecedoresTemp.CPF' +
        ', FornecedoresTemp.RG, FornecedoresTemp.Inscricao_Estadual, Forn' +
        'ecedoresTemp.Isento, FornecedoresTemp.Inscricao_Municipal, Forne' +
        'cedoresTemp.Email, FornecedoresTemp.Site, FornecedoresTemp.Tipo_' +
        'Produto, FornecedoresTemp.Conta, FornecedoresTemp.Registro_Alfan' +
        'dega, FornecedoresTemp.Matriz, FornecedoresTemp.Banco_Nome, Forn' +
        'ecedoresTemp.Banco_Conta, FornecedoresTemp.Banco_Agencia, Fornec' +
        'edoresTemp.Alterado, FornecedoresTemp.SUFRAMA, FornecedoresTemp.' +
        'Conta_Devolucao, FornecedoresTemp.Conta_Adiantamento, Fornecedor' +
        'esTemp.Ramo_Atividade, FornecedoresTemp.Modalidade_Importacao, F' +
        'ornecedoresTemp.Complemento FROM FornecedoresTemp'
      'WHERE FornecedoresTemp.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM FornecedoresTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 481
    Top = 381
  end
  object EstoqueTemp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO EstoqueTemp'
      
        '  (Linha, Data_Movimento, Tipo_Movimento, Nota, Serie, Desdobram' +
        'ento, Data_Emissao, Especie, Codigo_Contabil, CFOP, CNPJ, Codigo' +
        '_Produto, Codigo_Movimento, Quantidade, Valor_Unitario, Valor_To' +
        'tal, BCIPI, Valor_IPI, Observacao)'
      'VALUES'
      
        '  (:Linha, :Data_Movimento, :Tipo_Movimento, :Nota, :Serie, :Des' +
        'dobramento, :Data_Emissao, :Especie, :Codigo_Contabil, :CFOP, :C' +
        'NPJ, :Codigo_Produto, :Codigo_Movimento, :Quantidade, :Valor_Uni' +
        'tario, :Valor_Total, :BCIPI, :Valor_IPI, :Observacao)')
    SQLDelete.Strings = (
      'DELETE FROM EstoqueTemp'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLUpdate.Strings = (
      'UPDATE EstoqueTemp'
      'SET'
      
        '  Linha = :Linha, Data_Movimento = :Data_Movimento, Tipo_Movimen' +
        'to = :Tipo_Movimento, Nota = :Nota, Serie = :Serie, Desdobrament' +
        'o = :Desdobramento, Data_Emissao = :Data_Emissao, Especie = :Esp' +
        'ecie, Codigo_Contabil = :Codigo_Contabil, CFOP = :CFOP, CNPJ = :' +
        'CNPJ, Codigo_Produto = :Codigo_Produto, Codigo_Movimento = :Codi' +
        'go_Movimento, Quantidade = :Quantidade, Valor_Unitario = :Valor_' +
        'Unitario, Valor_Total = :Valor_Total, BCIPI = :BCIPI, Valor_IPI ' +
        '= :Valor_IPI, Observacao = :Observacao'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLRefresh.Strings = (
      
        'SELECT EstoqueTemp.Linha, EstoqueTemp.Data_Movimento, EstoqueTem' +
        'p.Tipo_Movimento, EstoqueTemp.Nota, EstoqueTemp.Serie, EstoqueTe' +
        'mp.Desdobramento, EstoqueTemp.Data_Emissao, EstoqueTemp.Especie,' +
        ' EstoqueTemp.Codigo_Contabil, EstoqueTemp.CFOP, EstoqueTemp.CNPJ' +
        ', EstoqueTemp.Codigo_Produto, EstoqueTemp.Codigo_Movimento, Esto' +
        'queTemp.Quantidade, EstoqueTemp.Valor_Unitario, EstoqueTemp.Valo' +
        'r_Total, EstoqueTemp.BCIPI, EstoqueTemp.Valor_IPI, EstoqueTemp.O' +
        'bservacao FROM EstoqueTemp'
      'WHERE EstoqueTemp.Linha = :Linha ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM EstoqueTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 543
    Top = 412
  end
  object dsEstoqueTemp: TDataSource
    DataSet = EstoqueTemp
    Left = 543
    Top = 442
  end
  object ProdutosTemp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ProdutosTemp'
      
        '  (Codigo, Codigo_Fabricante, Tipo, Tipo_Item, Unidade, Quantida' +
        'de_Unidade, NCM, Estoque_Disponivel, Estoque_Armazem, Peso_Liqui' +
        'do, Peso_Bruto, Descricao, Descricao_Reduzida, Aliquota_IPI, Ali' +
        'quota_II, Aliquota_PIS, Aliquota_COFINS, Veiculo, Valor_IPI, Cla' +
        'sseEnquadra_IPI, Lancado_Pedidos)'
      'VALUES'
      
        '  (:Codigo, :Codigo_Fabricante, :Tipo, :Tipo_Item, :Unidade, :Qu' +
        'antidade_Unidade, :NCM, :Estoque_Disponivel, :Estoque_Armazem, :' +
        'Peso_Liquido, :Peso_Bruto, :Descricao, :Descricao_Reduzida, :Ali' +
        'quota_IPI, :Aliquota_II, :Aliquota_PIS, :Aliquota_COFINS, :Veicu' +
        'lo, :Valor_IPI, :ClasseEnquadra_IPI, :Lancado_Pedidos)')
    SQLDelete.Strings = (
      'DELETE FROM ProdutosTemp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ProdutosTemp'
      'SET'
      
        '  Codigo = :Codigo, Codigo_Fabricante = :Codigo_Fabricante, Tipo' +
        ' = :Tipo, Tipo_Item = :Tipo_Item, Unidade = :Unidade, Quantidade' +
        '_Unidade = :Quantidade_Unidade, NCM = :NCM, Estoque_Disponivel =' +
        ' :Estoque_Disponivel, Estoque_Armazem = :Estoque_Armazem, Peso_L' +
        'iquido = :Peso_Liquido, Peso_Bruto = :Peso_Bruto, Descricao = :D' +
        'escricao, Descricao_Reduzida = :Descricao_Reduzida, Aliquota_IPI' +
        ' = :Aliquota_IPI, Aliquota_II = :Aliquota_II, Aliquota_PIS = :Al' +
        'iquota_PIS, Aliquota_COFINS = :Aliquota_COFINS, Veiculo = :Veicu' +
        'lo, Valor_IPI = :Valor_IPI, ClasseEnquadra_IPI = :ClasseEnquadra' +
        '_IPI, Lancado_Pedidos = :Lancado_Pedidos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT ProdutosTemp.Codigo, ProdutosTemp.Codigo_Fabricante, Prod' +
        'utosTemp.Tipo, ProdutosTemp.Tipo_Item, ProdutosTemp.Unidade, Pro' +
        'dutosTemp.Quantidade_Unidade, ProdutosTemp.NCM, ProdutosTemp.Est' +
        'oque_Disponivel, ProdutosTemp.Estoque_Armazem, ProdutosTemp.Peso' +
        '_Liquido, ProdutosTemp.Peso_Bruto, ProdutosTemp.Descricao, Produ' +
        'tosTemp.Descricao_Reduzida, ProdutosTemp.Aliquota_IPI, ProdutosT' +
        'emp.Aliquota_II, ProdutosTemp.Aliquota_PIS, ProdutosTemp.Aliquot' +
        'a_COFINS, ProdutosTemp.Veiculo, ProdutosTemp.Valor_IPI, Produtos' +
        'Temp.ClasseEnquadra_IPI, ProdutosTemp.Lancado_Pedidos FROM Produ' +
        'tosTemp'
      'WHERE ProdutosTemp.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ProdutosTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 391
    Top = 412
  end
  object dsProdutosTemp: TDataSource
    DataSet = ProdutosTemp
    Left = 391
    Top = 442
  end
  object InventarioTemp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO InventarioTemp'
      
        '  (Linha, Data, MesAno_Inicio, MesAno_Final, Codigo_Mercadoria, ' +
        'Situacao, CNPJ, IE, UF, Quantidade, Valor_Unitario, Valor_Total,' +
        ' ICMS_Recuperar, Observacao, Descricao_Mercadoria, Grupo, NCM, N' +
        'ome_Fantasia, Unidade_Medida, Descricao_Grupo)'
      'VALUES'
      
        '  (:Linha, :Data, :MesAno_Inicio, :MesAno_Final, :Codigo_Mercado' +
        'ria, :Situacao, :CNPJ, :IE, :UF, :Quantidade, :Valor_Unitario, :' +
        'Valor_Total, :ICMS_Recuperar, :Observacao, :Descricao_Mercadoria' +
        ', :Grupo, :NCM, :Nome_Fantasia, :Unidade_Medida, :Descricao_Grup' +
        'o)')
    SQLDelete.Strings = (
      'DELETE FROM InventarioTemp'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLUpdate.Strings = (
      'UPDATE InventarioTemp'
      'SET'
      
        '  Linha = :Linha, Data = :Data, MesAno_Inicio = :MesAno_Inicio, ' +
        'MesAno_Final = :MesAno_Final, Codigo_Mercadoria = :Codigo_Mercad' +
        'oria, Situacao = :Situacao, CNPJ = :CNPJ, IE = :IE, UF = :UF, Qu' +
        'antidade = :Quantidade, Valor_Unitario = :Valor_Unitario, Valor_' +
        'Total = :Valor_Total, ICMS_Recuperar = :ICMS_Recuperar, Observac' +
        'ao = :Observacao, Descricao_Mercadoria = :Descricao_Mercadoria, ' +
        'Grupo = :Grupo, NCM = :NCM, Nome_Fantasia = :Nome_Fantasia, Unid' +
        'ade_Medida = :Unidade_Medida, Descricao_Grupo = :Descricao_Grupo'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLRefresh.Strings = (
      
        'SELECT InventarioTemp.Linha, InventarioTemp.Data, InventarioTemp' +
        '.MesAno_Inicio, InventarioTemp.MesAno_Final, InventarioTemp.Codi' +
        'go_Mercadoria, InventarioTemp.Situacao, InventarioTemp.CNPJ, Inv' +
        'entarioTemp.IE, InventarioTemp.UF, InventarioTemp.Quantidade, In' +
        'ventarioTemp.Valor_Unitario, InventarioTemp.Valor_Total, Inventa' +
        'rioTemp.ICMS_Recuperar, InventarioTemp.Observacao, InventarioTem' +
        'p.Descricao_Mercadoria, InventarioTemp.Grupo, InventarioTemp.NCM' +
        ', InventarioTemp.Nome_Fantasia, InventarioTemp.Unidade_Medida, I' +
        'nventarioTemp.Descricao_Grupo FROM InventarioTemp'
      'WHERE InventarioTemp.Linha = :Linha ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM InventarioTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 575
    Top = 412
  end
  object dsInventarioTemp: TDataSource
    DataSet = InventarioTemp
    Left = 575
    Top = 442
  end
  object tEstoque: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO FornecedoresTemp'
      
        '  (Codigo, Nome, Nome_Fantasia, Tipo_Servico, Rua, Rua_Numero, B' +
        'airro, Municipio, Municipio_Codigo, Estado, Pais, CEP, Telefone1' +
        ', Telefone2, FAX, CNPJ, CPF, RG, Inscricao_Estadual, Isento, Ins' +
        'cricao_Municipal, Email, Site, Tipo_Produto, Conta, Registro_Alf' +
        'andega, Matriz, Banco_Nome, Banco_Conta, Banco_Agencia, Alterado' +
        ', SUFRAMA, Conta_Devolucao, Conta_Adiantamento, Ramo_Atividade, ' +
        'Modalidade_Importacao, Complemento)'
      'VALUES'
      
        '  (:Codigo, :Nome, :Nome_Fantasia, :Tipo_Servico, :Rua, :Rua_Num' +
        'ero, :Bairro, :Municipio, :Municipio_Codigo, :Estado, :Pais, :CE' +
        'P, :Telefone1, :Telefone2, :FAX, :CNPJ, :CPF, :RG, :Inscricao_Es' +
        'tadual, :Isento, :Inscricao_Municipal, :Email, :Site, :Tipo_Prod' +
        'uto, :Conta, :Registro_Alfandega, :Matriz, :Banco_Nome, :Banco_C' +
        'onta, :Banco_Agencia, :Alterado, :SUFRAMA, :Conta_Devolucao, :Co' +
        'nta_Adiantamento, :Ramo_Atividade, :Modalidade_Importacao, :Comp' +
        'lemento)')
    SQLDelete.Strings = (
      'DELETE FROM FornecedoresTemp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE FornecedoresTemp'
      'SET'
      
        '  Codigo = :Codigo, Nome = :Nome, Nome_Fantasia = :Nome_Fantasia' +
        ', Tipo_Servico = :Tipo_Servico, Rua = :Rua, Rua_Numero = :Rua_Nu' +
        'mero, Bairro = :Bairro, Municipio = :Municipio, Municipio_Codigo' +
        ' = :Municipio_Codigo, Estado = :Estado, Pais = :Pais, CEP = :CEP' +
        ', Telefone1 = :Telefone1, Telefone2 = :Telefone2, FAX = :FAX, CN' +
        'PJ = :CNPJ, CPF = :CPF, RG = :RG, Inscricao_Estadual = :Inscrica' +
        'o_Estadual, Isento = :Isento, Inscricao_Municipal = :Inscricao_M' +
        'unicipal, Email = :Email, Site = :Site, Tipo_Produto = :Tipo_Pro' +
        'duto, Conta = :Conta, Registro_Alfandega = :Registro_Alfandega, ' +
        'Matriz = :Matriz, Banco_Nome = :Banco_Nome, Banco_Conta = :Banco' +
        '_Conta, Banco_Agencia = :Banco_Agencia, Alterado = :Alterado, SU' +
        'FRAMA = :SUFRAMA, Conta_Devolucao = :Conta_Devolucao, Conta_Adia' +
        'ntamento = :Conta_Adiantamento, Ramo_Atividade = :Ramo_Atividade' +
        ', Modalidade_Importacao = :Modalidade_Importacao, Complemento = ' +
        ':Complemento'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT FornecedoresTemp.Codigo, FornecedoresTemp.Nome, Fornecedo' +
        'resTemp.Nome_Fantasia, FornecedoresTemp.Tipo_Servico, Fornecedor' +
        'esTemp.Rua, FornecedoresTemp.Rua_Numero, FornecedoresTemp.Bairro' +
        ', FornecedoresTemp.Municipio, FornecedoresTemp.Municipio_Codigo,' +
        ' FornecedoresTemp.Estado, FornecedoresTemp.Pais, FornecedoresTem' +
        'p.CEP, FornecedoresTemp.Telefone1, FornecedoresTemp.Telefone2, F' +
        'ornecedoresTemp.FAX, FornecedoresTemp.CNPJ, FornecedoresTemp.CPF' +
        ', FornecedoresTemp.RG, FornecedoresTemp.Inscricao_Estadual, Forn' +
        'ecedoresTemp.Isento, FornecedoresTemp.Inscricao_Municipal, Forne' +
        'cedoresTemp.Email, FornecedoresTemp.Site, FornecedoresTemp.Tipo_' +
        'Produto, FornecedoresTemp.Conta, FornecedoresTemp.Registro_Alfan' +
        'dega, FornecedoresTemp.Matriz, FornecedoresTemp.Banco_Nome, Forn' +
        'ecedoresTemp.Banco_Conta, FornecedoresTemp.Banco_Agencia, Fornec' +
        'edoresTemp.Alterado, FornecedoresTemp.SUFRAMA, FornecedoresTemp.' +
        'Conta_Devolucao, FornecedoresTemp.Conta_Adiantamento, Fornecedor' +
        'esTemp.Ramo_Atividade, FornecedoresTemp.Modalidade_Importacao, F' +
        'ornecedoresTemp.Complemento FROM FornecedoresTemp'
      'WHERE FornecedoresTemp.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM FornecedoresTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 513
    Top = 381
  end
  object tQtde: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO FornecedoresTemp'
      
        '  (Codigo, Nome, Nome_Fantasia, Tipo_Servico, Rua, Rua_Numero, B' +
        'airro, Municipio, Municipio_Codigo, Estado, Pais, CEP, Telefone1' +
        ', Telefone2, FAX, CNPJ, CPF, RG, Inscricao_Estadual, Isento, Ins' +
        'cricao_Municipal, Email, Site, Tipo_Produto, Conta, Registro_Alf' +
        'andega, Matriz, Banco_Nome, Banco_Conta, Banco_Agencia, Alterado' +
        ', SUFRAMA, Conta_Devolucao, Conta_Adiantamento, Ramo_Atividade, ' +
        'Modalidade_Importacao, Complemento)'
      'VALUES'
      
        '  (:Codigo, :Nome, :Nome_Fantasia, :Tipo_Servico, :Rua, :Rua_Num' +
        'ero, :Bairro, :Municipio, :Municipio_Codigo, :Estado, :Pais, :CE' +
        'P, :Telefone1, :Telefone2, :FAX, :CNPJ, :CPF, :RG, :Inscricao_Es' +
        'tadual, :Isento, :Inscricao_Municipal, :Email, :Site, :Tipo_Prod' +
        'uto, :Conta, :Registro_Alfandega, :Matriz, :Banco_Nome, :Banco_C' +
        'onta, :Banco_Agencia, :Alterado, :SUFRAMA, :Conta_Devolucao, :Co' +
        'nta_Adiantamento, :Ramo_Atividade, :Modalidade_Importacao, :Comp' +
        'lemento)')
    SQLDelete.Strings = (
      'DELETE FROM FornecedoresTemp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE FornecedoresTemp'
      'SET'
      
        '  Codigo = :Codigo, Nome = :Nome, Nome_Fantasia = :Nome_Fantasia' +
        ', Tipo_Servico = :Tipo_Servico, Rua = :Rua, Rua_Numero = :Rua_Nu' +
        'mero, Bairro = :Bairro, Municipio = :Municipio, Municipio_Codigo' +
        ' = :Municipio_Codigo, Estado = :Estado, Pais = :Pais, CEP = :CEP' +
        ', Telefone1 = :Telefone1, Telefone2 = :Telefone2, FAX = :FAX, CN' +
        'PJ = :CNPJ, CPF = :CPF, RG = :RG, Inscricao_Estadual = :Inscrica' +
        'o_Estadual, Isento = :Isento, Inscricao_Municipal = :Inscricao_M' +
        'unicipal, Email = :Email, Site = :Site, Tipo_Produto = :Tipo_Pro' +
        'duto, Conta = :Conta, Registro_Alfandega = :Registro_Alfandega, ' +
        'Matriz = :Matriz, Banco_Nome = :Banco_Nome, Banco_Conta = :Banco' +
        '_Conta, Banco_Agencia = :Banco_Agencia, Alterado = :Alterado, SU' +
        'FRAMA = :SUFRAMA, Conta_Devolucao = :Conta_Devolucao, Conta_Adia' +
        'ntamento = :Conta_Adiantamento, Ramo_Atividade = :Ramo_Atividade' +
        ', Modalidade_Importacao = :Modalidade_Importacao, Complemento = ' +
        ':Complemento'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT FornecedoresTemp.Codigo, FornecedoresTemp.Nome, Fornecedo' +
        'resTemp.Nome_Fantasia, FornecedoresTemp.Tipo_Servico, Fornecedor' +
        'esTemp.Rua, FornecedoresTemp.Rua_Numero, FornecedoresTemp.Bairro' +
        ', FornecedoresTemp.Municipio, FornecedoresTemp.Municipio_Codigo,' +
        ' FornecedoresTemp.Estado, FornecedoresTemp.Pais, FornecedoresTem' +
        'p.CEP, FornecedoresTemp.Telefone1, FornecedoresTemp.Telefone2, F' +
        'ornecedoresTemp.FAX, FornecedoresTemp.CNPJ, FornecedoresTemp.CPF' +
        ', FornecedoresTemp.RG, FornecedoresTemp.Inscricao_Estadual, Forn' +
        'ecedoresTemp.Isento, FornecedoresTemp.Inscricao_Municipal, Forne' +
        'cedoresTemp.Email, FornecedoresTemp.Site, FornecedoresTemp.Tipo_' +
        'Produto, FornecedoresTemp.Conta, FornecedoresTemp.Registro_Alfan' +
        'dega, FornecedoresTemp.Matriz, FornecedoresTemp.Banco_Nome, Forn' +
        'ecedoresTemp.Banco_Conta, FornecedoresTemp.Banco_Agencia, Fornec' +
        'edoresTemp.Alterado, FornecedoresTemp.SUFRAMA, FornecedoresTemp.' +
        'Conta_Devolucao, FornecedoresTemp.Conta_Adiantamento, Fornecedor' +
        'esTemp.Ramo_Atividade, FornecedoresTemp.Modalidade_Importacao, F' +
        'ornecedoresTemp.Complemento FROM FornecedoresTemp'
      'WHERE FornecedoresTemp.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM FornecedoresTemp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 553
    Top = 381
  end
end
