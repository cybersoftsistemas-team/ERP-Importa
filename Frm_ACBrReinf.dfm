object frmACBrReinf: TfrmACBrReinf
  Left = 250
  Top = 77
  BorderStyle = bsDialog
  Caption = 'Cybersoft ERP Importa - REINF'
  ClientHeight = 655
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenus: TPanel
    AlignWithMargins = True
    Left = 597
    Top = 3
    Width = 484
    Height = 615
    Align = alRight
    BevelOuter = bvLowered
    TabOrder = 0
    object btnSalvarConfig: TBitBtn
      Left = 245
      Top = 477
      Width = 120
      Height = 55
      Caption = 'Salvar Config'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnSalvarConfigClick
    end
    object PageControl4: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 476
      Height = 467
      ActivePage = TabSheet12
      Align = alTop
      Enabled = False
      MultiLine = True
      TabHeight = 24
      TabOrder = 1
      TabWidth = 90
      object TabSheet12: TTabSheet
        Caption = 'Emitente'
        ImageIndex = 3
        ExplicitTop = 54
        ExplicitHeight = 409
        object Label12: TLabel
          Left = 8
          Top = 4
          Width = 25
          Height = 13
          Caption = 'CNPJ'
        end
        object Label7: TLabel
          Left = 8
          Top = 122
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label14: TLabel
          Left = 8
          Top = 41
          Width = 41
          Height = 13
          Caption = 'Empresa'
        end
        object Label15: TLabel
          Left = 8
          Top = 84
          Width = 20
          Height = 13
          Caption = 'Filial'
        end
        object PageControl3: TPageControl
          Left = 2
          Top = 192
          Width = 463
          Height = 239
          ActivePage = TabSheet2
          TabHeight = 24
          TabOrder = 0
          TabWidth = 100
          object TabSheet2: TTabSheet
            Caption = 'Contato'
            object Label5: TLabel
              Left = 3
              Top = 2
              Width = 27
              Height = 13
              Caption = 'Nome'
            end
            object Label26: TLabel
              Left = 3
              Top = 41
              Width = 19
              Height = 13
              Caption = 'CPF'
            end
            object Label27: TLabel
              Left = 3
              Top = 125
              Width = 24
              Height = 13
              Caption = 'Fone'
            end
            object Label28: TLabel
              Left = 130
              Top = 125
              Width = 15
              Height = 13
              Caption = 'Cel'
            end
            object Label39: TLabel
              Left = 3
              Top = 82
              Width = 24
              Height = 13
              Caption = 'Email'
            end
            object edContNome: TEdit
              Left = 3
              Top = 16
              Width = 445
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object edContCPF: TEdit
              Left = 3
              Top = 57
              Width = 124
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object edContFone: TEdit
              Left = 3
              Top = 140
              Width = 124
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object edContCel: TEdit
              Left = 130
              Top = 140
              Width = 123
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object edContEmail: TEdit
              Left = 3
              Top = 98
              Width = 445
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
          object TabSheet11: TTabSheet
            Caption = 'Software House'
            ImageIndex = 1
            object Label40: TLabel
              Left = 3
              Top = 4
              Width = 60
              Height = 13
              Caption = 'Raz'#227'o Social'
            end
            object Label41: TLabel
              Left = 2
              Top = 47
              Width = 25
              Height = 13
              Caption = 'CNPJ'
            end
            object Label43: TLabel
              Left = 3
              Top = 127
              Width = 24
              Height = 13
              Caption = 'Email'
            end
            object Label44: TLabel
              Left = 4
              Top = 86
              Width = 24
              Height = 13
              Caption = 'Fone'
            end
            object Label45: TLabel
              Left = 129
              Top = 49
              Width = 39
              Height = 13
              Caption = 'Contato'
            end
            object Label13: TLabel
              Left = 3
              Top = 165
              Width = 33
              Height = 13
              Caption = 'Vers'#227'o'
            end
            object edSoftRazao: TEdit
              Left = 3
              Top = 23
              Width = 360
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object edSoftCNPJ: TEdit
              Left = 2
              Top = 63
              Width = 123
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object edSoftEmail: TEdit
              Left = 3
              Top = 143
              Width = 360
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object edSoftFone: TEdit
              Left = 1
              Top = 101
              Width = 125
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object edSoftContato: TEdit
              Left = 129
              Top = 63
              Width = 234
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object cVersao: TEdit
              Left = 3
              Top = 180
              Width = 123
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              Text = '4.2023'
            end
          end
        end
        object edtEmitCNPJ: TEdit
          Left = 6
          Top = 18
          Width = 128
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object cData: TDateEdit
          Left = 8
          Top = 136
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
        end
        object cEmpresa: TEdit
          Left = 8
          Top = 58
          Width = 450
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = 'cEmpresa'
        end
        object cFilial: TEdit
          Left = 8
          Top = 98
          Width = 450
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = 'cEmpresa'
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Geral'
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 3
          Top = 0
          Width = 459
          Height = 313
          Caption = 'Geral'
          TabOrder = 0
          object sbtnPathSalvar: TSpeedButton
            Left = 425
            Top = 224
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = sbtnPathSalvarClick
          end
          object Label29: TLabel
            Left = 8
            Top = 96
            Width = 86
            Height = 13
            Caption = 'Forma de Emiss'#227'o'
          end
          object Label31: TLabel
            Left = 8
            Top = 58
            Width = 72
            Height = 13
            Caption = 'Formato Alerta'
          end
          object Label32: TLabel
            Left = 8
            Top = 135
            Width = 119
            Height = 13
            Caption = 'Vers'#227'o Documento Fiscal'
          end
          object Label42: TLabel
            Left = 8
            Top = 252
            Width = 198
            Height = 13
            Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
          end
          object spPathSchemas: TSpeedButton
            Left = 425
            Top = 267
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = spPathSchemasClick
          end
          object edtPathLogs: TEdit
            Left = 8
            Top = 225
            Width = 416
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object ckSalvar: TCheckBox
            Left = 8
            Top = 199
            Width = 209
            Height = 15
            Caption = 'Salvar Arquivos de Envio e Resposta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cbFormaEmissao: TComboBox
            Left = 8
            Top = 112
            Width = 440
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object cbxAtualizarXML: TCheckBox
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = 'Atualizar XML'
            TabOrder = 3
          end
          object cbxExibirErroSchema: TCheckBox
            Left = 8
            Top = 32
            Width = 129
            Height = 17
            Caption = 'Exibir Erro Schema'
            TabOrder = 4
          end
          object edtFormatoAlerta: TEdit
            Left = 8
            Top = 74
            Width = 440
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object cbxRetirarAcentos: TCheckBox
            Left = 8
            Top = 181
            Width = 193
            Height = 17
            Caption = 'Retirar Acentos dos XMLs enviados'
            TabOrder = 6
          end
          object cbVersaoDF: TComboBox
            Left = 8
            Top = 151
            Width = 440
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object edtPathSchemas: TEdit
            Left = 8
            Top = 268
            Width = 416
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Certificado'
        object lSSLLib: TLabel
          Left = 5
          Top = 11
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'SSLLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lCryptLib: TLabel
          Left = 5
          Top = 38
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'CryptLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lHttpLib: TLabel
          Left = 5
          Top = 65
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'HttpLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lXmlSign: TLabel
          Left = 5
          Top = 92
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'XMLSignLib'
          Color = clBtnFace
          ParentColor = False
        end
        object gbCertificado: TGroupBox
          Left = 3
          Top = 116
          Width = 453
          Height = 144
          Caption = 'Certificado'
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 16
            Width = 41
            Height = 13
            Caption = 'Caminho'
          end
          object Label2: TLabel
            Left = 8
            Top = 56
            Width = 30
            Height = 13
            Caption = 'Senha'
          end
          object sbtnCaminhoCert: TSpeedButton
            Left = 423
            Top = 31
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = sbtnCaminhoCertClick
          end
          object Label25: TLabel
            Left = 8
            Top = 96
            Width = 79
            Height = 13
            Caption = 'N'#250'mero de S'#233'rie'
          end
          object sbtnGetCert: TSpeedButton
            Left = 423
            Top = 110
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = sbtnGetCertClick
          end
          object sbtnNumSerie: TSpeedButton
            Left = 400
            Top = 110
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = sbtnNumSerieClick
          end
          object edtCaminho: TEdit
            Left = 8
            Top = 32
            Width = 414
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object edtSenha: TEdit
            Left = 8
            Top = 72
            Width = 439
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 1
          end
          object edtNumSerie: TEdit
            Left = 8
            Top = 112
            Width = 391
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
        object btnDataValidade: TButton
          Left = 3
          Top = 265
          Width = 87
          Height = 30
          Caption = 'Data Validade'
          TabOrder = 1
          OnClick = btnDataValidadeClick
        end
        object btnNumSerie: TButton
          Left = 91
          Top = 265
          Width = 68
          Height = 30
          Caption = 'Num.S'#233'rie'
          TabOrder = 2
          OnClick = btnNumSerieClick
        end
        object btnSubName: TButton
          Left = 160
          Top = 266
          Width = 83
          Height = 30
          Caption = 'Subject Name'
          TabOrder = 3
          OnClick = btnSubNameClick
        end
        object btnCNPJ: TButton
          Left = 244
          Top = 266
          Width = 49
          Height = 30
          Caption = 'CNPJ'
          TabOrder = 4
          OnClick = btnCNPJClick
        end
        object btnIssuerName: TButton
          Left = 294
          Top = 266
          Width = 76
          Height = 30
          Caption = 'Issuer Name'
          TabOrder = 5
          OnClick = btnIssuerNameClick
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 310
          Width = 453
          Height = 74
          Caption = 'Calculo de Hash e assinatura'
          TabOrder = 6
          object Edit1: TEdit
            Left = 8
            Top = 16
            Width = 442
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0548133600013704583493000190'
          end
          object btnSha256: TButton
            Left = 8
            Top = 39
            Width = 85
            Height = 30
            Caption = 'SHA256+RSA'
            TabOrder = 1
            OnClick = btnSha256Click
          end
          object cbAssinar: TCheckBox
            Left = 144
            Top = 44
            Width = 54
            Height = 19
            Caption = 'Assinar'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
        end
        object btnHTTPS: TButton
          Left = 3
          Top = 390
          Width = 128
          Height = 30
          Caption = 'HTTPS sem Certificado'
          TabOrder = 7
          OnClick = btnHTTPSClick
        end
        object btnLeituraX509: TButton
          Left = 137
          Top = 390
          Width = 115
          Height = 30
          Caption = 'Leitura de X509'
          TabOrder = 8
          OnClick = btnLeituraX509Click
        end
        object cbSSLLib: TComboBox
          Left = 62
          Top = 8
          Width = 397
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnChange = cbSSLLibChange
        end
        object cbCryptLib: TComboBox
          Left = 62
          Top = 35
          Width = 397
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnChange = cbCryptLibChange
        end
        object cbHttpLib: TComboBox
          Left = 62
          Top = 62
          Width = 397
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnChange = cbHttpLibChange
        end
        object cbXmlSignLib: TComboBox
          Left = 62
          Top = 89
          Width = 397
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnChange = cbXmlSignLibChange
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'WebService'
        ImageIndex = 2
        object GroupBox4: TGroupBox
          Left = 5
          Top = 4
          Width = 457
          Height = 190
          Caption = 'WebService'
          TabOrder = 0
          object Label6: TLabel
            Left = 8
            Top = 18
            Width = 126
            Height = 13
            Caption = 'Selecione UF do Emitente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lTimeOut: TLabel
            Left = 167
            Top = 116
            Width = 40
            Height = 13
            Caption = 'TimeOut'
            Color = clBtnFace
            ParentColor = False
          end
          object lSSLLib1: TLabel
            Left = 19
            Top = 168
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'SSLType'
            Color = clBtnFace
            ParentColor = False
          end
          object cbxVisualizar: TCheckBox
            Left = 8
            Top = 118
            Width = 153
            Height = 17
            Caption = 'Visualizar Mensagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cbUF: TComboBox
            Left = 8
            Top = 36
            Width = 224
            Height = 21
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemIndex = 24
            ParentFont = False
            TabOrder = 1
            Text = 'SP'
            Items.Strings = (
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SP'
              'SE'
              'TO')
          end
          object rgTipoAmb: TRadioGroup
            Left = 8
            Top = 63
            Width = 225
            Height = 45
            Caption = 'Selecione o Ambiente de Destino'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
            TabOrder = 2
          end
          object cbxSalvarSOAP: TCheckBox
            Left = 8
            Top = 136
            Width = 153
            Height = 17
            Caption = 'Salvar envelope SOAP'
            TabOrder = 3
          end
          object seTimeOut: TSpinEdit
            Left = 167
            Top = 132
            Width = 66
            Height = 22
            Increment = 10
            MaxValue = 999999
            MinValue = 1000
            TabOrder = 4
            Value = 5000
          end
          object cbSSLType: TComboBox
            Left = 72
            Top = 160
            Width = 160
            Height = 21
            Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnChange = cbSSLTypeChange
          end
        end
        object gbProxy: TGroupBox
          Left = 5
          Top = 299
          Width = 457
          Height = 111
          Caption = 'Proxy'
          TabOrder = 1
          object Label8: TLabel
            Left = 8
            Top = 16
            Width = 22
            Height = 13
            Caption = 'Host'
          end
          object Label9: TLabel
            Left = 256
            Top = 16
            Width = 26
            Height = 13
            Caption = 'Porta'
          end
          object Label10: TLabel
            Left = 8
            Top = 56
            Width = 36
            Height = 13
            Caption = 'Usu'#225'rio'
          end
          object Label11: TLabel
            Left = 194
            Top = 56
            Width = 30
            Height = 13
            Caption = 'Senha'
          end
          object edtProxyHost: TEdit
            Left = 8
            Top = 32
            Width = 241
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object edtProxyPorta: TEdit
            Left = 255
            Top = 32
            Width = 109
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object edtProxyUser: TEdit
            Left = 8
            Top = 72
            Width = 173
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object edtProxySenha: TEdit
            Left = 191
            Top = 72
            Width = 173
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 3
          end
        end
        object gbxRetornoEnvio: TGroupBox
          Left = 5
          Top = 204
          Width = 457
          Height = 87
          Caption = 'Retorno de Envio'
          TabOrder = 2
          object Label36: TLabel
            Left = 93
            Top = 40
            Width = 51
            Height = 13
            Caption = 'Tentativas'
          end
          object Label37: TLabel
            Left = 176
            Top = 40
            Width = 44
            Height = 13
            Caption = 'Intervalo'
          end
          object Label38: TLabel
            Left = 8
            Top = 40
            Width = 45
            Height = 13
            Hint = 
              'Aguardar quantos segundos para primeira consulta de retorno de e' +
              'nvio'
            Caption = 'Aguardar'
          end
          object cbxAjustarAut: TCheckBox
            Left = 8
            Top = 17
            Width = 234
            Height = 17
            Caption = 'Ajustar Automaticamente prop. "Aguardar"'
            TabOrder = 0
          end
          object edtTentativas: TEdit
            Left = 93
            Top = 56
            Width = 77
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object edtIntervalo: TEdit
            Left = 176
            Top = 56
            Width = 81
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object edtAguardar: TEdit
            Left = 8
            Top = 56
            Width = 79
            Height = 21
            Hint = 
              'Aguardar quantos segundos para primeira consulta de retorno de e' +
              'nvio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object TabSheet13: TTabSheet
        Caption = 'Arquivos'
        ImageIndex = 4
        object sbPathReinf: TSpeedButton
          Left = 436
          Top = 210
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbPathReinfClick
        end
        object Label35: TLabel
          Left = 6
          Top = 197
          Width = 100
          Height = 13
          Caption = 'Pasta Arquivos Reinf'
        end
        object cbxSalvarArqs: TCheckBox
          Left = 6
          Top = 16
          Width = 210
          Height = 17
          Caption = 'Salvar Arquivos em Pastas Separadas'
          TabOrder = 0
        end
        object cbxPastaMensal: TCheckBox
          Left = 6
          Top = 36
          Width = 210
          Height = 17
          Caption = 'Criar Pastas Mensalmente'
          TabOrder = 1
        end
        object cbxAdicionaLiteral: TCheckBox
          Left = 6
          Top = 56
          Width = 210
          Height = 17
          Caption = 'Adicionar Literal no nome das pastas'
          TabOrder = 2
        end
        object cbxEmissaoPathReinf: TCheckBox
          Left = 6
          Top = 76
          Width = 251
          Height = 17
          Caption = 'Salvar Documento pelo campo Data de Emiss'#227'o'
          TabOrder = 3
        end
        object cbxSalvaPathEvento: TCheckBox
          Left = 6
          Top = 96
          Width = 233
          Height = 17
          Caption = 'Salvar Arquivos de Eventos'
          TabOrder = 4
        end
        object cbxSepararPorCNPJ: TCheckBox
          Left = 6
          Top = 116
          Width = 233
          Height = 17
          Caption = 'Separar Arqs pelo CNPJ do Certificado'
          TabOrder = 5
        end
        object edtPathReinf: TEdit
          Left = 6
          Top = 212
          Width = 427
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object cbxSepararPorModelo: TCheckBox
          Left = 6
          Top = 136
          Width = 251
          Height = 17
          Caption = 'Separar Arqs pelo Modelo do Documento'
          TabOrder = 7
        end
      end
    end
    object BitBtn1: TBitBtn
      Left = 119
      Top = 477
      Width = 120
      Height = 55
      Caption = 'Alterar Config'
      Glyph.Data = {
        42080000424D4208000000000000420000002800000020000000200000000100
        1000030000000008000000000000000000000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7F8C3110428C31FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39
        6B2DFF7FFF7FFF7FCE394C4ACE39FF7FFF7FFF7FCE398C318C31FF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524ACE39
        6B2D6B2DFF7FFF7F4C66257F4C66FF7FFF7FCE39524ACE396B2D6B2DFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AE73D
        6B2D8C316B2DCE394C66257F4C666B2D6B2DCE39744EE73DE73D6B2DFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FC514C514C514C514C5142C67257F
        4566E73D8C31CE39254B257F4C666B2D8C314C4A45662567257F4C4AFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F396710421042104210422C67257F
        257F257F257F257F257F257F257F257F257F257F257F2567FF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F5A6B10428C316B2D6B2D4C66
        257F257F257F327F327F327F327F297F257F257F25678C316B2D6B2DFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F5A6B8C318C316B2D8C314C4A
        257F257F297F2C674C4AE03D8531297F257F257F25678C316B2D6B2D6B2DFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F5A6B297F4C66454A454A4566
        257F297FF27F297F2C67454AE03DE73D297F257F257F257F257F257F2567FF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F5A6B5A6B327F257F257F257F
        257F297FF27F297F2C67454AE03D85314566257F257FE73D4C664C66FF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C317B6FBC735A6BE73D454A
        257F257FF27F297F2C67454AE03D8531257F257F8531C514FF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C31D5569B6FF75E454A2567
        257F257FF27F297F2C67454AE03D8531257F257F454A8531C514FF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C31D556FF7F9B6F327F257F
        297F3267F27F297F2C67454AE03D8531297F2567257F257FE73DFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C31D556FF7FFF7F7B6F327F
        F75E5A6BF27F297F2C67454AE03D85316B2D4C66327F2567FF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C318C318C318C318C31F75E
        5A6B5A6BF27F327FF27F2C67454AE73D6B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F5A6B5A6B5A6B5A6B5A6B5A6B
        5A6B5A6B3967F27FEF7FF27F2C674C4A6B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F5A6B5A6B5A6B5A6B5A6B5A6B
        5A6B5A6B39675A6B2C4B2C4B2C4B5A6B6B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C317B6F9B6F7B6F7B6F9B6F
        5A6B5A6B3967396739673967396739676B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C31D556F75E744EFF7F9B6F
        5A6B5A6BD556D556D556D556D55639676B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C31D556744EFF7F524A9B6F
        5A6B5A6B3967396739673967396739676B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C31D5565A6B5A6B5A6B9B6F
        5A6B5A6BD556D556D556D556D55639676B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F8C318C318C318C318C311042
        5A6B5A6B3967396739673967396739676B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7B6F5A6B5A6B5A6B5A6B5A6B5A6B
        5A6B5A6B5A6B5A6B5A6B5A6B5A6B5A6B6B2DC514FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F9B6F9B6F9B6F9B6F9B6F9B6F9B6F
        9B6F9B6F9B6F9B6F9B6F9B6F9B6F9B6F7B6F6B2DFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F}
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object pnlCentral: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 588
    Height = 615
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitWidth = 666
    object pgcBotoes: TPageControl
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 576
      Height = 402
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ActivePage = tbsEventos
      Align = alTop
      TabHeight = 24
      TabOrder = 0
      TabWidth = 100
      object tbsEventos: TTabSheet
        Caption = 'Eventos'
        ImageIndex = 4
        ExplicitWidth = 646
        object chk1000: TToggleSwitch
          Left = 6
          Top = 27
          Width = 259
          Height = 17
          Cursor = crHandPoint
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-1000 - Informa'#231#245'es do Contribuinte'
          StateCaptions.CaptionOff = 'R-1000 - Informa'#231#245'es do Contribuinte'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 0
          ThumbWidth = 12
        end
        object chk1050: TToggleSwitch
          Left = 6
          Top = 44
          Width = 195
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-1050 - Tabela de Entidades'
          StateCaptions.CaptionOff = 'R-1050 - Tabela de Entidades'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 1
          ThumbWidth = 12
        end
        object chk1070: TToggleSwitch
          Left = 6
          Top = 60
          Width = 197
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-1070 - Tabela de Processos'
          StateCaptions.CaptionOff = 'R-1070 - Tabela de Processos'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 2
          ThumbWidth = 12
        end
        object chk2010: TToggleSwitch
          Left = 6
          Top = 76
          Width = 406
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-2010 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria  Servi'#231'os Tomados '
          StateCaptions.CaptionOff = 'R-2010 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria  Servi'#231'os Tomados '
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 3
          ThumbWidth = 12
        end
        object chk2020: TToggleSwitch
          Left = 6
          Top = 92
          Width = 408
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 
            'R-2020 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria  Servi'#231'os Prestado' +
            's'
          StateCaptions.CaptionOff = 
            'R-2020 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria  Servi'#231'os Prestado' +
            's'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 4
          ThumbWidth = 12
        end
        object chk2030: TToggleSwitch
          Left = 6
          Top = 108
          Width = 348
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-2030 - Recursos Recebidos por Associa'#231#227'o Desportiva'
          StateCaptions.CaptionOff = 'R-2030 - Recursos Recebidos por Associa'#231#227'o Desportiva'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 5
          ThumbWidth = 12
        end
        object chk2040: TToggleSwitch
          Left = 6
          Top = 124
          Width = 365
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-2040 - Recursos Repassados para Associa'#231#227'o Desportiva'
          StateCaptions.CaptionOff = 'R-2040 - Recursos Repassados para Associa'#231#227'o Desportiva'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 6
          ThumbWidth = 12
        end
        object chk2050: TToggleSwitch
          Left = 6
          Top = 140
          Width = 454
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 
            'R-2050 - Comercializa'#231#227'o da Produ'#231#227'o por Produtor Rural PJ/Agroi' +
            'nd'#250'stria'
          StateCaptions.CaptionOff = 
            'R-2050 - Comercializa'#231#227'o da Produ'#231#227'o por Produtor Rural PJ/Agroi' +
            'nd'#250'stria'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 7
          ThumbWidth = 12
        end
        object chk2055: TToggleSwitch
          Left = 6
          Top = 156
          Width = 242
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-2055 - Aquisi'#231#227'o de Produ'#231#227'o Rural'
          StateCaptions.CaptionOff = 'R-2055 - Aquisi'#231#227'o de Produ'#231#227'o Rural'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 8
          ThumbWidth = 12
        end
        object chk2060: TToggleSwitch
          Left = 6
          Top = 172
          Width = 402
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 
            'R-2060 - Contribui'#231#227'o Previdenci'#225'ria sobre a Receita Bruta - CPR' +
            'B'
          StateCaptions.CaptionOff = 
            'R-2060 - Contribui'#231#227'o Previdenci'#225'ria sobre a Receita Bruta - CPR' +
            'B'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 9
          ThumbWidth = 12
        end
        object chk2070: TToggleSwitch
          Left = 6
          Top = 188
          Width = 362
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-2070 - Reten'#231#245'es na Fonte - IR, CSLL, COFINS, PIS/PASEP'
          StateCaptions.CaptionOff = 'R-2070 - Reten'#231#245'es na Fonte - IR, CSLL, COFINS, PIS/PASEP'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 10
          ThumbWidth = 12
        end
        object chk2098: TToggleSwitch
          Left = 6
          Top = 204
          Width = 279
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-2098 - Reabertura dos Eventos Peri'#243'dicos'
          StateCaptions.CaptionOff = 'R-2098 - Reabertura dos Eventos Peri'#243'dicos'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 11
          ThumbWidth = 12
        end
        object chk2099: TToggleSwitch
          Left = 6
          Top = 220
          Width = 284
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-2099 - Fechamento dos Eventos Peri'#243'dicos'
          StateCaptions.CaptionOff = 'R-2099 - Fechamento dos Eventos Peri'#243'dicos'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 12
          ThumbWidth = 12
        end
        object chk3010: TToggleSwitch
          Left = 6
          Top = 236
          Width = 271
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-3010 - Receita de Espet'#225'culo Desportivo'
          StateCaptions.CaptionOff = 'R-3010 - Receita de Espet'#225'culo Desportivo'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 13
          ThumbWidth = 12
        end
        object chk4010: TToggleSwitch
          Left = 6
          Top = 252
          Width = 359
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-4010 - Pagamentos/cr'#233'ditos a benefici'#225'rio pessoa f'#237'sica'
          StateCaptions.CaptionOff = 'R-4010 - Pagamentos/cr'#233'ditos a benefici'#225'rio pessoa f'#237'sica'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 14
          ThumbWidth = 12
        end
        object chk4020: TToggleSwitch
          Left = 6
          Top = 268
          Width = 372
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-4020 - Pagamentos/cr'#233'ditos a benefici'#225'rio pessoa jur'#237'dica'
          StateCaptions.CaptionOff = 'R-4020 - Pagamentos/cr'#233'ditos a benefici'#225'rio pessoa jur'#237'dica'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 15
          ThumbWidth = 12
        end
        object chk4040: TToggleSwitch
          Left = 6
          Top = 284
          Width = 389
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-4040 - Pagamentos/cr'#233'ditos a benefici'#225'rios n'#227'o identificados'
          StateCaptions.CaptionOff = 'R-4040 - Pagamentos/cr'#233'ditos a benefici'#225'rios n'#227'o identificados'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 16
          ThumbWidth = 12
        end
        object chk4080: TToggleSwitch
          Left = 6
          Top = 300
          Width = 228
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-4080 - Reten'#231#227'o no recebimento'
          StateCaptions.CaptionOff = 'R-4080 - Reten'#231#227'o no recebimento'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 17
          ThumbWidth = 12
        end
        object chk4099: TToggleSwitch
          Left = 6
          Top = 316
          Width = 384
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-4099 - Fechamento/reabertura dos eventos da s'#233'rie R-4000'
          StateCaptions.CaptionOff = 'R-4099 - Fechamento/reabertura dos eventos da s'#233'rie R-4000'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 18
          ThumbWidth = 12
        end
        object chk1000Limpar: TToggleSwitch
          Left = 6
          Top = 12
          Width = 355
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'Limpar base de dados para o contribuinte - Restrita Reais'
          StateCaptions.CaptionOff = 'Limpar base de dados para o contribuinte - Restrita Reais'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 19
          ThumbWidth = 12
        end
        object chk9000: TToggleSwitch
          Left = 6
          Top = 332
          Width = 196
          Height = 15
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StateCaptions.CaptionOn = 'R-9000 - Exclus'#227'o de Eventos'
          StateCaptions.CaptionOff = 'R-9000 - Exclus'#227'o de Eventos'
          SwitchHeight = 12
          SwitchWidth = 24
          TabOrder = 20
          ThumbWidth = 12
        end
      end
      object tbsREINF: TTabSheet
        Caption = 'Enviados'
        ImageIndex = 1
        ExplicitWidth = 646
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 568
          Height = 368
          Align = alClient
          DataSource = dstREINF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
        end
      end
    end
    object pgRespostas: TPageControl
      AlignWithMargins = True
      Left = 6
      Top = 418
      Width = 576
      Height = 191
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ActivePage = tsFormaEnvio
      Align = alClient
      TabHeight = 24
      TabOrder = 1
      TabWidth = 110
      object tsFormaEnvio: TTabSheet
        Caption = 'Forma de Envio'
        ImageIndex = 7
        ExplicitWidth = 646
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 562
          Height = 151
          Align = alClient
          Caption = ' Dados Adicionais '
          TabOrder = 0
          ExplicitWidth = 640
          object Label3: TLabel
            Left = 9
            Top = 17
            Width = 52
            Height = 13
            Caption = 'Protocolo :'
          end
          object lblRecibo: TLabel
            Left = 9
            Top = 58
            Width = 50
            Height = 13
            Caption = 'Nr. Recibo'
            Visible = False
          end
          object lblEvento: TLabel
            Left = 263
            Top = 58
            Width = 60
            Height = 13
            Caption = 'Cod. Evento'
            Visible = False
          end
          object edProtocolo: TEdit
            Left = 9
            Top = 31
            Width = 538
            Height = 21
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edRecibo: TEdit
            Left = 8
            Top = 71
            Width = 247
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
          object cbEvento: TComboBox
            Left = 263
            Top = 71
            Width = 87
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
            Items.Strings = (
              'R-2010'
              'R-2020'
              'R-2030'
              'R-2040'
              'R-2050'
              'R-2055'
              'R-2060'
              'R-2070'
              'R-3010'
              'R-4010'
              'R-4020'
              'R-4040'
              'R-4080')
          end
          object ChkRetificadora: TCheckBox
            Left = 457
            Top = 69
            Width = 82
            Height = 17
            Caption = 'Retificadora'
            TabOrder = 3
            Visible = False
          end
          object rdgOperacao: TRadioGroup
            AlignWithMargins = True
            Left = 109
            Top = 98
            Width = 345
            Height = 42
            Caption = '  Opera'#231#227'o  '
            Columns = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'Inclus'#227'o'
              'Altera'#231#227'o'
              'Exclus'#227'o')
            ParentFont = False
            TabOrder = 4
            OnClick = rdgOperacaoClick
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Retorno de Eventos'
        ExplicitWidth = 646
        object mmoDados: TMemo
          Left = 0
          Top = 0
          Width = 568
          Height = 157
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 646
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML de Envio'
        ImageIndex = 1
        ExplicitWidth = 646
        object mmoXMLEnv: TMemo
          Left = 0
          Top = 0
          Width = 568
          Height = 157
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          ExplicitWidth = 646
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'XML de Retorno'
        ImageIndex = 3
        ExplicitWidth = 646
        object mmoXMLRet: TMemo
          Left = 0
          Top = 0
          Width = 568
          Height = 157
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          ExplicitWidth = 646
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        ExplicitWidth = 646
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 568
          Height = 157
          Align = alClient
          Color = 12024576
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 13816530
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          StyleElements = [seFont, seBorder]
          ExplicitWidth = 646
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 621
    Width = 1084
    Height = 34
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object bSair: TButton
      AlignWithMargins = True
      Left = 1007
      Top = 3
      Width = 74
      Height = 28
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Caption = '&Sair'
      TabOrder = 0
      OnClick = bSairClick
    end
    object btnGerar: TButton
      AlignWithMargins = True
      Left = 66
      Top = 3
      Width = 91
      Height = 28
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Gerar Arquivos'
      Enabled = False
      TabOrder = 1
      OnClick = btnGerarClick
    end
    object btnLerArqINI: TButton
      AlignWithMargins = True
      Left = 265
      Top = 3
      Width = 95
      Height = 28
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Ler Arquivo INI'
      TabOrder = 2
      OnClick = btnLerArqINIClick
    end
    object btnLerArqXML: TButton
      AlignWithMargins = True
      Left = 362
      Top = 3
      Width = 98
      Height = 28
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Ler Arquivo XML'
      TabOrder = 3
      OnClick = btnLerArqXMLClick
    end
    object btnValidarAssinatura: TButton
      AlignWithMargins = True
      Left = 159
      Top = 3
      Width = 104
      Height = 28
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Validar Assinatura'
      TabOrder = 4
      OnClick = btnValidarAssinaturaClick
    end
    object btnConsultar: TButton
      AlignWithMargins = True
      Left = 565
      Top = 3
      Width = 66
      Height = 28
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Consultar'
      TabOrder = 5
      OnClick = btnConsultarClick
    end
    object btnConsultarRecibo: TButton
      AlignWithMargins = True
      Left = 462
      Top = 3
      Width = 101
      Height = 28
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Consultar Recibo'
      TabOrder = 6
      OnClick = btnConsultarReciboClick
    end
    object btnValidarSchema: TButton
      AlignWithMargins = True
      Left = 633
      Top = 3
      Width = 93
      Height = 28
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Validar Schema'
      TabOrder = 7
      OnClick = btnValidarSchemaClick
    end
    object btnEnviar: TButton
      AlignWithMargins = True
      Left = 2
      Top = 3
      Width = 62
      Height = 28
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Enviar'
      TabOrder = 8
      OnClick = btnEnviarClick
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 613
    Top = 164
  end
  object ACBrReinf1: TACBrReinf
    OnStatusChange = ACBrReinf1StatusChange
    OnGerarLog = ACBrReinf1GerarLog
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 613
    Top = 113
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 512
    Top = 228
  end
  object tEmpresa: TMSQuery
    Connection = Dados.Banco
    Left = 462
    Top = 228
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 563
    Top = 228
  end
  object tREINF: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select * from REINF')
    Left = 612
    Top = 228
  end
  object dstREINF: TDataSource
    DataSet = tREINF
    Left = 612
    Top = 275
  end
end
