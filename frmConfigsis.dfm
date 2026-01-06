object ConfigSis: TConfigSis
  Left = 551
  Top = 269
  BorderStyle = bsDialog
  Caption = 'ConfigSis'
  ClientHeight = 679
  ClientWidth = 855
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 855
    Height = 37
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = 1
    Width = 118
    Height = 21
    Caption = 'CONFIGURA'#199#195'O'
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
    Left = 5
    Top = 17
    Width = 274
    Height = 18
    Caption = 'Configura'#245'es e Par'#226'metriza'#231#245'es do sistema.'
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
  object Panel1: TPanel
    Left = 0
    Top = 649
    Width = 855
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      855
      30)
    object cVersaoDLL: TLabel
      Left = 6
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Vers'#227'o DLL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = cVersaoDLLClick
    end
    object bSalvar: TButton
      Left = 704
      Top = 1
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'Sal&var'
      TabOrder = 0
      OnClick = bSalvarClick
    end
    object bSair: TButton
      Left = 779
      Top = 1
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 41
    Width = 847
    Height = 601
    ActivePage = TabSheet3
    TabHeight = 28
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&Sistema'
      object GroupBox3: TGroupBox
        Left = 7
        Top = 242
        Width = 823
        Height = 294
        Caption = 'Rede / Internet'
        TabOrder = 4
        object DBEdit2: TDBEdit
          Left = 180
          Top = 16
          Width = 638
          Height = 21
          DataField = 'Site'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 180
          Top = 39
          Width = 638
          Height = 21
          DataField = 'Email_Suporte'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 180
          Top = 108
          Width = 349
          Height = 21
          DataField = 'IP_Suporte'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText5: TStaticText
          Left = 6
          Top = 16
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Site'
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
        object StaticText6: TStaticText
          Left = 6
          Top = 39
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'E-mail do Suporte'
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
        object StaticText7: TStaticText
          Left = 6
          Top = 108
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IP do Suporte'
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
        object StaticText31: TStaticText
          Left = 6
          Top = 62
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Endere'#231'o do servidor Proxy '
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
        object DBEdit25: TDBEdit
          Left = 180
          Top = 62
          Width = 638
          Height = 21
          DataField = 'Servidor_Proxy'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText32: TStaticText
          Left = 6
          Top = 85
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Usu'#225'rio Proxy'
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
        object DBEdit26: TDBEdit
          Left = 180
          Top = 85
          Width = 349
          Height = 21
          DataField = 'Usuario_Proxy'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText33: TStaticText
          Left = 531
          Top = 131
          Width = 38
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Senha'
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
        object DBEdit27: TDBEdit
          Left = 571
          Top = 131
          Width = 247
          Height = 22
          DataField = 'Senha_FTP'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          PasswordChar = #8226
          TabOrder = 5
        end
        object StaticText105: TStaticText
          Left = 6
          Top = 131
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Usu'#225'rio FTP'
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
        object DBEdit55: TDBEdit
          Left = 180
          Top = 131
          Width = 349
          Height = 21
          DataField = 'Usuario_FTP'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object StaticText106: TStaticText
          Left = 531
          Top = 85
          Width = 38
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Senha'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
          Transparent = False
          StyleElements = []
        end
        object DBEdit56: TDBEdit
          Left = 571
          Top = 85
          Width = 247
          Height = 22
          DataField = 'Senha_Proxy'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          PasswordChar = #8226
          TabOrder = 15
        end
        object StaticText107: TStaticText
          Left = 6
          Top = 154
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pasta Backup Servidor (Cybersoft)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 16
          Transparent = False
          StyleElements = []
        end
        object DBEdit57: TDBEdit
          Left = 180
          Top = 154
          Width = 638
          Height = 21
          DataField = 'Pasta_BackupCybersoft'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object DBCheckBox23: TDBCheckBox
          Left = 704
          Top = 110
          Width = 113
          Height = 17
          Caption = 'FTP Passive mode'
          DataField = 'Passive_FTP'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object DBRadioGroup15: TDBRadioGroup
          Left = 6
          Top = 242
          Width = 499
          Height = 44
          Caption = 'Tipo de Servidor'
          Columns = 3
          DataField = 'Servidor_Local'
          DataSource = Dados.dsConfiguracao
          Items.Strings = (
            'Servidor de Rede'
            'M'#225'quina local'
            'Data Center')
          TabOrder = 19
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object StaticText123: TStaticText
          Left = 6
          Top = 177
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pasta Atualiz.Servidor (Cybersoft)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 20
          Transparent = False
          StyleElements = []
        end
        object DBEdit63: TDBEdit
          Left = 180
          Top = 177
          Width = 638
          Height = 21
          DataField = 'Pasta_AtualizacaoCybersoft'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
        end
        object StaticText151: TStaticText
          Left = 6
          Top = 200
          Width = 172
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nome do Servidor'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
          Transparent = False
          StyleElements = []
        end
        object DBEdit75: TDBEdit
          Left = 180
          Top = 200
          Width = 638
          Height = 21
          DataField = 'Nome_Servidor'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
        end
        object StaticText180: TStaticText
          Left = 531
          Top = 108
          Width = 38
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Porta'
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
        object DBEdit91: TDBEdit
          Left = 571
          Top = 108
          Width = 86
          Height = 21
          DataField = 'Porta_FTP'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        end
      end
      object DBComboBox1: TDBComboBox
        Left = 156
        Top = 145
        Width = 105
        Height = 21
        DataField = 'Formato_Data'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'dd/mm/aa'
          'dd/mm/aaaa'
          'dd.mm.aa'
          'dd.mm.aaaa'
          'dd-mm-aa'
          'dd-mm-aaaa')
        ParentFont = False
        TabOrder = 1
      end
      object StaticText4: TStaticText
        Left = 8
        Top = 145
        Width = 146
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Formato da Data'
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
      object GroupBox9: TGroupBox
        Left = 7
        Top = 5
        Width = 282
        Height = 109
        Caption = 'Ambiente'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object DBCheckBox3: TDBCheckBox
          Left = 8
          Top = 16
          Width = 76
          Height = 17
          Caption = 'Ativar Skin'
          DataField = 'Ativar_Skin'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = DBCheckBox3Click
        end
        object DBCheckBox4: TDBCheckBox
          Left = 8
          Top = 39
          Width = 192
          Height = 17
          Caption = 'Habilitar Sinais Sonoros no Sistema.'
          DataField = 'Ativar_Som'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 62
          Width = 249
          Height = 17
          Caption = 'Atualiza'#231#227'o da cota'#231#227'o de moedas automatica.'
          DataField = 'Atualizar_Moedas'
          DataSource = Dados.dsConfiguracao
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBCheckBox15: TDBCheckBox
          Left = 8
          Top = 85
          Width = 119
          Height = 17
          Caption = 'Backup autom'#225'tico.'
          DataField = 'Backup_Automatico'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object cStyle: TDBComboBox
          Left = 94
          Top = 14
          Width = 181
          Height = 21
          DataField = 'Aparencia'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object StaticText42: TStaticText
        Left = 8
        Top = 168
        Width = 146
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Hora do Backup autom'#225'rico'
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
      object DBEdit16: TDBEdit
        Left = 156
        Top = 168
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Backup_Hora'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText36: TStaticText
        Left = 8
        Top = 122
        Width = 146
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vers'#227'o da NF-e'
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
      object DBComboBox2: TDBComboBox
        Left = 156
        Top = 122
        Width = 105
        Height = 21
        Style = csDropDownList
        DataField = 'Versao_NFE'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '1.07'
          '2.00')
        ParentFont = False
        TabOrder = 7
      end
      object GroupBox26: TGroupBox
        Left = 303
        Top = 3
        Width = 361
        Height = 111
        Caption = 'Atualiza'#231#227'o'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 8
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 23
          Width = 291
          Height = 17
          Caption = 'Avisar quando houver atualiza'#231#227'o do sistema dispon'#237'vel.'
          DataField = 'Atualizar_Sistema'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object StaticText119: TStaticText
          Left = 8
          Top = 53
          Width = 220
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data da atualiza'#231#227'o anterior (Script)'
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
        object DBDateEdit1: TDBDateEdit
          Left = 230
          Top = 53
          Width = 121
          Height = 21
          DataField = 'Atualiza_Anterior'
          DataSource = Dados.dsConfiguracao
          Enabled = False
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
          TabOrder = 2
        end
        object StaticText120: TStaticText
          Left = 8
          Top = 76
          Width = 220
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data da '#250'ltima atualiza'#231#227'o (Script)'
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
        object DBDateEdit2: TDBDateEdit
          Left = 230
          Top = 76
          Width = 121
          Height = 21
          DataField = 'Atualiza_Data'
          DataSource = Dados.dsConfiguracao
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
          TabOrder = 4
        end
      end
      object StaticText190: TStaticText
        Left = 264
        Top = 168
        Width = 126
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = #218'ltimo Backup Executado'
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
      object DBEdit93: TDBEdit
        Left = 392
        Top = 168
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Backup_Ultimo'
        DataSource = Dados.dsConfiguracao
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Pastas'
      ImageIndex = 1
      object cLog: TDirectoryEdit
        Left = 133
        Top = 5
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        MultipleDirs = True
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 0
        Text = ''
      end
      object cIni: TDirectoryEdit
        Left = 133
        Top = 28
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 1
        Text = ''
      end
      object cSISCOMEX: TDirectoryEdit
        Left = 133
        Top = 51
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 2
        Text = ''
      end
      object cImpressao: TDirectoryEdit
        Left = 133
        Top = 97
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 4
        Text = ''
      end
      object StaticText10: TStaticText
        Left = 4
        Top = 5
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'LOG de Erro(.log)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
        Transparent = False
        StyleElements = []
      end
      object StaticText11: TStaticText
        Left = 4
        Top = 28
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Inicializa'#231#227'o (.ini)'
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
      object StaticText12: TStaticText
        Left = 4
        Top = 51
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'SISCOMEX'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 20
        Transparent = False
        StyleElements = []
      end
      object StaticText14: TStaticText
        Left = 4
        Top = 97
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Impress'#227'o'
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
      object StaticText19: TStaticText
        Left = 4
        Top = 120
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Exporta'#231#227'o de Dados'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
        Transparent = False
        StyleElements = []
      end
      object cExportacao: TDirectoryEdit
        Left = 133
        Top = 120
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 5
        Text = ''
      end
      object StaticText21: TStaticText
        Left = 4
        Top = 166
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'SINTEGRA (Programa)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 23
        Transparent = False
        StyleElements = []
      end
      object cSintegra: TDirectoryEdit
        Left = 133
        Top = 166
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 7
        Text = ''
      end
      object StaticText22: TStaticText
        Left = 4
        Top = 212
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N.F. Eletr'#244'nica'
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
      object cNFe: TDirectoryEdit
        Left = 133
        Top = 212
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 9
        Text = ''
      end
      object StaticText20: TStaticText
        Left = 4
        Top = 189
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'SPED (Programa)'
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
      object cSPEDFiscal: TDirectoryEdit
        Left = 133
        Top = 189
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 8
        Text = ''
      end
      object StaticText9: TStaticText
        Left = 4
        Top = 258
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Skins'
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
      object cSkin: TFilenameEdit
        Left = 133
        Top = 258
        Width = 700
        Height = 21
        DefaultExt = '*.skn'
        Filter = '*.SKN'
        FilterIndex = 0
        DialogOptions = [ofHideReadOnly, ofNoNetworkButton]
        AutoSelect = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 11
        Text = ''
      end
      object StaticText23: TStaticText
        Left = 4
        Top = 281
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'BACKUP'
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
      object cBACKUP: TDirectoryEdit
        Left = 133
        Top = 281
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 12
        Text = ''
      end
      object StaticText53: TStaticText
        Left = 4
        Top = 143
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Importa'#231#227'o de Dados'
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
      object cImportacao: TDirectoryEdit
        Left = 133
        Top = 143
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 6
        Text = ''
      end
      object StaticText55: TStaticText
        Left = 4
        Top = 327
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Atualiza'#231#227'o do Sistema'
        Color = 7293440
        Enabled = False
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
      object cAtualiza: TDirectoryEdit
        Left = 133
        Top = 327
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 14
        Text = ''
      end
      object StaticText70: TStaticText
        Left = 4
        Top = 304
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'BACKUP (C'#243'pia)'
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
      object cBACKUPCopia: TDirectoryEdit
        Left = 133
        Top = 304
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 13
        Text = ''
      end
      object StaticText38: TStaticText
        Left = 4
        Top = 350
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pasta Tempor'#225'ria'
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
      object cTemporaria: TDirectoryEdit
        Left = 133
        Top = 350
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 15
        Text = ''
      end
      object cSISCOMEXWEB: TDirectoryEdit
        Left = 133
        Top = 74
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 3
        Text = ''
      end
      object StaticText122: TStaticText
        Left = 4
        Top = 74
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'SISCOMEX WEB'
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
      object StaticText131: TStaticText
        Left = 4
        Top = 373
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pasta de Boletos'
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
      object cBoletos: TDirectoryEdit
        Left = 133
        Top = 373
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 16
        Text = ''
      end
      object StaticText143: TStaticText
        Left = 4
        Top = 396
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pasta Imagens (Repres.)'
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
      object cImagens: TDirectoryEdit
        Left = 133
        Top = 396
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 17
        Text = ''
      end
      object StaticText149: TStaticText
        Left = 4
        Top = 235
        Width = 127
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'GNRE'
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
      object cGNRE: TDirectoryEdit
        Left = 133
        Top = 235
        Width = 700
        Height = 21
        DialogKind = dkWin32
        DialogText = 'Eder'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 10
        Text = ''
      end
      object GroupBox35: TGroupBox
        Left = 8
        Top = 440
        Width = 209
        Height = 75
        Caption = 'NF-e'
        TabOrder = 36
        object DBCheckBox32: TDBCheckBox
          Left = 9
          Top = 22
          Width = 192
          Height = 17
          Caption = 'Pastas separadas (Entrada/Sa'#237'da)'
          DataField = 'Separar_NFE'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBCheckBox33: TDBCheckBox
          Left = 9
          Top = 46
          Width = 144
          Height = 17
          Caption = 'Pastas separadas (M'#234's)'
          DataField = 'Separar_NFEMes'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox36: TGroupBox
        Left = 256
        Top = 440
        Width = 177
        Height = 75
        Caption = 'Boletos'
        TabOrder = 37
        object DBCheckBox34: TDBCheckBox
          Left = 9
          Top = 22
          Width = 160
          Height = 17
          Caption = 'Pastas separadas (Bancos)'
          DataField = 'Separar_BoletoBanco'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBCheckBox35: TDBCheckBox
          Left = 9
          Top = 46
          Width = 144
          Height = 17
          Caption = 'Pastas separadas (Data)'
          DataField = 'Separar_BoletoData'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Impress'#227'o'
      ImageIndex = 3
      object GroupBox5: TGroupBox
        Left = 8
        Top = 8
        Width = 249
        Height = 118
        Caption = 'Memorando de Exporta'#231#227'o'
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object cLinhasMemo: TDBEdit
          Left = 157
          Top = 21
          Width = 82
          Height = 21
          DataField = 'Memorando_LinhasItens'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 157
          Top = 44
          Width = 82
          Height = 21
          DataField = 'Memorando_LinhasNotas'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText1: TStaticText
          Left = 10
          Top = 21
          Width = 145
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Linhas de Itens'
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
        object StaticText2: TStaticText
          Left = 10
          Top = 44
          Width = 145
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Linhas de Notas de Entrada'
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
        object DBEdit14: TDBEdit
          Left = 157
          Top = 67
          Width = 82
          Height = 21
          DataField = 'Memorando_Tamaho'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText18: TStaticText
          Left = 10
          Top = 67
          Width = 145
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tamanho em Linhas'
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
      end
      object GroupBox6: TGroupBox
        Left = 288
        Top = 8
        Width = 249
        Height = 118
        Caption = 'Nota fiscal de servi'#231'o'
        TabOrder = 1
        object StaticText13: TStaticText
          Left = 10
          Top = 43
          Width = 145
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'S'#233'rie'
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
        object DBEdit12: TDBEdit
          Left = 157
          Top = 43
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NotaServico_Serie'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText16: TStaticText
          Left = 10
          Top = 66
          Width = 145
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Sub-S'#233'rie'
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
        object DBEdit13: TDBEdit
          Left = 157
          Top = 66
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NotaServico_SubSerie'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText3: TStaticText
          Left = 10
          Top = 20
          Width = 145
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modelo'
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
        object DBEdit10: TDBEdit
          Left = 157
          Top = 20
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NotaServico_Modelo'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 157
          Top = 89
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NotaServico_Tamanho'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText17: TStaticText
          Left = 10
          Top = 89
          Width = 145
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tamanho em Linhas'
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
      end
      object DBCheckBox7: TDBCheckBox
        Left = 8
        Top = 327
        Width = 252
        Height = 17
        Caption = 'Impress'#227'o de valores por extenso em ma'#237'usculo.'
        DataField = 'Extenso_Maiusculo'
        DataSource = Dados.dsConfiguracao
        TabOrder = 2
      end
      object StaticText8: TStaticText
        Left = 8
        Top = 157
        Width = 137
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Porta Impressora Matricial'
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
      object DBEdit8: TDBEdit
        Left = 147
        Top = 157
        Width = 584
        Height = 21
        DataField = 'Caminho_Impressora'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBCheckBox10: TDBCheckBox
        Left = 8
        Top = 347
        Width = 281
        Height = 17
        Caption = 'Abrir PDF do DANFE ap'#243's envio de NF-e para SEFAZ.'
        DataField = 'Abrir_PDFDANFE'
        DataSource = Dados.dsConfiguracao
        TabOrder = 5
      end
      object GroupBox24: TGroupBox
        Left = 8
        Top = 198
        Width = 353
        Height = 97
        Caption = 'Impress'#227'o do DANFE'
        TabOrder = 6
        object DBRadioGroup10: TDBRadioGroup
          Left = 8
          Top = 24
          Width = 137
          Height = 65
          Caption = 'Orienta'#231#227'o'
          DataField = 'NFE_DANFE_Orientacao'
          DataSource = Dados.dsConfiguracao
          Items.Strings = (
            'Retrato'
            'Paisagem')
          TabOrder = 0
          Values.Strings = (
            '1'
            '2')
        end
        object DBRadioGroup14: TDBRadioGroup
          Left = 160
          Top = 24
          Width = 185
          Height = 65
          Caption = 'C'#243'digo da Mercadoria'
          DataField = 'NFE_DANFE_CodigoProduto'
          DataSource = Dados.dsConfiguracao
          Items.Strings = (
            'C'#243'digo Interno'
            'C'#243'digo do Fabricante')
          TabOrder = 1
          Values.Strings = (
            'I'
            'F')
        end
      end
      object DBCheckBox36: TDBCheckBox
        Left = 8
        Top = 368
        Width = 303
        Height = 17
        Caption = 'Utilizar Modelo 2 da impress'#227'o na simula'#231#227'o  de importa'#231#227'o.'
        DataField = 'Modelo_Simulacao'
        DataSource = Dados.dsConfiguracao
        TabOrder = 7
      end
    end
    object TabSheet11: TTabSheet
      Caption = '&Faturamento'
      ImageIndex = 5
      object GroupBox2: TGroupBox
        Left = 4
        Top = 4
        Width = 828
        Height = 112
        Caption = 'Rateios'
        TabOrder = 0
        object DBRadioGroup1: TDBRadioGroup
          Left = 11
          Top = 19
          Width = 104
          Height = 81
          Caption = 'Frete'
          DataField = 'Rateio_Frete'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            'Q'
            'V'
            'P')
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 125
          Top = 19
          Width = 105
          Height = 81
          Caption = 'Seguro'
          DataField = 'Rateio_Seguro'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'Q'
            'V'
            'P')
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 240
          Top = 19
          Width = 95
          Height = 81
          Caption = 'Despesas'
          DataField = 'Rateio_Despesas'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'Q'
            'V'
            'P')
          OnChange = DBRadioGroup3Change
        end
        object DBRadioGroup5: TDBRadioGroup
          Left = 574
          Top = 19
          Width = 106
          Height = 81
          Caption = 'COFINS'
          DataField = 'Rateio_COFINS'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            'Q'
            'V'
            'P')
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 462
          Top = 19
          Width = 102
          Height = 81
          Caption = 'PIS'
          DataField = 'Rateio_PIS'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'Q'
            'V'
            'P')
        end
        object DBRadioGroup12: TDBRadioGroup
          Left = 690
          Top = 19
          Width = 127
          Height = 81
          Caption = 'Acr'#233'scimo'
          DataField = 'Rateio_Valoracao'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Valor FOB'
            'Peso (Invoice)'
            'Peso (Rateado DI)')
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            'V'
            'P'
            'D')
        end
        object DBRadioGroup16: TDBRadioGroup
          Left = 344
          Top = 19
          Width = 109
          Height = 81
          Caption = 'Ratear Despesas'
          Ctl3D = True
          DataField = 'Rateio_DespesasValor'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Valor FOB'
            'Valor CIF + II')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          Values.Strings = (
            'FOB'
            'CIF')
        end
      end
      object DBRadioGroup9: TDBRadioGroup
        Left = 4
        Top = 394
        Width = 274
        Height = 48
        Caption = 'Valor das Despesas de Custo do processo'
        Columns = 2
        DataField = 'Valor_Despesas'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Pelo Total L'#237'quido'
          'Pelo Total Bruto')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
      object StaticText101: TStaticText
        Left = 7
        Top = 463
        Width = 312
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Enviar todas as Notas/C.Corre'#231#227'o/Cancelamentos para o E-mail'
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
      object DBEdit52: TDBEdit
        Left = 321
        Top = 463
        Width = 512
        Height = 21
        DataField = 'Email_NFE'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox27: TGroupBox
        Left = 4
        Top = 126
        Width = 512
        Height = 252
        Caption = 'Diversos'
        TabOrder = 1
        object DBCheckBox19: TDBCheckBox
          Left = 9
          Top = 23
          Width = 293
          Height = 17
          Caption = 'Desabilitar bot'#227'o "Gerar Duplicatas" das telas de Pedido.'
          DataField = 'Botao_Duplicata'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBCheckBox20: TDBCheckBox
          Left = 9
          Top = 41
          Width = 438
          Height = 17
          Caption = 
            'Pegar automaticamento a quantidade de volumes do processo para o' +
            's pedidos Entrada.'
          DataField = 'Volumes_Entrada'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBCheckBox21: TDBCheckBox
          Left = 9
          Top = 59
          Width = 445
          Height = 17
          Caption = 
            'Pegar automaticamento a quantidade de volumes do processo para o' +
            's pedidos de Sa'#237'da.'
          DataField = 'Volumes_Saida'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBCheckBox11: TDBCheckBox
          Left = 9
          Top = 77
          Width = 377
          Height = 17
          Caption = 
            'N'#227'o permitir envio de NF-e se o processo n'#227'o tiver containers ca' +
            'dastrados.'
          DataField = 'Faturamento_TravaContainer'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBCheckBox26: TDBCheckBox
          Left = 9
          Top = 95
          Width = 486
          Height = 17
          Caption = 
            'Avisar quando "Tipo de Nota" gerar Pagar/Receber e "Duplicatas" ' +
            'n'#227'o forem geradas no pedido.'
          DataField = 'Faturamento_AvisoDuplicata'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBCheckBox27: TDBCheckBox
          Left = 9
          Top = 113
          Width = 199
          Height = 17
          Caption = 'Habilitar c'#225'lculo reverso nos pedidos.'
          DataField = 'Calculo_Reverso'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBCheckBox28: TDBCheckBox
          Left = 9
          Top = 131
          Width = 304
          Height = 17
          Caption = 'Bloquear pedidos para clientes com pagamentos em atraso.'
          DataField = 'Faturamento_BloquearAtraso'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBCheckBox29: TDBCheckBox
          Left = 9
          Top = 150
          Width = 449
          Height = 17
          Caption = 
            'S'#243' permitir parcelamento de duplicatas com valor exato do Pedido' +
            ' (Pedido de Nota Fiscal).'
          DataField = 'Faturamento_TravaDuplicata'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBCheckBox39: TDBCheckBox
          Left = 9
          Top = 169
          Width = 306
          Height = 17
          Caption = 'Obrigar navio nos pedidos de nota fiscal / Importa'#231#227'o de DI.'
          DataField = 'Obrigar_NavioPedido'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBCheckBox40: TDBCheckBox
          Left = 9
          Top = 188
          Width = 148
          Height = 17
          Caption = 'Utiliza controle de Navios'
          DataField = 'Utiliza_ControleNavios'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBCheckBox41: TDBCheckBox
          Left = 9
          Top = 206
          Width = 237
          Height = 17
          Caption = 'Obrigar Armaz'#233'm nos pedidos de nota fiscal .'
          DataField = 'Obrigar_Armazem'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBCheckBox42: TDBCheckBox
          Left = 9
          Top = 224
          Width = 177
          Height = 17
          Caption = 'Enviar NFe para API na emiss'#227'o.'
          DataField = 'EnviarNFe_API'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
      end
      object GroupBox30: TGroupBox
        Left = 7
        Top = 497
        Width = 474
        Height = 50
        Caption = 'Estoque Min'#237'mo'
        TabOrder = 4
        DesignSize = (
          474
          50)
        object StaticText129: TStaticText
          Left = 11
          Top = 19
          Width = 78
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Percentual'
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
        object cMinimo: TDBEdit
          Left = 91
          Top = 19
          Width = 78
          Height = 21
          DataField = 'Estoque_MinimoPerc'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object bMinimo: TButton
          Left = 207
          Top = 9
          Width = 262
          Height = 36
          Anchors = [akTop, akRight]
          Caption = 'Reprocessar Estoque Min'#237'mo de todos os produtos'
          TabOrder = 2
          OnClick = bMinimoClick
        end
      end
      object DBRadioGroup20: TDBRadioGroup
        Left = 596
        Top = 126
        Width = 194
        Height = 76
        Caption = 'Layout de da NF-e'
        DataField = 'Layout_NFe'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Vers'#227'o 4.0'
          'Vers'#227'o Reforma Tribut'#225'ria')
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          '0'
          '1')
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Fisc&ais'
      ImageIndex = 6
      object PageControl4: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 833
        Height = 557
        ActivePage = TabSheet20
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabHeight = 28
        TabOrder = 0
        TabPosition = tpBottom
        object TabSheet20: TTabSheet
          Caption = '&Diversos'
          object GroupBox1: TGroupBox
            Left = 5
            Top = 3
            Width = 339
            Height = 73
            Caption = 'Natureza da Opera'#231#227'o'
            TabOrder = 0
            object DBEdit4: TDBEdit
              Left = 74
              Top = 22
              Width = 57
              Height = 21
              DataField = 'Natureza_EntradaIni'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit5: TDBEdit
              Left = 167
              Top = 22
              Width = 57
              Height = 21
              DataField = 'Natureza_EntradaFim'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit6: TDBEdit
              Left = 74
              Top = 45
              Width = 57
              Height = 21
              DataField = 'Natureza_SaidaIni'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit7: TDBEdit
              Left = 167
              Top = 45
              Width = 57
              Height = 21
              DataField = 'Natureza_SaidaFim'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object StaticText46: TStaticText
              Left = 10
              Top = 22
              Width = 62
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Entrada de'
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
            object StaticText47: TStaticText
              Left = 133
              Top = 22
              Width = 33
              Height = 21
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
              TabOrder = 5
              Transparent = False
              StyleElements = []
            end
            object StaticText48: TStaticText
              Left = 10
              Top = 45
              Width = 62
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Sa'#237'da de'
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
            object StaticText49: TStaticText
              Left = 133
              Top = 45
              Width = 33
              Height = 21
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
              TabOrder = 7
              Transparent = False
              StyleElements = []
            end
          end
          object GroupBox7: TGroupBox
            Left = 5
            Top = 90
            Width = 339
            Height = 117
            Caption = 'Conhecimento de Transporte (CTR)'
            TabOrder = 1
            object DBEdit15: TDBEdit
              Left = 111
              Top = 18
              Width = 57
              Height = 21
              DataField = 'PIS_CTR'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit17: TDBEdit
              Left = 111
              Top = 41
              Width = 57
              Height = 21
              DataField = 'COFINS_CTR'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object StaticText50: TStaticText
              Left = 10
              Top = 18
              Width = 99
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'PIS'
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
            object StaticText51: TStaticText
              Left = 10
              Top = 41
              Width = 99
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'COFINS'
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
            object StaticText111: TStaticText
              Left = 10
              Top = 87
              Width = 99
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'C'#243'digo Produto'
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
            object StaticText112: TStaticText
              Left = 10
              Top = 64
              Width = 99
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Ramo de Atividade'
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
            object cRamoAtividade: TDBLookupComboBox
              Left = 111
              Top = 64
              Width = 219
              Height = 21
              DataField = 'Ramo_CTR'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsRamoAtividade
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit53: TDBEdit
              Left = 111
              Top = 87
              Width = 138
              Height = 21
              DataField = 'Item_CTR'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
            end
          end
          object GroupBox17: TGroupBox
            Left = 357
            Top = 3
            Width = 339
            Height = 73
            Caption = 'Al'#237'quotas b'#225'sicas de PIS/COFINS'
            TabOrder = 2
            object DBEdit30: TDBEdit
              Left = 108
              Top = 18
              Width = 57
              Height = 21
              DataField = 'PIS_AliquotaBasica'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit32: TDBEdit
              Left = 272
              Top = 17
              Width = 57
              Height = 21
              DataField = 'COFINS_AliquotaBasica'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object StaticText72: TStaticText
              Left = 10
              Top = 18
              Width = 96
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'PIS (Entrada)'
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
            object StaticText73: TStaticText
              Left = 174
              Top = 17
              Width = 96
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'COFINS (Entrada)'
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
            object StaticText115: TStaticText
              Left = 10
              Top = 41
              Width = 96
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'PIS (Sa'#237'da)'
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
            object DBEdit58: TDBEdit
              Left = 108
              Top = 41
              Width = 57
              Height = 21
              DataField = 'PIS_AliquotaBasicaSaida'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object StaticText116: TStaticText
              Left = 174
              Top = 40
              Width = 96
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'COFINS (Sa'#237'da)'
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
            object DBEdit59: TDBEdit
              Left = 272
              Top = 40
              Width = 57
              Height = 21
              DataField = 'COFINS_AliquotaBasicaSaida'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox29: TGroupBox
            Left = 357
            Top = 90
            Width = 339
            Height = 66
            Caption = 'CIAP'
            TabOrder = 3
            object DBEdit40: TDBEdit
              Left = 197
              Top = 38
              Width = 121
              Height = 21
              DataField = 'Valor_CIAP'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object StaticText87: TStaticText
              Left = 9
              Top = 38
              Width = 186
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Valor M'#237'nimo para imobilizado (CIAP)'
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
            object DBEdit45: TDBEdit
              Left = 197
              Top = 15
              Width = 56
              Height = 21
              DataField = 'Parcelas_CIAP'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object StaticText104: TStaticText
              Left = 9
              Top = 15
              Width = 186
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Quantidade de Parcelas (Meses)'
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
          end
          object GroupBox10: TGroupBox
            Left = 5
            Top = 278
            Width = 800
            Height = 212
            Caption = 'Vencimentos dos  Impostos (Dia)'
            TabOrder = 4
            object DBEdit19: TDBEdit
              Left = 95
              Top = 20
              Width = 42
              Height = 21
              DataField = 'Vencimento_ICMSFUNDAP'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit20: TDBEdit
              Left = 95
              Top = 43
              Width = 42
              Height = 21
              DataField = 'Vencimento_ICMSINVEST'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit21: TDBEdit
              Left = 95
              Top = 66
              Width = 42
              Height = 21
              DataField = 'Vencimento_ICMSComercio'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object StaticText43: TStaticText
              Left = 10
              Top = 66
              Width = 83
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'ICMS Com'#233'rcio'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 20
              Transparent = False
              StyleElements = []
            end
            object StaticText44: TStaticText
              Left = 10
              Top = 20
              Width = 83
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'ICMS FUNDAP'
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
            object StaticText45: TStaticText
              Left = 10
              Top = 43
              Width = 83
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'ICMS INVEST'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 22
              Transparent = False
              StyleElements = []
            end
            object DBEdit85: TDBEdit
              Left = 95
              Top = 112
              Width = 42
              Height = 21
              DataField = 'Vencimento_PIS'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
            end
            object DBEdit86: TDBEdit
              Left = 95
              Top = 135
              Width = 42
              Height = 21
              DataField = 'Vencimento_COFINS'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit87: TDBEdit
              Left = 95
              Top = 89
              Width = 42
              Height = 21
              DataField = 'Vencimento_IPI'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object StaticText162: TStaticText
              Left = 10
              Top = 89
              Width = 83
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'IPI'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 23
              Transparent = False
              StyleElements = []
            end
            object StaticText163: TStaticText
              Left = 10
              Top = 112
              Width = 83
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'PIS'
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
            object StaticText164: TStaticText
              Left = 10
              Top = 135
              Width = 83
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'COFINS'
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
            object DBEdit88: TDBEdit
              Left = 95
              Top = 158
              Width = 42
              Height = 21
              DataField = 'Vencimento_IRPJ'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
            end
            object DBEdit89: TDBEdit
              Left = 95
              Top = 181
              Width = 42
              Height = 21
              DataField = 'Vencimento_CSLL'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 17
            end
            object StaticText165: TStaticText
              Left = 10
              Top = 158
              Width = 83
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'IRPJ'
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
            object StaticText166: TStaticText
              Left = 10
              Top = 181
              Width = 83
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'CSLL'
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
            object cClassICMS: TRxDBLookupCombo
              Left = 182
              Top = 66
              Width = 300
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_ICMSOrgao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Nome'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsOrgaos
              ParentFont = False
              TabOrder = 3
            end
            object StaticText167: TStaticText
              Left = 141
              Top = 66
              Width = 39
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Org'#227'o'
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
            object RxDBLookupCombo3: TRxDBLookupCombo
              Left = 536
              Top = 66
              Width = 253
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_ICMSDoc'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Descricao'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsTiposDocumentos
              ParentFont = False
              TabOrder = 4
            end
            object StaticText168: TStaticText
              Left = 484
              Top = 66
              Width = 50
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo DOC'
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
            object RxDBLookupCombo4: TRxDBLookupCombo
              Left = 182
              Top = 89
              Width = 300
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_IPIOrgao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Nome'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsOrgaos
              ParentFont = False
              TabOrder = 6
            end
            object StaticText169: TStaticText
              Left = 141
              Top = 89
              Width = 39
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Org'#227'o'
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
            object RxDBLookupCombo5: TRxDBLookupCombo
              Left = 536
              Top = 89
              Width = 253
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_IPIDoc'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Descricao'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsTiposDocumentos
              ParentFont = False
              TabOrder = 7
            end
            object StaticText170: TStaticText
              Left = 484
              Top = 89
              Width = 50
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo DOC'
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
            object RxDBLookupCombo6: TRxDBLookupCombo
              Left = 182
              Top = 112
              Width = 300
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_PISOrgao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Nome'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsOrgaos
              ParentFont = False
              TabOrder = 9
            end
            object StaticText171: TStaticText
              Left = 141
              Top = 112
              Width = 39
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Org'#227'o'
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
            object RxDBLookupCombo7: TRxDBLookupCombo
              Left = 536
              Top = 112
              Width = 253
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_PISDoc'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Descricao'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsTiposDocumentos
              ParentFont = False
              TabOrder = 10
            end
            object StaticText172: TStaticText
              Left = 484
              Top = 112
              Width = 50
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo DOC'
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
            object RxDBLookupCombo8: TRxDBLookupCombo
              Left = 182
              Top = 135
              Width = 300
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_COFINSOrgao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Nome'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsOrgaos
              ParentFont = False
              TabOrder = 12
            end
            object StaticText173: TStaticText
              Left = 141
              Top = 135
              Width = 39
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Org'#227'o'
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
            object RxDBLookupCombo9: TRxDBLookupCombo
              Left = 536
              Top = 135
              Width = 253
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_COFINSDoc'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Descricao'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsTiposDocumentos
              ParentFont = False
              TabOrder = 13
            end
            object StaticText174: TStaticText
              Left = 484
              Top = 135
              Width = 50
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo DOC'
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
            object RxDBLookupCombo10: TRxDBLookupCombo
              Left = 182
              Top = 158
              Width = 300
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_IRPJOrgao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Nome'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsOrgaos
              ParentFont = False
              TabOrder = 15
            end
            object StaticText175: TStaticText
              Left = 141
              Top = 158
              Width = 39
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Org'#227'o'
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
            object RxDBLookupCombo11: TRxDBLookupCombo
              Left = 536
              Top = 158
              Width = 253
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_IRPJDoc'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Descricao'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsTiposDocumentos
              ParentFont = False
              TabOrder = 16
            end
            object StaticText176: TStaticText
              Left = 484
              Top = 158
              Width = 50
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo DOC'
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
            object RxDBLookupCombo12: TRxDBLookupCombo
              Left = 182
              Top = 181
              Width = 300
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_CSLLOrgao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Nome'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsOrgaos
              ParentFont = False
              TabOrder = 18
            end
            object StaticText177: TStaticText
              Left = 141
              Top = 181
              Width = 39
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Org'#227'o'
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
            object RxDBLookupCombo13: TRxDBLookupCombo
              Left = 536
              Top = 181
              Width = 253
              Height = 21
              DropDownCount = 15
              DataField = 'Vencimento_CSLLDoc'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              LookupField = 'Codigo'
              LookupDisplay = 'Codigo;Descricao'
              LookupDisplayIndex = 1
              LookupSource = Dados.dsTiposDocumentos
              ParentFont = False
              TabOrder = 19
            end
            object StaticText178: TStaticText
              Left = 484
              Top = 181
              Width = 50
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo DOC'
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
          end
          object GroupBox33: TGroupBox
            Left = 5
            Top = 222
            Width = 339
            Height = 45
            Caption = 'Diferencial de Al'#237'quota ICMS (DIFAL)'
            TabOrder = 5
            object DBEdit69: TDBEdit
              Left = 276
              Top = 16
              Width = 55
              Height = 21
              DataField = 'DIFAL_ICMSPart'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object StaticText147: TStaticText
              Left = 9
              Top = 16
              Width = 266
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Percentual participa'#231#227'o ano Corrente (Estado Destino)'
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
          end
          object DBEdit68: TDBEdit
            Left = 598
            Top = 182
            Width = 99
            Height = 21
            DataField = 'Valor_ManifestoNFE'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object StaticText142: TStaticText
            Left = 358
            Top = 182
            Width = 238
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Valor M'#237'nimo para Manifesta'#231#227'o de Nota Fiscal'
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
        end
        object TabSheet21: TTabSheet
          Caption = 'SPED'
          ImageIndex = 1
          object GroupBox11: TGroupBox
            Left = 7
            Top = 11
            Width = 480
            Height = 70
            Caption = 'Inventario (SPED FISCAL)'
            TabOrder = 0
            object StaticText52: TStaticText
              Left = 10
              Top = 17
              Width = 173
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'M'#234's para entrega'
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
            object cMes: TComboBox
              Left = 185
              Top = 17
              Width = 160
              Height = 21
              DropDownCount = 12
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              Text = 'cMes'
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
            object StaticText54: TStaticText
              Left = 10
              Top = 40
              Width = 173
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'C'#243'digo da conta anal'#237'tica cont'#225'bil '
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
            object DBEdit22: TDBEdit
              Left = 185
              Top = 40
              Width = 160
              Height = 21
              DataField = 'Conta_Inventario'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
          object GroupBox18: TGroupBox
            Left = 7
            Top = 104
            Width = 480
            Height = 145
            Caption = 'Contas Cont'#225'beis para o PIS (SPED PIS/COFINS)'
            TabOrder = 1
            object StaticText74: TStaticText
              Left = 10
              Top = 22
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'C'#243'digo'
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
            object StaticText75: TStaticText
              Left = 10
              Top = 69
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Nome'
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
            object DBEdit34: TDBEdit
              Left = 122
              Top = 22
              Width = 160
              Height = 21
              DataField = 'PIS_ContaCodigo'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object StaticText76: TStaticText
              Left = 10
              Top = 46
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Nivel'
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
            object StaticText77: TStaticText
              Left = 10
              Top = 92
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Indicador (Sint/Anal)'
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
            object StaticText78: TStaticText
              Left = 10
              Top = 115
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Natureza'
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
            object DBEdit35: TDBEdit
              Left = 122
              Top = 46
              Width = 160
              Height = 21
              DataField = 'PIS_ContaNivel'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit37: TDBEdit
              Left = 122
              Top = 69
              Width = 344
              Height = 21
              DataField = 'PIS_ContaNome'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 122
              Top = 115
              Width = 191
              Height = 21
              DataField = 'PIS_ContaNatureza'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Items.Strings = (
                'Contas de ativo'
                'Contas de passivo'
                'Patrim'#244'nio l'#237'quido'
                'Contas de resultado'
                'Contas de compensa'#231#227'o'
                'Outras')
              ParentFont = False
              TabOrder = 4
              Values.Strings = (
                '01'
                '02'
                '03'
                '04'
                '05'
                '09')
            end
            object RxDBComboBox2: TRxDBComboBox
              Left = 122
              Top = 92
              Width = 191
              Height = 21
              DataField = 'PIS_ContaIndicador'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Items.Strings = (
                'Sint'#233'tica'
                'Anal'#237'tica')
              ParentFont = False
              TabOrder = 3
              Values.Strings = (
                'S'
                'A')
            end
          end
          object GroupBox19: TGroupBox
            Left = 7
            Top = 275
            Width = 480
            Height = 142
            Caption = 'Contas Cont'#225'beis para a COFINS (SPED PIS/COFINS)'
            TabOrder = 2
            object StaticText79: TStaticText
              Left = 10
              Top = 17
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'C'#243'digo'
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
            object StaticText80: TStaticText
              Left = 10
              Top = 65
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Nome'
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
            object DBEdit36: TDBEdit
              Left = 122
              Top = 17
              Width = 160
              Height = 21
              DataField = 'COFINS_ContaCodigo'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object StaticText81: TStaticText
              Left = 10
              Top = 41
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'N'#237'vel'
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
            object StaticText82: TStaticText
              Left = 10
              Top = 88
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Indicador (Sint/Anal)'
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
            object StaticText83: TStaticText
              Left = 10
              Top = 111
              Width = 110
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Natureza'
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
            object DBEdit38: TDBEdit
              Left = 122
              Top = 41
              Width = 160
              Height = 21
              DataField = 'COFINS_ContaNivel'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit39: TDBEdit
              Left = 122
              Top = 65
              Width = 344
              Height = 21
              DataField = 'COFINS_ContaNome'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object RxDBComboBox3: TRxDBComboBox
              Left = 122
              Top = 111
              Width = 191
              Height = 21
              DataField = 'COFINS_ContaNatureza'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Items.Strings = (
                'Contas de ativo'
                'Contas de passivo'
                'Patrim'#244'nio l'#237'quido'
                'Contas de resultado'
                'Contas de compensa'#231#227'o'
                'Outras')
              ParentFont = False
              TabOrder = 4
              Values.Strings = (
                '01'
                '02'
                '03'
                '04'
                '05'
                '09')
            end
            object RxDBComboBox4: TRxDBComboBox
              Left = 122
              Top = 88
              Width = 191
              Height = 21
              DataField = 'COFINS_ContaIndicador'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Items.Strings = (
                'Sint'#233'tica'
                'Anal'#237'tica')
              ParentFont = False
              TabOrder = 3
              Values.Strings = (
                'S'
                'A')
            end
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = '&Cont'#225'beis'
      ImageIndex = 7
      object GroupBox15: TGroupBox
        Left = 8
        Top = 8
        Width = 489
        Height = 146
        Caption = 'Cria'#231#227'o de Contas autom'#225'tico no Plano de Contas'
        TabOrder = 0
        object DBCheckBox16: TDBCheckBox
          Left = 11
          Top = 43
          Width = 322
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Criar numera'#231#227'o sequencial das contas novas dentro do grupo'
          DataField = 'Contab_ContaNova'
          DataSource = Dados.dsConfiguracao
          TabOrder = 0
        end
        object DBCheckBox17: TDBCheckBox
          Left = 11
          Top = 61
          Width = 322
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Criar contas das filiais (Clientes)'
          DataField = 'Contab_FilialCliente'
          DataSource = Dados.dsConfiguracao
          TabOrder = 1
        end
        object DBCheckBox18: TDBCheckBox
          Left = 11
          Top = 79
          Width = 322
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Criar contas das filiais (Fornecedores)'
          DataField = 'Contab_FilialFornecedor'
          DataSource = Dados.dsConfiguracao
          TabOrder = 2
        end
        object DBEdit23: TDBEdit
          Left = 96
          Top = 111
          Width = 68
          Height = 21
          DataField = 'Contab_GrupoBanco'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBLookupComboBox14: TDBLookupComboBox
          Left = 166
          Top = 111
          Width = 310
          Height = 21
          DataField = 'Contab_GrupoBanco'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 10
          DropDownWidth = 400
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 4
        end
        object StaticText67: TStaticText
          Left = 12
          Top = 111
          Width = 82
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo (Bancos)'
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
        object DBCheckBox9: TDBCheckBox
          Left = 11
          Top = 25
          Width = 322
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Obrigar parametriza'#231#227'o contab'#237'l nos cadastros'
          DataField = 'Parametrizacao_Contabil'
          DataSource = Dados.dsConfiguracao
          TabOrder = 6
        end
      end
      object GroupBox34: TGroupBox
        Left = 8
        Top = 179
        Width = 817
        Height = 204
        Caption = 'Lan'#231'amentos de Encerramento'
        TabOrder = 1
        object DBEdit76: TDBEdit
          Left = 156
          Top = 170
          Width = 69
          Height = 21
          DataField = 'Contab_HistoricoEncPrejuizo'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBLookupComboBox35: TDBLookupComboBox
          Left = 227
          Top = 170
          Width = 579
          Height = 21
          DataField = 'Contab_HistoricoEncPrejuizo'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = dmContab.dsHistoricos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 8
        end
        object StaticText152: TStaticText
          Left = 13
          Top = 170
          Width = 141
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Hist'#243'rico'
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
        object StaticText154: TStaticText
          Left = 13
          Top = 84
          Width = 141
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta (Lucro Acumulado)'
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
        object cConta: TDBLookupComboBox
          Left = 156
          Top = 84
          Width = 650
          Height = 21
          DataField = 'Contab_ContaEncLucro'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo; Descricao'
          ListFieldIndex = 2
          ListSource = dstContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
        end
        object StaticText155: TStaticText
          Left = 13
          Top = 147
          Width = 141
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta (Preju'#237'zo Acumulado)'
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
        object DBLookupComboBox36: TDBLookupComboBox
          Left = 156
          Top = 147
          Width = 650
          Height = 21
          DataField = 'Contab_ContaEncPrejuizo'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo; Descricao'
          ListFieldIndex = 2
          ListSource = dstContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 6
        end
        object StaticText156: TStaticText
          Left = 13
          Top = 21
          Width = 141
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta (Resultado)'
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
        object DBLookupComboBox37: TDBLookupComboBox
          Left = 156
          Top = 21
          Width = 650
          Height = 21
          DataField = 'Contab_ContaResultado'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo; Descricao'
          ListFieldIndex = 2
          ListSource = dstContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit78: TDBEdit
          Left = 156
          Top = 44
          Width = 69
          Height = 21
          DataField = 'Contab_HistoricoResultado'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupComboBox38: TDBLookupComboBox
          Left = 227
          Top = 44
          Width = 579
          Height = 21
          DataField = 'Contab_HistoricoResultado'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = dmContab.dsHistoricos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object StaticText157: TStaticText
          Left = 13
          Top = 44
          Width = 141
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Hist'#243'rico (Resultado)'
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
        object DBEdit79: TDBEdit
          Left = 156
          Top = 107
          Width = 69
          Height = 21
          DataField = 'Contab_HistoricoEncLucro'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBLookupComboBox39: TDBLookupComboBox
          Left = 227
          Top = 107
          Width = 579
          Height = 21
          DataField = 'Contab_HistoricoEncLucro'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = dmContab.dsHistoricos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 5
        end
        object StaticText158: TStaticText
          Left = 13
          Top = 107
          Width = 141
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Hist'#243'rico'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
          Transparent = False
          StyleElements = []
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Fi&nanceiros'
      ImageIndex = 7
      object PageControl2: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 833
        Height = 557
        ActivePage = TabSheet6
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabHeight = 28
        TabOrder = 0
        TabPosition = tpBottom
        object TabSheet6: TTabSheet
          Caption = '&Lan'#231'amentos'
          ImageIndex = 1
          object GroupBox12: TGroupBox
            Left = 9
            Top = 9
            Width = 652
            Height = 159
            Caption = 
              'Classifica'#231#245'es Financeiras para (Juros/Multas/Descontos) dos lan' +
              #231'amentos do financeiro'
            TabOrder = 0
            object StaticText37: TStaticText
              Left = 7
              Top = 17
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Descontos Recebidos'
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
            object StaticText56: TStaticText
              Left = 7
              Top = 40
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Descontos Concedidos'
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
            object StaticText57: TStaticText
              Left = 7
              Top = 63
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Multas Recebidas'
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
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 127
              Top = 17
              Width = 519
              Height = 21
              DataField = 'Classificacao_DescontosRC'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 0
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 127
              Top = 40
              Width = 519
              Height = 21
              DataField = 'Classificacao_DescontosPG'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 127
              Top = 63
              Width = 519
              Height = 21
              DataField = 'Classificacao_MultaRC'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 2
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 127
              Top = 132
              Width = 519
              Height = 21
              DataField = 'Classificacao_JurosPG'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 5
            end
            object DBLookupComboBox6: TDBLookupComboBox
              Left = 127
              Top = 109
              Width = 519
              Height = 21
              DataField = 'Classificacao_JurosRC'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 4
            end
            object DBLookupComboBox7: TDBLookupComboBox
              Left = 127
              Top = 86
              Width = 519
              Height = 21
              DataField = 'Classificacao_MultaPG'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 3
            end
            object StaticText58: TStaticText
              Left = 7
              Top = 86
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Multas Pagas'
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
            object StaticText59: TStaticText
              Left = 7
              Top = 132
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Juros Pagos'
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
            object StaticText60: TStaticText
              Left = 7
              Top = 109
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Juros Recebidos'
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
          end
          object GroupBox13: TGroupBox
            Left = 9
            Top = 172
            Width = 652
            Height = 67
            Caption = 'Classifica'#231#245'es Financeiras de Recebimento para Transfer'#234'ncias'
            TabOrder = 1
            object StaticText61: TStaticText
              Left = 7
              Top = 17
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Transfer'#234'ncia Banc'#225'ria'
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
            object StaticText62: TStaticText
              Left = 7
              Top = 40
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Transfer'#234'ncia Processo'
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
            object DBLookupComboBox8: TDBLookupComboBox
              Left = 127
              Top = 17
              Width = 519
              Height = 21
              DataField = 'Classificacao_TransfBanco'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 0
            end
            object DBLookupComboBox9: TDBLookupComboBox
              Left = 127
              Top = 40
              Width = 519
              Height = 21
              DataField = 'Classificacao_TransfProcesso'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
          end
          object GroupBox14: TGroupBox
            Left = 9
            Top = 244
            Width = 652
            Height = 90
            Caption = 'Classifica'#231#245'es Financeiras para Fechamento de C'#226'mbio'
            TabOrder = 2
            object StaticText64: TStaticText
              Left = 7
              Top = 16
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Varia'#231#227'o (Ativa)'
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
            object DBLookupComboBox11: TDBLookupComboBox
              Left = 127
              Top = 16
              Width = 519
              Height = 21
              DataField = 'Classificacao_CambioVarAtiva'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object StaticText65: TStaticText
              Left = 7
              Top = 62
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Documento'
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
            object DBLookupComboBox12: TDBLookupComboBox
              Left = 127
              Top = 62
              Width = 519
              Height = 21
              DataField = 'Documento_Cambio'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsTiposDocumentos
              NullValueKey = 46
              ParentFont = False
              TabOrder = 3
            end
            object StaticText63: TStaticText
              Left = 7
              Top = 39
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Varia'#231#227'o (Passiva)'
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
            object DBLookupComboBox10: TDBLookupComboBox
              Left = 127
              Top = 39
              Width = 519
              Height = 21
              DataField = 'Classificacao_CambioVarPassiva'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 5
            end
          end
          object GroupBox16: TGroupBox
            Left = 9
            Top = 338
            Width = 652
            Height = 68
            Caption = 'Classifica'#231#227'o Financeira para o Lan'#231'amento do Contrato de C'#226'mbio'
            TabOrder = 3
            object StaticText68: TStaticText
              Left = 7
              Top = 16
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Lan'#231'amento Financeiro'
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
            object DBLookupComboBox15: TDBLookupComboBox
              Left = 127
              Top = 16
              Width = 519
              Height = 21
              DataField = 'ContratoCambio_Classificacao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object StaticText69: TStaticText
              Left = 7
              Top = 39
              Width = 118
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Documento'
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
            object DBLookupComboBox16: TDBLookupComboBox
              Left = 127
              Top = 39
              Width = 519
              Height = 21
              DataField = 'ContratoCambio_Documento'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsTiposDocumentos
              NullValueKey = 46
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox38: TGroupBox
            Left = 9
            Top = 425
            Width = 261
            Height = 68
            Caption = 'Solicita'#231#227'o de Numer'#225'rio'
            TabOrder = 4
            object DBCheckBox44: TDBCheckBox
              Left = 14
              Top = 19
              Width = 210
              Height = 17
              Caption = 'Gerar lan'#231'amento financeiros do total'
              DataField = 'Gerar_TituloSolictacaoNumTotal'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBCheckBox43: TDBCheckBox
              Left = 14
              Top = 42
              Width = 210
              Height = 17
              Caption = 'Gerar lan'#231'amento financeiro dos itens'
              DataField = 'Gerar_TituloSolictacaoNumItem'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = '&Duplicatas'
          object GroupBox4: TGroupBox
            Left = 1
            Top = 2
            Width = 827
            Height = 236
            Caption = 'Gera'#231#227'o das Duplicatas dos Impostos'
            TabOrder = 0
            object StaticText15: TStaticText
              Left = 7
              Top = 48
              Width = 61
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Duplicata 1'
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
            object StaticText24: TStaticText
              Left = 7
              Top = 71
              Width = 61
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Duplicata 2'
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
            object StaticText25: TStaticText
              Left = 7
              Top = 94
              Width = 61
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Duplicata 3'
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
            object StaticText26: TStaticText
              Left = 7
              Top = 117
              Width = 61
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Duplicata 4'
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
            object StaticText28: TStaticText
              Left = 7
              Top = 140
              Width = 61
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Duplicata 5'
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
            object StaticText27: TStaticText
              Left = 7
              Top = 163
              Width = 61
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Duplicata 6'
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
            object cVencimento1: TDBEdit
              Left = 680
              Top = 47
              Width = 33
              Height = 21
              DataField = 'Duplicata01_Dias'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object lVencimento1: TStaticText
              Left = 605
              Top = 47
              Width = 73
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Vencto.(Dias)'
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
            object lVencimento2: TStaticText
              Left = 605
              Top = 71
              Width = 73
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Vencto.(Dias)'
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
            object cVencimento2: TDBEdit
              Left = 680
              Top = 71
              Width = 33
              Height = 21
              DataField = 'Duplicata02_Dias'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
            object lVencimento3: TStaticText
              Left = 605
              Top = 94
              Width = 73
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Vencto.(Dias)'
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
            object cVencimento3: TDBEdit
              Left = 680
              Top = 94
              Width = 33
              Height = 21
              DataField = 'Duplicata03_Dias'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
            end
            object cVencimento4: TDBEdit
              Left = 680
              Top = 117
              Width = 33
              Height = 21
              DataField = 'Duplicata04_Dias'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
            end
            object lVencimento4: TStaticText
              Left = 605
              Top = 117
              Width = 73
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Vencto.(Dias)'
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
            object lVencimento5: TStaticText
              Left = 605
              Top = 140
              Width = 73
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Vencto.(Dias)'
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
            object cVencimento5: TDBEdit
              Left = 680
              Top = 140
              Width = 33
              Height = 21
              DataField = 'Duplicata05_Dias'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 18
            end
            object lVencimento6: TStaticText
              Left = 605
              Top = 163
              Width = 73
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Vencto.(Dias)'
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
            object cVencimento6: TDBEdit
              Left = 680
              Top = 163
              Width = 33
              Height = 21
              DataField = 'Duplicata06_Dias'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 22
            end
            object StaticText35: TStaticText
              Left = 7
              Top = 186
              Width = 61
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Duplicata 7'
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
            object lVencimento7: TStaticText
              Left = 605
              Top = 186
              Width = 73
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Vencto.(Dias)'
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
            object cVencimento7: TDBEdit
              Left = 680
              Top = 186
              Width = 33
              Height = 21
              DataField = 'Duplicata07_Dias'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 26
            end
            object StaticText39: TStaticText
              Left = 7
              Top = 209
              Width = 61
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Duplicata 8'
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
            object lVencimento8: TStaticText
              Left = 605
              Top = 209
              Width = 73
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Vencto.(Dias)'
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
            object cVencimento8: TDBEdit
              Left = 680
              Top = 209
              Width = 33
              Height = 21
              DataField = 'Duplicata08_Dias'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 30
            end
            object cMes1: TDBCheckBox
              Left = 715
              Top = 48
              Width = 110
              Height = 17
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata01_Sub'
              DataSource = Dados.dsConfiguracao
              TabOrder = 3
            end
            object cMes2: TDBCheckBox
              Left = 715
              Top = 72
              Width = 110
              Height = 17
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata02_Sub'
              DataSource = Dados.dsConfiguracao
              TabOrder = 7
            end
            object cMes3: TDBCheckBox
              Left = 715
              Top = 95
              Width = 110
              Height = 17
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata03_Sub'
              DataSource = Dados.dsConfiguracao
              TabOrder = 11
            end
            object cMes4: TDBCheckBox
              Left = 715
              Top = 118
              Width = 110
              Height = 17
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata04_Sub'
              DataSource = Dados.dsConfiguracao
              TabOrder = 15
            end
            object cMes5: TDBCheckBox
              Left = 715
              Top = 141
              Width = 110
              Height = 17
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata05_Sub'
              DataSource = Dados.dsConfiguracao
              TabOrder = 19
            end
            object cMes6: TDBCheckBox
              Left = 715
              Top = 164
              Width = 110
              Height = 17
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata06_Sub'
              DataSource = Dados.dsConfiguracao
              TabOrder = 23
            end
            object cMes7: TDBCheckBox
              Left = 715
              Top = 187
              Width = 110
              Height = 17
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata07_Sub'
              DataSource = Dados.dsConfiguracao
              TabOrder = 27
            end
            object cMes8: TDBCheckBox
              Left = 715
              Top = 210
              Width = 110
              Height = 17
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata08_Sub'
              DataSource = Dados.dsConfiguracao
              TabOrder = 31
            end
            object cDuplicata01: TDBLookupComboBox
              Left = 70
              Top = 48
              Width = 180
              Height = 21
              DataField = 'Duplicata01'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoDuplicata
              NullValueKey = 46
              ParentFont = False
              TabOrder = 0
            end
            object cDuplicata02: TDBLookupComboBox
              Left = 70
              Top = 71
              Width = 180
              Height = 21
              DataField = 'Duplicata02'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoDuplicata
              NullValueKey = 46
              ParentFont = False
              TabOrder = 4
            end
            object cDuplicata03: TDBLookupComboBox
              Left = 70
              Top = 94
              Width = 180
              Height = 21
              DataField = 'Duplicata03'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoDuplicata
              NullValueKey = 46
              ParentFont = False
              TabOrder = 8
            end
            object cDuplicata06: TDBLookupComboBox
              Left = 70
              Top = 163
              Width = 180
              Height = 21
              DataField = 'Duplicata06'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoDuplicata
              NullValueKey = 46
              ParentFont = False
              TabOrder = 20
            end
            object cDuplicata05: TDBLookupComboBox
              Left = 70
              Top = 140
              Width = 180
              Height = 21
              DataField = 'Duplicata05'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoDuplicata
              NullValueKey = 46
              ParentFont = False
              TabOrder = 16
            end
            object cDuplicata04: TDBLookupComboBox
              Left = 70
              Top = 117
              Width = 180
              Height = 21
              DataField = 'Duplicata04'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoDuplicata
              NullValueKey = 46
              ParentFont = False
              TabOrder = 12
            end
            object cDuplicata08: TDBLookupComboBox
              Left = 70
              Top = 209
              Width = 180
              Height = 21
              DataField = 'Duplicata08'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoDuplicata
              NullValueKey = 46
              ParentFont = False
              TabOrder = 28
            end
            object cDuplicata07: TDBLookupComboBox
              Left = 70
              Top = 186
              Width = 180
              Height = 21
              DataField = 'Duplicata07'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoDuplicata
              NullValueKey = 46
              ParentFont = False
              TabOrder = 24
            end
            object DBCheckBox22: TDBCheckBox
              Left = 7
              Top = 23
              Width = 306
              Height = 17
              Caption = 'Gerar as duplicatas dos impostos na emiss'#227'o da nota fiscal.'
              DataField = 'Gerar_DuplImpostos'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 48
            end
            object lClassificacao1: TStaticText
              Left = 252
              Top = 48
              Width = 69
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 49
              Transparent = False
              StyleElements = []
            end
            object lClassificacao2: TStaticText
              Left = 252
              Top = 71
              Width = 69
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 50
              Transparent = False
              StyleElements = []
            end
            object lClassificacao3: TStaticText
              Left = 252
              Top = 94
              Width = 69
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 51
              Transparent = False
              StyleElements = []
            end
            object lClassificacao4: TStaticText
              Left = 252
              Top = 117
              Width = 69
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 52
              Transparent = False
              StyleElements = []
            end
            object lClassificacao5: TStaticText
              Left = 252
              Top = 140
              Width = 69
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 53
              Transparent = False
              StyleElements = []
            end
            object lClassificacao6: TStaticText
              Left = 252
              Top = 163
              Width = 69
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 54
              Transparent = False
              StyleElements = []
            end
            object lClassificacao7: TStaticText
              Left = 252
              Top = 186
              Width = 69
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 55
              Transparent = False
              StyleElements = []
            end
            object lClassificacao8: TStaticText
              Left = 252
              Top = 209
              Width = 69
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 56
              Transparent = False
              StyleElements = []
            end
            object cClassificacao1: TDBLookupComboBox
              Left = 323
              Top = 48
              Width = 279
              Height = 21
              DataField = 'Duplicata01_Class'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object cClassificacao2: TDBLookupComboBox
              Left = 323
              Top = 71
              Width = 279
              Height = 21
              DataField = 'Duplicata02_Class'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              NullValueKey = 46
              ParentFont = False
              TabOrder = 5
            end
            object cClassificacao3: TDBLookupComboBox
              Left = 323
              Top = 94
              Width = 279
              Height = 21
              DataField = 'Duplicata03_Class'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              NullValueKey = 46
              ParentFont = False
              TabOrder = 9
            end
            object cClassificacao6: TDBLookupComboBox
              Left = 323
              Top = 163
              Width = 279
              Height = 21
              DataField = 'Duplicata06_Class'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              NullValueKey = 46
              ParentFont = False
              TabOrder = 21
            end
            object cClassificacao5: TDBLookupComboBox
              Left = 323
              Top = 140
              Width = 279
              Height = 21
              DataField = 'Duplicata05_Class'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              NullValueKey = 46
              ParentFont = False
              TabOrder = 17
            end
            object cClassificacao4: TDBLookupComboBox
              Left = 323
              Top = 117
              Width = 279
              Height = 21
              DataField = 'Duplicata04_Class'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              NullValueKey = 46
              ParentFont = False
              TabOrder = 13
            end
            object cClassificacao8: TDBLookupComboBox
              Left = 323
              Top = 209
              Width = 279
              Height = 21
              DataField = 'Duplicata08_Class'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              NullValueKey = 46
              ParentFont = False
              TabOrder = 29
            end
            object cClassificacao7: TDBLookupComboBox
              Left = 323
              Top = 186
              Width = 279
              Height = 21
              DataField = 'Duplicata07_Class'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              NullValueKey = 46
              ParentFont = False
              TabOrder = 25
            end
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 1
            Top = 260
            Width = 323
            Height = 46
            Caption = 'Vencimentos em final de semana?'
            Columns = 3
            DataField = 'Dia_Util'
            DataSource = Dados.dsConfiguracao
            Items.Strings = (
              'Antecipar'
              'Avan'#231'ar'
              'Nenhum')
            TabOrder = 1
            Values.Strings = (
              '-'
              '+'
              'N')
          end
          object DBRadioGroup8: TDBRadioGroup
            Left = 1
            Top = 320
            Width = 323
            Height = 46
            Caption = 'Diferen'#231'a de arredondamento'
            Columns = 2
            DataField = 'Diferenca_Duplicata'
            DataSource = Dados.dsConfiguracao
            Items.Strings = (
              'Na Primeira Duplicata'
              'Na '#250'ltima Duplicata')
            TabOrder = 2
            Values.Strings = (
              '0'
              '1')
          end
          object DBRadioGroup18: TDBRadioGroup
            Left = 1
            Top = 380
            Width = 323
            Height = 46
            Caption = 'Numero da Duplicata'
            Columns = 2
            DataField = 'Sequencial_Duplicata'
            DataSource = Dados.dsConfiguracao
            Items.Strings = (
              'Sequencial de n'#250'mero'
              'Sequencial de letra')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1')
          end
        end
        object TabSheet9: TTabSheet
          Caption = '&Diversos'
          ImageIndex = 3
          object StaticText71: TStaticText
            Left = 6
            Top = 29
            Width = 311
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Hora limite para solicita'#231#227'o de numer'#225'rios'
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
          object DBEdit18: TDBEdit
            Left = 319
            Top = 29
            Width = 88
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Hora_Solicitacao'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object GroupBox20: TGroupBox
            Left = 5
            Top = 60
            Width = 820
            Height = 107
            Caption = 'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es a Representantes)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object StaticText84: TStaticText
              Left = 5
              Top = 81
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo de Documento'
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
            object DBLookupComboBox27: TDBLookupComboBox
              Left = 204
              Top = 81
              Width = 610
              Height = 21
              DataField = 'Tipo_DocumentoPagamento'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsTiposDocumentos
              NullValueKey = 46
              ParentFont = False
              TabOrder = 2
            end
            object StaticText85: TStaticText
              Left = 5
              Top = 59
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Centro de Custo'
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
            object DBLookupComboBox28: TDBLookupComboBox
              Left = 204
              Top = 59
              Width = 610
              Height = 21
              DataField = 'Centro_CustoPagamento'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo; Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsCentroCusto
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object StaticText86: TStaticText
              Left = 5
              Top = 15
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o Financeira (PJ)'
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
            object DBLookupComboBox29: TDBLookupComboBox
              Left = 204
              Top = 15
              Width = 610
              Height = 21
              DataField = 'Classificacao_Pagamento'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 0
            end
            object StaticText187: TStaticText
              Left = 5
              Top = 37
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o Financeira (PF)'
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
            object DBLookupComboBox40: TDBLookupComboBox
              Left = 204
              Top = 37
              Width = 610
              Height = 21
              DataField = 'Classificacao_PagamentoPF'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 7
            end
          end
          object GroupBox25: TGroupBox
            Left = 5
            Top = 344
            Width = 820
            Height = 133
            Caption = 'Informa'#231#245'es default para empr'#233'stimos banc'#225'rios (Capital de Giro)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object StaticText102: TStaticText
              Left = 5
              Top = 84
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Centro de Custo'
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
            object DBLookupComboBox21: TDBLookupComboBox
              Left = 204
              Top = 84
              Width = 610
              Height = 21
              DataField = 'EmprestimoBancario_CentroCusto'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsCentroCusto
              NullValueKey = 46
              ParentFont = False
              TabOrder = 3
            end
            object StaticText103: TStaticText
              Left = 5
              Top = 61
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o Financeira (Pagamento)'
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
            object StaticText108: TStaticText
              Left = 5
              Top = 15
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o Financeira (Recebimento)'
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
            object DBLookupComboBox23: TDBLookupComboBox
              Left = 204
              Top = 15
              Width = 610
              Height = 21
              DataField = 'EmprestimoBancario_ClassificacaoR'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 0
            end
            object StaticText109: TStaticText
              Left = 5
              Top = 107
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo de Documento'
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
            object DBLookupComboBox24: TDBLookupComboBox
              Left = 204
              Top = 107
              Width = 610
              Height = 21
              DataField = 'EmprestimoBancario_TipoDocumento'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsTiposDocumentos
              NullValueKey = 46
              ParentFont = False
              TabOrder = 4
            end
            object DBLookupComboBox22: TDBLookupComboBox
              Left = 204
              Top = 61
              Width = 610
              Height = 21
              DataField = 'EmprestimoBancario_ClassificacaoP'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 2
            end
            object StaticText110: TStaticText
              Left = 5
              Top = 38
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Forma de Recebimento'
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
            object cForma: TDBComboBox
              Left = 204
              Top = 38
              Width = 610
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EmprestimoBancario_FormaRecebimento'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Items.Strings = (
                'CHEQUE'
                'CART'#195'O DE CR'#201'DITO'
                'CART'#195'O DE D'#201'BITO'
                'TRANSFER'#202'NCIA ON-LINE'
                'DOC'
                'BOLETO BANC'#193'RIO'
                'D'#201'BITO EM CONTA'
                'DINHEIRO')
              ParentFont = False
              TabOrder = 1
            end
          end
          object DBRadioGroup17: TDBRadioGroup
            Left = 5
            Top = 478
            Width = 500
            Height = 37
            Caption = 'Calcular comiss'#227'o de representantes'
            Columns = 3
            DataField = 'Calculo_Comissao'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Total dos Produtos'
              'Total dos Produtos + IPI'
              'Total da Nota Fiscal')
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              'PRODUTO'
              'PRODUTO+IPI'
              'TOTAL NOTA')
          end
          object GroupBox31: TGroupBox
            Left = 5
            Top = 169
            Width = 820
            Height = 87
            Caption = 
              'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es a Atendentes de Call ' +
              'Center)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object StaticText132: TStaticText
              Left = 5
              Top = 61
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo de Documento'
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
            object DBLookupComboBox25: TDBLookupComboBox
              Left = 204
              Top = 61
              Width = 610
              Height = 21
              DataField = 'Tipo_DocumentoPagamentoTelevendas'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsTiposDocumentos
              NullValueKey = 46
              ParentFont = False
              TabOrder = 2
            end
            object StaticText133: TStaticText
              Left = 5
              Top = 38
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Centro de Custo'
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
            object DBLookupComboBox26: TDBLookupComboBox
              Left = 204
              Top = 38
              Width = 610
              Height = 21
              DataField = 'Centro_CustoPagamentoTelevendas'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo; Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsCentroCusto
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object StaticText134: TStaticText
              Left = 5
              Top = 15
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o Financeira'
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
            object DBLookupComboBox30: TDBLookupComboBox
              Left = 204
              Top = 15
              Width = 610
              Height = 21
              DataField = 'Classificacao_PagamentoTelevendas'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox32: TGroupBox
            Left = 5
            Top = 257
            Width = 820
            Height = 87
            Caption = 'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es - Outras)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object StaticText144: TStaticText
              Left = 5
              Top = 61
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tipo de Documento'
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
            object DBLookupComboBox31: TDBLookupComboBox
              Left = 204
              Top = 61
              Width = 610
              Height = 21
              DataField = 'Tipo_DocumentoPagamentoOutros'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsTiposDocumentos
              NullValueKey = 46
              ParentFont = False
              TabOrder = 2
            end
            object StaticText145: TStaticText
              Left = 5
              Top = 38
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Centro de Custo'
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
            object DBLookupComboBox32: TDBLookupComboBox
              Left = 204
              Top = 38
              Width = 610
              Height = 21
              DataField = 'Centro_CustoPagamentoOutros'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo; Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsCentroCusto
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object StaticText146: TStaticText
              Left = 5
              Top = 15
              Width = 197
              Height = 21
              Cursor = crHandPoint
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o Financeira'
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
            object DBLookupComboBox33: TDBLookupComboBox
              Left = 204
              Top = 15
              Width = 610
              Height = 21
              DataField = 'Classificacao_PagamentoOutros'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 0
            end
          end
          object StaticText199: TStaticText
            Left = 6
            Top = 5
            Width = 311
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Empresa onde ser'#227'o gerados os recebimentos na emiss'#227'o da  NF'
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
          object RxDBLookupCombo14: TRxDBLookupCombo
            Left = 319
            Top = 5
            Width = 500
            Height = 21
            DropDownCount = 8
            DisplayAllFields = True
            DataField = 'Empresa_Financeiro'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            LookupField = 'CNPJ'
            LookupDisplay = 'Razao_Social;CNPJ;Numero_Filial;Estado'
            LookupSource = Dados.dsEmpresas
            ParentFont = False
            TabOrder = 8
          end
        end
        object TabSheet15: TTabSheet
          Caption = '&Boleto Banc'#225'rio'
          ImageIndex = 3
          object DBCheckBox30: TDBCheckBox
            Left = 6
            Top = 248
            Width = 195
            Height = 17
            Caption = 'Imprimir dados de contato no boleto.'
            DataField = 'Boleto_Contato'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object StaticText136: TStaticText
            Left = 6
            Top = 29
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual de multa ap'#243's o vencimento'
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
          object StaticText137: TStaticText
            Left = 6
            Top = 52
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual de Juros por dia de atraso'
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
          object StaticText138: TStaticText
            Left = 6
            Top = 75
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Instru'#231#245'es 1 (C'#243'digo/Descri'#231#227'o)'
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
          object DBEdit71: TDBEdit
            Left = 221
            Top = 29
            Width = 66
            Height = 21
            DataField = 'Boleto_PercentualMulta'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit72: TDBEdit
            Left = 221
            Top = 52
            Width = 66
            Height = 21
            DataField = 'Boleto_PercentualJuros'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit73: TDBEdit
            Left = 289
            Top = 75
            Width = 527
            Height = 21
            DataField = 'Boleto_Instrucoes'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object StaticText139: TStaticText
            Left = 6
            Top = 121
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Multa ap'#243's quantos dias'
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
          object DBEdit66: TDBEdit
            Left = 221
            Top = 121
            Width = 37
            Height = 21
            DataField = 'Boleto_MultaDias'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object StaticText140: TStaticText
            Left = 6
            Top = 167
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Esp'#233'cie Documento'
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
          object DBComboBox3: TDBComboBox
            Left = 221
            Top = 167
            Width = 237
            Height = 21
            DataField = 'Boleto_EspecieDOC'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Aluguel'
              'Apolice de Seguro'
              'Cheque'
              'Contrato'
              'Contribui'#231#227'o Confederativa'
              'Cosseguros'
              'Divida Ativa Estado'
              'Divida Ativa Munic'#237'pio'
              'Divida Ativa Uni'#227'o'
              'Duplicata Mercantil'
              'Duplicata Mercantial Indica'#231#227'o'
              'Duplicata Rural'
              'Duplicata Servi'#231'o'
              'Duplicata Servi'#231'o Indica'#231#227'o'
              'Fatura'
              'Letra C'#226'mbio'
              'Mensalidade Escolar'
              'Nota Cr'#233'dito Comercial'
              'Nota Cr'#233'dito Export'#231#227'o'
              'Nota Cr'#233'dito Industrial'
              'Nota Cr'#233'dito Rural'
              'Nota D'#233'bito'
              'Nota Promiss'#243'ria'
              'Nota Promiss'#243'ria Rural'
              'Nota Seguro'
              'Outros'
              'Parcela Cons'#243'rcio'
              'Recibo'
              'Triplicata Mercantil'
              'Triplicata Servi'#231'o'
              'Warrant')
            ParentFont = False
            TabOrder = 6
          end
          object StaticText135: TStaticText
            Left = 6
            Top = 6
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Local de Pagamento'
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
          object DBEdit70: TDBEdit
            Left = 221
            Top = 6
            Width = 595
            Height = 21
            DataField = 'Boleto_LocalPagamento'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit74: TDBEdit
            Left = 221
            Top = 75
            Width = 66
            Height = 21
            DataField = 'Boleto_InstrucaoCod'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object StaticText153: TStaticText
            Left = 6
            Top = 98
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Instru'#231#245'es 2 (C'#243'digo)'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 14
            Transparent = False
            StyleElements = []
          end
          object DBEdit77: TDBEdit
            Left = 221
            Top = 98
            Width = 66
            Height = 21
            DataField = 'Boleto_InstrucaoCod2'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
          end
          object StaticText179: TStaticText
            Left = 6
            Top = 144
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Protestar ap'#243's quantos dias'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 16
            Transparent = False
            StyleElements = []
          end
          object DBEdit90: TDBEdit
            Left = 221
            Top = 144
            Width = 37
            Height = 21
            DataField = 'Boleto_ProtestoDias'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
          end
          object StaticText202: TStaticText
            Left = 6
            Top = 190
            Width = 213
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Intervalo de envio entre E-Mails (Segundos)'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 18
            Transparent = False
            StyleElements = []
          end
          object DBEdit102: TDBEdit
            Left = 221
            Top = 190
            Width = 59
            Height = 21
            DataField = 'Boleto_IntervaloEmail'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 19
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'P&rocessos'
      ImageIndex = 6
      object PageControl3: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 833
        Height = 557
        ActivePage = TabSheet19
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabHeight = 28
        TabOrder = 0
        TabPosition = tpBottom
        object TabSheet19: TTabSheet
          Caption = '&Diversos'
          object cNumeroProcesso: TDBRadioGroup
            Left = 4
            Top = 1
            Width = 413
            Height = 147
            Caption = 'Gera'#231#227'o do N'#250'mero do Processo/PO Autom'#225'tico'
            DataField = 'Processo_Numero'
            DataSource = Dados.dsConfiguracao
            Items.Strings = (
              'M'#225'scara + N'#250'mero'
              'M'#225'scara + N'#250'mero + Ano'
              'M'#225'scara + Ano + N'#250'mero'
              'N'#250'mero + Ano + M'#225'scara'
              'Ano + N'#250'mero+ M'#225'scara'
              'M'#225'scara + Navio+ BL')
            TabOrder = 0
            Values.Strings = (
              'MN'
              'MNA'
              'MAN'
              'NAM'
              'ANM'
              'MNB')
          end
          object DBRadioGroup7: TDBRadioGroup
            Left = 276
            Top = 33
            Width = 109
            Height = 80
            Caption = 'Digitos do Ano'
            DataField = 'Processo_DigitosAno'
            DataSource = Dados.dsConfiguracao
            Items.Strings = (
              '2 Digitos'
              '4 Digitos')
            TabOrder = 1
            Values.Strings = (
              '2'
              '4')
          end
          object DBCheckBox5: TDBCheckBox
            Left = 5
            Top = 154
            Width = 319
            Height = 17
            Caption = 'Bloquear a movimenta'#231#227'o financeira para processos fechados.'
            DataField = 'Bloquear_ProcessoFechado'
            DataSource = Dados.dsConfiguracao
            TabOrder = 2
          end
          object DBCheckBox8: TDBCheckBox
            Left = 5
            Top = 178
            Width = 264
            Height = 17
            Caption = 'Obrigar campos da fatura no cadastro do processo.'
            DataField = 'Processo_ObrigarFatura'
            DataSource = Dados.dsConfiguracao
            TabOrder = 3
          end
          object DBCheckBox24: TDBCheckBox
            Left = 5
            Top = 202
            Width = 356
            Height = 17
            Caption = 
              'N'#227'o bloquear item de contrato de c'#226'mbio com valor maior que o sa' +
              'ldo.'
            DataField = 'Bloquear_ItemContrato'
            DataSource = Dados.dsConfiguracao
            TabOrder = 4
          end
          object StaticText161: TStaticText
            Left = 5
            Top = 238
            Width = 161
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Valor da DI'
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
          object DBEdit84: TDBEdit
            Left = 168
            Top = 238
            Width = 100
            Height = 21
            DataField = 'Valor_DI'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object StaticText194: TStaticText
            Left = 5
            Top = 284
            Width = 161
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Valor m'#237'nimo do seguro'
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
          object DBEdit95: TDBEdit
            Left = 168
            Top = 284
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Minimo_Seguro'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object StaticText195: TStaticText
            Left = 5
            Top = 261
            Width = 161
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual p/composi'#231#227'o Seguro'
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
          object DBEdit96: TDBEdit
            Left = 168
            Top = 261
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_Seguro'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object StaticText196: TStaticText
            Left = 5
            Top = 330
            Width = 161
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Tarifa Marinha Mercante'
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
          object DBEdit97: TDBEdit
            Left = 168
            Top = 330
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Tarifa_Marinha'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object StaticText198: TStaticText
            Left = 5
            Top = 307
            Width = 161
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual Marinha Mercante'
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
          object DBEdit99: TDBEdit
            Left = 168
            Top = 307
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_Marinha'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
          end
          object StaticText197: TStaticText
            Left = 5
            Top = 353
            Width = 161
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Fator de Convers'#227'o Navio'
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
          object DBEdit98: TDBEdit
            Left = 168
            Top = 353
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Navio_FatorConversao'
            DataSource = Dados.dsConfiguracao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
          end
        end
        object TabSheet17: TTabSheet
          Caption = '&Importa'#231#227'o de DI'
          ImageIndex = 1
          object GroupBox8: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 819
            Height = 515
            Align = alClient
            Caption = 'Importa'#231#227'o de DI'#39's do SISCOMEX'
            TabOrder = 0
            object Label1: TLabel
              Left = 7
              Top = 73
              Width = 491
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 
                'Informe um * neste campo para pegar a primeira palavra como o c'#243 +
                'digo do fabricante.'
              Color = 16744448
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 13882323
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object StaticText41: TStaticText
              Left = 7
              Top = 15
              Width = 292
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Moeda padr'#227'o p/convers'#227'o p/DI'#39's com mais de uma moeda'
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
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 301
              Top = 15
              Width = 510
              Height = 21
              DataField = 'Moeda_Importacao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Nome;Simbolo'
              ListFieldIndex = 1
              ListSource = Dados.dsMoedas
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object StaticText66: TStaticText
              Left = 7
              Top = 38
              Width = 292
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Ramo de atividade padr'#227'o para fornecedores do exterior'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 14
              Transparent = False
              StyleElements = []
            end
            object DBLookupComboBox13: TDBLookupComboBox
              Left = 301
              Top = 38
              Width = 510
              Height = 21
              DataField = 'Ramo_Atividade'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsRamoAtividade
              NullValueKey = 46
              ParentFont = False
              TabOrder = 2
            end
            object DBRadioGroup13: TDBRadioGroup
              Left = 8
              Top = 168
              Width = 297
              Height = 89
              Caption = 'Peso Unit'#225'rio Produto'
              DataField = 'Adicao_PesoLiquido'
              DataSource = Dados.dsConfiguracao
              Items.Strings = (
                'Ratear peso l'#237'quido da Adi'#231#227'o'
                'Utilizar peso do cadastro de Produtos'
                'Utilizar peso dos itens da Fatura')
              TabOrder = 7
              Values.Strings = (
                '0'
                '1'
                '2')
            end
            object DBCheckBox6: TDBCheckBox
              Left = 9
              Top = 273
              Width = 392
              Height = 17
              Caption = 
                'S'#243' importar produtos do SISCOMEX para descri'#231#245'es com o c'#243'digo do' +
                ' sistema.'
              DataField = 'SISCOMEX_CodigoProduto'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object StaticText121: TStaticText
              Left = 7
              Top = 87
              Width = 292
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'M'#225'scara p/importa'#231#227'o c'#243'd.refer'#234'ncia na descri'#231#227'o do prod.'
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
            object DBEdit62: TDBEdit
              Left = 301
              Top = 87
              Width = 198
              Height = 21
              CharCase = ecUpperCase
              DataField = 'SISCOMEX_MascaraReferencia'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object DBCheckBox14: TDBCheckBox
              Left = 9
              Top = 295
              Width = 252
              Height = 17
              Caption = 'Importar processos com notas fiscais j'#225' emitidas.'
              DataField = 'Processo_ImportarFechado'
              DataSource = Dados.dsConfiguracao
              TabOrder = 9
            end
            object cAFRMMCalc: TDBCheckBox
              Left = 9
              Top = 316
              Width = 336
              Height = 17
              Caption = 'Calcular valor de AFRMM e gerar lan'#231'amento no financeiro.'
              DataField = 'AFRMM_Calcular'
              DataSource = Dados.dsConfiguracao
              TabOrder = 10
              OnClick = cAFRMMCalcClick
            end
            object lTarifa: TStaticText
              Left = 35
              Top = 362
              Width = 130
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Tarifa'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 16
              Transparent = False
              StyleElements = []
            end
            object cTarifa: TDBEdit
              Left = 167
              Top = 362
              Width = 104
              Height = 21
              CharCase = ecUpperCase
              DataField = 'AFRMM_Tarifa'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
            end
            object lTaxa: TStaticText
              Left = 35
              Top = 385
              Width = 130
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Taxa Utiliza'#231#227'o Mercante'
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
            object cTaxa: TDBEdit
              Left = 167
              Top = 385
              Width = 104
              Height = 21
              CharCase = ecUpperCase
              DataField = 'AFRMM_Taxa'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
            end
            object StaticText141: TStaticText
              Left = 35
              Top = 339
              Width = 130
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Percentual p/C'#225'lculo'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 18
              Transparent = False
              StyleElements = []
            end
            object DBEdit67: TDBEdit
              Left = 167
              Top = 339
              Width = 104
              Height = 21
              CharCase = ecUpperCase
              DataField = 'AFRMM_Percentual'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
            end
            object DBRadioGroup19: TDBRadioGroup
              Left = 503
              Top = 68
              Width = 309
              Height = 48
              Caption = 'Posi'#231#227'o do c'#243'digo de refer'#234'ncia na descri'#231#227'o'
              Columns = 2
              DataField = 'SISCOMEX_MascaraPosicao'
              DataSource = Dados.dsConfiguracao
              Items.Strings = (
                'No inicio da descri'#231#227'o'
                'No final da descri'#231#227'o')
              TabOrder = 4
              Values.Strings = (
                '1'
                '2')
            end
            object StaticText159: TStaticText
              Left = 7
              Top = 110
              Width = 292
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'M'#225'scara p/importa'#231#227'o do n'#186' do PO na descri'#231#227'o do prod.'
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
            object DBEdit80: TDBEdit
              Left = 301
              Top = 110
              Width = 120
              Height = 21
              CharCase = ecUpperCase
              DataField = 'SISCOMEX_MascaraPO'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object StaticText160: TStaticText
              Left = 7
              Top = 133
              Width = 292
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'M'#225'scara p/importa'#231#227'o do n'#186' do ITEM na descri'#231#227'o do prod.'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 20
              Transparent = False
              StyleElements = []
            end
            object DBEdit81: TDBEdit
              Left = 301
              Top = 133
              Width = 120
              Height = 21
              CharCase = ecUpperCase
              DataField = 'SISCOMEX_MascaraITEM'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit82: TDBEdit
              Left = 423
              Top = 110
              Width = 76
              Height = 21
              CharCase = ecUpperCase
              DataField = 'SISCOMEX_MascaraPOFech'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 21
            end
            object DBEdit83: TDBEdit
              Left = 423
              Top = 133
              Width = 76
              Height = 21
              CharCase = ecUpperCase
              DataField = 'SISCOMEX_MascaraITEMFech'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 22
            end
            object StaticText206: TStaticText
              Left = 8
              Top = 436
              Width = 130
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Percentuakl do CBS'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 23
              Transparent = False
              StyleElements = []
            end
            object DBEdit107: TDBEdit
              Left = 140
              Top = 436
              Width = 104
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Aliquota_CBS'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 24
            end
          end
        end
        object TabSheet18: TTabSheet
          Caption = '&Fechamento de Processos'
          object GroupBox21: TGroupBox
            Left = 4
            Top = 1
            Width = 820
            Height = 296
            Caption = 'Par'#226'metros para Fechamento de Processo'
            TabOrder = 0
            object StaticText88: TStaticText
              Left = 7
              Top = 15
              Width = 135
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'CSLL'
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
            object DBLookupComboBox17: TDBLookupComboBox
              Left = 144
              Top = 15
              Width = 449
              Height = 21
              DataField = 'Processo_FechamentoCSLL'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao;Valor'
              ListFieldIndex = 1
              ListSource = Dados.dsImpostos
              NullValueKey = 46
              ParentFont = False
              TabOrder = 1
            end
            object StaticText89: TStaticText
              Left = 7
              Top = 38
              Width = 135
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'IRPJ'
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
            object DBLookupComboBox18: TDBLookupComboBox
              Left = 144
              Top = 38
              Width = 449
              Height = 21
              DataField = 'Processo_FechamentoIRPJ'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao;Valor'
              ListFieldIndex = 1
              ListSource = Dados.dsImpostos
              NullValueKey = 46
              ParentFont = False
              TabOrder = 2
            end
            object StaticText90: TStaticText
              Left = 7
              Top = 61
              Width = 135
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Percentual ICMS (Pagar)'
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
            object DBEdit41: TDBEdit
              Left = 144
              Top = 61
              Width = 67
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Processo_FechamentoICMSPagar'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object StaticText91: TStaticText
              Left = 7
              Top = 84
              Width = 135
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Percentual FDE'
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
            object DBEdit42: TDBEdit
              Left = 144
              Top = 84
              Width = 67
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Processo_FechamentoFDE'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object StaticText92: TStaticText
              Left = 215
              Top = 84
              Width = 111
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Assessoria Aduaneira'
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
            object DBEdit43: TDBEdit
              Left = 328
              Top = 84
              Width = 67
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Processo_FechamentoAssAduaneira'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object StaticText93: TStaticText
              Left = 7
              Top = 107
              Width = 135
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o Pgto. Cliente'
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
            object DBLookupComboBox19: TDBLookupComboBox
              Left = 144
              Top = 107
              Width = 449
              Height = 21
              DataField = 'Processo_FechamentoClassPgtoCliente'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 6
            end
            object StaticText94: TStaticText
              Left = 7
              Top = 153
              Width = 135
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Classifica'#231#227'o Corr.Financ.'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 14
              Transparent = False
              StyleElements = []
            end
            object DBLookupComboBox20: TDBLookupComboBox
              Left = 144
              Top = 153
              Width = 449
              Height = 21
              DataField = 'Processo_FechamentoClassCorrecao'
              DataSource = Dados.dsConfiguracao
              DropDownRows = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsClassificacaoFinanceira
              NullValueKey = 46
              ParentFont = False
              TabOrder = 8
            end
            object StaticText95: TStaticText
              Left = 7
              Top = 130
              Width = 135
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Percentual Corre'#231#227'o Dia'
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
            object DBEdit44: TDBEdit
              Left = 144
              Top = 130
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Processo_FechamentoCorrecao'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
            end
            object DBRadioGroup11: TDBRadioGroup
              Left = 603
              Top = 10
              Width = 210
              Height = 84
              Caption = 'Observa'#231#227'o das Despesas'
              DataField = 'Processo_FechamentoObservacao'
              DataSource = Dados.dsConfiguracao
              Items.Strings = (
                'Copiar a descri'#231#227'o da Classifica'#231#227'o'
                'Observa'#231#227'o do Financeiro')
              TabOrder = 16
              Values.Strings = (
                '0'
                '1')
            end
            object StaticText30: TStaticText
              Left = 7
              Top = 176
              Width = 135
              Height = 89
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Observa'#231#227'o para o Fechamento'
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
            object DBMemo1: TDBMemo
              Left = 144
              Top = 176
              Width = 665
              Height = 89
              DataField = 'Processo_FechamentoObsTexto'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 18
            end
            object StaticText150: TStaticText
              Left = 7
              Top = 267
              Width = 135
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'C'#243'digo da DRE'
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
            object DBLookupComboBox34: TDBLookupComboBox
              Left = 144
              Top = 267
              Width = 449
              Height = 21
              DataField = 'Processo_FechamentoDRE'
              DataSource = Dados.dsConfiguracao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = Dados.dsDRE
              NullValueKey = 46
              ParentFont = False
              TabOrder = 20
            end
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = '&Checagens'
      ImageIndex = 8
      object StaticText29: TStaticText
        Left = 13
        Top = 13
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Avisar vencimento de contrato do cliente quantos dias antes?'
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
      object DBEdit24: TDBEdit
        Left = 333
        Top = 13
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aviso_VencimentoContrato'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText34: TStaticText
        Left = 13
        Top = 82
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 
          'Avisar vencimento de Retorno de Notas Fiscals Quantos dias Antes' +
          '?'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 14
        Transparent = False
        StyleElements = []
      end
      object DBEdit28: TDBEdit
        Left = 333
        Top = 82
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aviso_VencimentoRetorno'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox22: TGroupBox
        Left = 13
        Top = 262
        Width = 597
        Height = 121
        Caption = 'Entrega de Arquivos Fiscais'
        TabOrder = 13
        object StaticText40: TStaticText
          Left = 6
          Top = 19
          Width = 197
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Dia Vencimento SPED FISCAL'
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
        object StaticText96: TStaticText
          Left = 6
          Top = 42
          Width = 197
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Dia Vencimento SPED PIS/COFINS'
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
        object StaticText97: TStaticText
          Left = 6
          Top = 65
          Width = 197
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Dia Vencimento SPED CONTABIL'
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
        object StaticText98: TStaticText
          Left = 6
          Top = 88
          Width = 197
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Dia Vencimento SINTEGRA'
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
        object DBEdit47: TDBEdit
          Left = 541
          Top = 19
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_FISCALDias'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit48: TDBEdit
          Left = 541
          Top = 42
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_PISCOFINSDias'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit49: TDBEdit
          Left = 541
          Top = 65
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_CONTABILDias'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit50: TDBEdit
          Left = 541
          Top = 88
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_SINTEGRADias'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit29: TDBEdit
          Left = 205
          Top = 19
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_FISCAL'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit31: TDBEdit
          Left = 205
          Top = 42
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_PISCOFINS'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit33: TDBEdit
          Left = 205
          Top = 65
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_CONTABIL'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit46: TDBEdit
          Left = 205
          Top = 88
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_SINTEGRA'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText99: TStaticText
          Left = 397
          Top = 19
          Width = 142
          Height = 90
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 
            '                                                                ' +
            '                                                                ' +
            '                                                                ' +
            '    Avisar quantos dias antes?'
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
        object StaticText100: TStaticText
          Left = 259
          Top = 65
          Width = 82
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'M'#234's Espec'#237'fico'
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
        object DBEdit51: TDBEdit
          Left = 343
          Top = 65
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Vencimento_CONTABILMes'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
      end
      object StaticText117: TStaticText
        Left = 13
        Top = 36
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Avisar vencimento de Radar do cliente quantos dias antes?'
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
      object DBEdit60: TDBEdit
        Left = 333
        Top = 36
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aviso_VencimentoRadar'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText118: TStaticText
        Left = 13
        Top = 59
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Avisar vencimento da vincula'#231#227'o do cliente quantos dias antes?'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
        Transparent = False
        StyleElements = []
      end
      object DBEdit61: TDBEdit
        Left = 333
        Top = 59
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aviso_VencimentoVinculacao'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText128: TStaticText
        Left = 13
        Top = 105
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Avisar clientes sem movimenta'#231#227'o  quantos dias?'
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
      object DBEdit64: TDBEdit
        Left = 333
        Top = 105
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aviso_MovimentoMinimo'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit65: TDBEdit
        Left = 439
        Top = 105
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aviso_MovimentoMaximo'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText130: TStaticText
        Left = 386
        Top = 105
        Width = 50
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Max'#237'mo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
        Transparent = False
        StyleElements = []
      end
      object StaticText200: TStaticText
        Left = 13
        Top = 128
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Prazo para Exonera'#231#227'o da DI'
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
      object DBEdit100: TDBEdit
        Left = 333
        Top = 128
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Prazo_Exoneracao'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText201: TStaticText
        Left = 13
        Top = 151
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Avisar exonera'#231#227'o de ICMS Quantos dias Antes?'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 20
        Transparent = False
        StyleElements = []
      end
      object DBEdit101: TDBEdit
        Left = 333
        Top = 151
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aviso_ExoneracaoICMS'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object StaticText203: TStaticText
        Left = 13
        Top = 174
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 
          'Prazo para emiss'#227'o da nota fiscal de entrada Importa'#231'ao DI (Dias' +
          ')'
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
      object DBEdit103: TDBEdit
        Left = 333
        Top = 174
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Prazo_NFDI'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText204: TStaticText
        Left = 13
        Top = 197
        Width = 319
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 
          'Prazo para emiss'#227'o da nota fiscal de entrada Importa'#231'ao DA (Dias' +
          ')'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
        Transparent = False
        StyleElements = []
      end
      object DBEdit104: TDBEdit
        Left = 333
        Top = 197
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Prazo_NfDA'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit105: TDBEdit
        Left = 526
        Top = 174
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Prazo_NFDIDias'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit106: TDBEdit
        Left = 526
        Top = 197
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Prazo_NFDADias'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object StaticText205: TStaticText
        Left = 386
        Top = 174
        Width = 137
        Height = 44
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 
          '                                                           Avisa' +
          'r quantos dias antes?'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 23
        Transparent = False
        StyleElements = []
      end
    end
    object TabSheet10: TTabSheet
      Caption = '&Banco de Dados'
      ImageIndex = 9
      object GroupBox23: TGroupBox
        Left = 19
        Top = 32
        Width = 218
        Height = 63
        Caption = 'Tabelas Compartilhadas'
        TabOrder = 0
        object cCompClass: TDBCheckBox
          Left = 7
          Top = 18
          Width = 200
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Cadastro de Classifica'#231#227'o Financeira'
          DataField = 'Compartilhar_Classificacao'
          DataSource = Dados.dsConfiguracao
          TabOrder = 0
          OnClick = cCompClassClick
        end
        object cCompBancos: TDBCheckBox
          Left = 7
          Top = 38
          Width = 200
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Cadastro de Bancos'
          DataField = 'Compartilhar_Bancos'
          DataSource = Dados.dsConfiguracao
          TabOrder = 1
        end
      end
      object StaticText113: TStaticText
        Left = 21
        Top = 110
        Width = 220
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Manter log de registro do sistema dos '#250'ltimos'
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
      object DBEdit54: TDBEdit
        Left = 243
        Top = 110
        Width = 37
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Prazo_Log'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText114: TStaticText
        Left = 282
        Top = 110
        Width = 41
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Meses.'
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
      object DBCheckBox25: TDBCheckBox
        Left = 21
        Top = 170
        Width = 462
        Height = 17
        Caption = 
          'Verificar c'#243'digo do produto dentro da descri'#231#227'o na importa'#231#227'o do' +
          ' XML da NF-e de terceiros.'
        DataField = 'XMLTerceiros_Codigo'
        DataSource = Dados.dsConfiguracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object TabSheet14: TTabSheet
      Caption = '&Televendas/E-Commerce'
      ImageIndex = 10
      object GroupBox28: TGroupBox
        Left = 8
        Top = 0
        Width = 825
        Height = 304
        Caption = 'Dados de Faturamento para pedidos de Televendas/E-Commerce'
        TabOrder = 0
        object lTransportador: TStaticText
          Left = 8
          Top = 99
          Width = 198
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Transportador'
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
        object cTransportador: TDBLookupComboBox
          Left = 208
          Top = 99
          Width = 609
          Height = 21
          DataField = 'Televendas_Transportador'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome;CNPJ'
          ListFieldIndex = 1
          ListSource = dstTransportadores
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object StaticText124: TStaticText
          Left = 8
          Top = 143
          Width = 198
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo Nota'
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
        object cTipoNota: TRxDBLookupCombo
          Left = 208
          Top = 143
          Width = 609
          Height = 21
          DropDownCount = 15
          DataField = 'Televendas_TipoNota'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Descricao; Codigo'
          LookupSource = Dados.dsTipoNota
          ParentFont = False
          TabOrder = 3
        end
        object StaticText125: TStaticText
          Left = 8
          Top = 121
          Width = 198
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade de Frete'
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
        object StaticText126: TStaticText
          Left = 8
          Top = 165
          Width = 198
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Natureza Opera'#231#227'o (Dentro do Estado)'
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
        object StaticText127: TStaticText
          Left = 8
          Top = 187
          Width = 198
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Natureza Opera'#231#227'o (Fora do Estado)'
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
        object cModalidadeFrete: TRxDBComboBox
          Left = 208
          Top = 121
          Width = 609
          Height = 21
          DataField = 'Televendas_ModalidadeFrete'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Por conta do emitente'
            'Por conta do destinat'#225'rio/remetente'
            'Por conta de terceiros'
            'Sem cobran'#231'a de frete')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '2'
            '9')
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 208
          Top = 165
          Width = 609
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Televendas_NaturezaDentro'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao_NF'
          LookupDisplayIndex = 1
          LookupSource = dstNaturezaDentro
          ParentFont = False
          TabOrder = 4
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 208
          Top = 187
          Width = 609
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Televendas_NaturezaFora'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao_NF'
          LookupDisplayIndex = 1
          LookupSource = dstNaturezaFora
          ParentFont = False
          TabOrder = 5
        end
        object StaticText148: TStaticText
          Left = 8
          Top = 209
          Width = 198
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
          TabOrder = 10
          Transparent = False
          StyleElements = []
        end
        object cModalidade: TRxDBLookupCombo
          Left = 208
          Top = 209
          Width = 609
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Televendas_ModalidadePgto'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Descricao'
          LookupSource = Dados.dsModalidadesPgto
          ParentFont = False
          TabOrder = 11
        end
        object DBCheckBox31: TDBCheckBox
          Left = 8
          Top = 15
          Width = 428
          Height = 17
          Caption = 
            'Computar o estoque em terceiros como estoque dispon'#237'vel p/pedido' +
            's do Televendas.'
          DataField = 'Televendas_EstoqueTerceiros'
          DataSource = Dados.dsConfiguracao
          TabOrder = 12
        end
        object DBCheckBox12: TDBCheckBox
          Left = 8
          Top = 33
          Width = 281
          Height = 17
          Caption = 'N'#227'o emite nota fiscal dos pedidos dos representantes.'
          DataField = 'Tela_LiberaPedidos'
          DataSource = Dados.dsConfiguracao
          TabOrder = 13
        end
        object DBCheckBox13: TDBCheckBox
          Left = 8
          Top = 51
          Width = 281
          Height = 17
          Caption = 'Utilizar valor da planilha na importa'#231#227'o de E-Commerce.'
          DataField = 'ECommerce_Valor'
          DataSource = Dados.dsConfiguracao
          TabOrder = 14
        end
        object StaticText188: TStaticText
          Left = 8
          Top = 231
          Width = 198
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classifica'#231#227'o Financeira (Com Boletos)'
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
        object StaticText189: TStaticText
          Left = 8
          Top = 253
          Width = 198
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classifica'#231#227'o Financeira (Sem Boletos)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 16
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox41: TDBLookupComboBox
          Left = 208
          Top = 231
          Width = 609
          Height = 21
          DataField = 'Classificacao_RecebimentoComBol'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          NullValueKey = 46
          ParentFont = False
          TabOrder = 17
        end
        object DBLookupComboBox42: TDBLookupComboBox
          Left = 208
          Top = 253
          Width = 609
          Height = 21
          DataField = 'Classificacao_RecebimentoSemBol'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          NullValueKey = 46
          ParentFont = False
          TabOrder = 18
        end
        object StaticText183: TStaticText
          Left = 8
          Top = 77
          Width = 198
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Verificar Pedidos Novos a cada'
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
        object StaticText181: TStaticText
          Left = 263
          Top = 77
          Width = 49
          Height = 21
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'minutos'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 20
          Transparent = False
          StyleElements = []
        end
        object cAtivarEComm: TDBCheckBox
          Left = 321
          Top = 78
          Width = 222
          Height = 17
          Caption = 'Ativar verifica'#231#227'o de pedidos automatica.'
          DataField = 'Ativar_EComm'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object DBEdit92: TDBEdit
          Left = 209
          Top = 77
          Width = 52
          Height = 21
          DataField = 'Tempo_Verificacao'
          DataSource = Dados.dsConfiguracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
        end
        object StaticText191: TStaticText
          Left = 8
          Top = 275
          Width = 198
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classifica'#231#227'o Financeira (Devolu'#231#245'es)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox43: TDBLookupComboBox
          Left = 208
          Top = 275
          Width = 609
          Height = 21
          DataField = 'Classificacao_DevolucaoPedido'
          DataSource = Dados.dsConfiguracao
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          NullValueKey = 46
          ParentFont = False
          TabOrder = 24
        end
        object DBEdit94: TDBEdit
          Left = 735
          Top = 77
          Width = 30
          Height = 21
          DataField = 'Tempo_RefreshRep'
          DataSource = Dados.dsConfiguracao
          TabOrder = 25
        end
        object StaticText192: TStaticText
          Left = 567
          Top = 77
          Width = 166
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tempo de atualiza'#231#227'o dos Pedidos'
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
        object StaticText193: TStaticText
          Left = 768
          Top = 77
          Width = 49
          Height = 21
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'minutos'
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
        object DBCheckBox37: TDBCheckBox
          Left = 470
          Top = 15
          Width = 337
          Height = 17
          Caption = 'Libera'#231#227'o de pedidos de representantes somente com autoriza'#231#227'o'
          DataField = 'Autorizacao_Pedidos'
          DataSource = Dados.dsConfiguracao
          TabOrder = 28
        end
        object DBCheckBox38: TDBCheckBox
          Left = 470
          Top = 33
          Width = 263
          Height = 17
          Caption = 'Utilizar tela de itens do televendas p/combustiveis.'
          DataField = 'Tela_ItensTelevendas'
          DataSource = Dados.dsConfiguracao
          TabOrder = 29
        end
      end
      object GroupBox37: TGroupBox
        Left = 8
        Top = 309
        Width = 825
        Height = 250
        Caption = 'Vendas via E-Commerce'
        TabOrder = 1
        object StaticText182: TStaticText
          Left = 8
          Top = 15
          Width = 153
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'URL'
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
        object StaticText184: TStaticText
          Left = 8
          Top = 38
          Width = 153
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Comsumer Key'
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
        object StaticText185: TStaticText
          Left = 8
          Top = 61
          Width = 153
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Consumer Secret'
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
        object gEcommerce: TDBGrid
          Left = 8
          Top = 142
          Width = 805
          Height = 101
          DataSource = dmComercial.dsEComm
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = gEcommerceCellClick
          OnDrawColumnCell = gEcommerceDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'Ativo'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'URL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 402
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tempo_Verificacao'
              Title.Alignment = taCenter
              Title.Caption = 'Tempo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Consumer_Key'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'consumer_Secret'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end>
        end
        object bAddEcomm: TButton
          Left = 738
          Top = 14
          Width = 75
          Height = 33
          Caption = '&Adicionar'
          TabOrder = 4
          OnClick = bAddEcommClick
        end
        object bSalvarEcomm: TButton
          Left = 738
          Top = 50
          Width = 75
          Height = 33
          Caption = 'Sal&var'
          TabOrder = 5
          OnClick = bSalvarEcommClick
        end
        object cURLEComm: TEdit
          Left = 163
          Top = 15
          Width = 480
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Text = 'cURLEComm'
        end
        object cKeyEComm: TEdit
          Left = 163
          Top = 38
          Width = 573
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Text = 'cKeyEComm'
        end
        object cSecretEComm: TEdit
          Left = 163
          Top = 61
          Width = 573
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Text = 'cSecretEComm'
        end
        object cURLAtiva: TCheckBox
          Left = 649
          Top = 18
          Width = 72
          Height = 14
          Caption = 'URL Ativa'
          TabOrder = 9
        end
        object StaticText186: TStaticText
          Left = 8
          Top = 84
          Width = 153
          Height = 55
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Token'
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
        object cToken: TMemo
          Left = 163
          Top = 84
          Width = 573
          Height = 54
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            'cToken')
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 11
        end
      end
    end
    object TabSheet16: TTabSheet
      Caption = '&Arquivo de Inicializa'#231#227'o'
      ImageIndex = 11
      TabVisible = False
      object cmIni: TMemo
        Left = 0
        Top = 0
        Width = 839
        Height = 563
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          '[SERVIDOR]'
          'Autenticacao=auServer'
          'Autenticacao2=auWindows'
          'Nome2=LAPTOP-EDER'
          'Nome=SERVIDOR02'
          'Nome_DataCenter=54.207.86.223, 1433'
          'Nome_Novo=177.99.238.114'
          ''
          '[BANCO DE DADOS]'
          'Banco_Cadastro=Cybersoft_Cadastros'
          'usuario=sa'
          'chc1=sa'
          'chc=cybersoft@123'
          'Backup_Ativo=0'
          'DataCenter=0'
          ''
          '[ATUALIZA]'
          'Pasta=c:\sistemas\faturamento\codigo_fonte\atualiza'
          'UltimaAtual=03/04/2013 18:23:45'
          'MostrarAtual=0'
          'Pasta_Atualiza=c:\sistemas\faturamento\codigo_fonte\atualiza'
          'IP_Suporte=179.185.199.137'
          ''
          '[ABERTURA]'
          'Skin1=C:\SKIN\skin\Skin_ded10.skn'
          'Skin2=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\Skin_Ded12.skn'
          
            'Skin3=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\Cinza_Samui-SAM' +
            'UI.skn'
          'Skin4=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\iTunes.skn'
          'Skin=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\Skin_ded10.skn'
          
            'Skin6=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\chumbo_Tiger2-T' +
            'GRPS.skn'
          ''
          'Empresa=50'
          'Usuario=ADMINISTRADOR'
          'senha=adm'
          'senha2=OPERACIONAL01')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object tClassificacaoRec: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = '#39'R'#39')'
      ''
      ''
      '')
    FetchRows = 1
    Left = 316
    Top = 9
    object tClassificacaoRecCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tClassificacaoRecDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tClassificacaoRecTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
  end
  object dstClassificacaoRec: TDataSource
    DataSet = tClassificacaoRec
    Left = 318
    Top = 56
  end
  object tTransportadores: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo, Nome, CNPJ'
      'FROM Fornecedores '
      '')
    FetchRows = 1
    Left = 412
    Top = 9
    object tTransportadoresCodigo: TIntegerField
      DisplayWidth = 6
      FieldName = 'Codigo'
    end
    object tTransportadoresNome: TStringField
      DisplayWidth = 50
      FieldName = 'Nome'
      Size = 60
    end
    object tTransportadoresCNPJ: TStringField
      DisplayWidth = 10
      FieldName = 'CNPJ'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
  end
  object dstTransportadores: TDataSource
    DataSet = tTransportadores
    Left = 418
    Top = 57
  end
  object tNaturezaDentro: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT Codigo, Descricao_NF'
      'FROM Natureza')
    FetchRows = 1
    Left = 516
    Top = 9
    object tNaturezaDentroCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object tNaturezaDentroDescricao_NF: TStringField
      FieldName = 'Descricao_NF'
      Size = 50
    end
  end
  object dstNaturezaDentro: TDataSource
    DataSet = tNaturezaDentro
    Left = 517
    Top = 57
  end
  object tNaturezaFora: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT Codigo, Descricao_NF'
      'FROM Natureza')
    FetchRows = 1
    Left = 612
    Top = 9
    object tNaturezaForaCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object tNaturezaForaDescricao_NF: TStringField
      FieldName = 'Descricao_NF'
      Size = 50
    end
  end
  object dstNaturezaFora: TDataSource
    DataSet = tNaturezaFora
    Left = 613
    Top = 58
  end
  object tContas: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT Conta'
      '      ,Codigo'
      '      ,Descricao'
      'FROM  PlanoContas'
      'WHERE ISNULL(Sintetica, 0) = 0'
      'ORDER BY Conta, Descricao')
    FetchRows = 1
    Left = 692
    Top = 10
  end
  object dstContas: TDataSource
    DataSet = tContas
    Left = 690
    Top = 57
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 764
    Top = 10
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 780
    Top = 90
  end
end
