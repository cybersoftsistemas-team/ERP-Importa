object FichaEstoque: TFichaEstoque
  Left = 585
  Top = 264
  BorderStyle = bsToolWindow
  Caption = 'FichaEstoque'
  ClientHeight = 320
  ClientWidth = 462
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
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 462
    Height = 44
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 49
    Height = 21
    Caption = 'FISCAL'
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
    Width = 222
    Height = 18
    Caption = 'Processamento da ficha de Estoque.'
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
    Left = 6
    Top = 50
    Width = 450
    Height = 128
    BevelOuter = bvLowered
    TabOrder = 0
    object StaticText3: TStaticText
      Left = 19
      Top = 27
      Width = 153
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvRaised
      BorderStyle = sbsSunken
      Caption = 'Senha do ADMINISTRADOR'
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
    object cSenha: TEdit
      Left = 174
      Top = 27
      Width = 253
      Height = 21
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 1
      OnChange = cSenhaChange
    end
    object cDescricao: TRadioGroup
      Left = 19
      Top = 55
      Width = 409
      Height = 56
      Caption = 'Descri'#231#227'o do Produto na ficha'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Utilizar das Notas Fiscais'
        'Utilizar do Cadastro de Produtos')
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 289
    Width = 462
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      462
      31)
    object bExecutar: TButton
      Left = 295
      Top = 1
      Width = 83
      Height = 30
      Caption = '&Executar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bExecutarClick
    end
    object Sair: TButton
      Left = 379
      Top = 1
      Width = 83
      Height = 30
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SairClick
    end
  end
  object Panel3: TPanel
    Left = 6
    Top = 189
    Width = 450
    Height = 92
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object lMensagem: TLabel
      Left = 86
      Top = 8
      Width = 279
      Height = 16
      Caption = 'Processando a ficha de estoque...Aguarde.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lPercentual: TLabel
      Left = 159
      Top = 62
      Width = 22
      Height = 16
      Alignment = taRightJustify
      Caption = '0%'
    end
    object lRegistros: TLabel
      Left = 196
      Top = 37
      Width = 64
      Height = 16
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lTotal: TLabel
      Left = 116
      Top = 37
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 37
      Width = 104
      Height = 16
      Caption = 'Total de Registros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 60
      Width = 60
      Height = 16
      Caption = 'Percentual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 185
      Top = 37
      Width = 11
      Height = 16
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Progresso: TProgressBar
      Left = 185
      Top = 65
      Width = 258
      Height = 14
      TabOrder = 0
    end
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 301
    Top = 5
  end
  object tAltera: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 362
    Top = 5
  end
end
