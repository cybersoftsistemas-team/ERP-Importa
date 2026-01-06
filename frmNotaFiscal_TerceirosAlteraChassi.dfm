object NotaFiscal_TerceirosAlteraChassi: TNotaFiscal_TerceirosAlteraChassi
  Left = 525
  Top = 335
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_TerceirosAlteraChassi'
  ClientHeight = 234
  ClientWidth = 708
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
    708
    234)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 4
    Top = 4
    Width = 699
    Height = 192
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 0
    object StaticText1: TStaticText
      Left = 5
      Top = 5
      Width = 92
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo '
      Color = 7293440
      Enabled = False
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
    object StaticText2: TStaticText
      Left = 5
      Top = 28
      Width = 92
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Cor'
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
    object cNumero: TDBEdit
      Left = 304
      Top = 74
      Width = 389
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Numero'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 247
      Top = 74
      Width = 55
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#250'mero 1'
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
    object cCor: TRxDBLookupCombo
      Left = 99
      Top = 28
      Width = 292
      Height = 21
      DropDownCount = 8
      DataField = 'Cor'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsCores
      ParentFont = False
      TabOrder = 0
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 74
      Width = 92
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Tipo 1'
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
    object DBComboBox1: TDBComboBox
      Left = 99
      Top = 74
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Tipo'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'SERIAL'
        'CHASSI'
        'MOTOR')
      ParentFont = False
      TabOrder = 2
    end
    object cNumero2: TDBEdit
      Left = 304
      Top = 97
      Width = 389
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Numero2'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText5: TStaticText
      Left = 247
      Top = 97
      Width = 55
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#250'mero 2'
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
    object StaticText6: TStaticText
      Left = 5
      Top = 97
      Width = 92
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Tipo 2'
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
    object DBComboBox2: TDBComboBox
      Left = 99
      Top = 97
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Tipo2'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'SERIAL'
        'CHASSI'
        'MOTOR')
      ParentFont = False
      TabOrder = 4
    end
    object cNumero3: TDBEdit
      Left = 304
      Top = 120
      Width = 389
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Numero3'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText7: TStaticText
      Left = 247
      Top = 120
      Width = 55
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#250'mero 3'
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
    object StaticText9: TStaticText
      Left = 5
      Top = 120
      Width = 92
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Tipo 3'
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
    object DBComboBox3: TDBComboBox
      Left = 99
      Top = 120
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Tipo3'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'SERIAL'
        'CHASSI'
        'MOTOR')
      ParentFont = False
      TabOrder = 6
    end
    object StaticText13: TStaticText
      Left = 5
      Top = 143
      Width = 92
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Ano Modelo Fabr.'
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
    object DBEdit3: TDBEdit
      Left = 99
      Top = 143
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Ano_Modelo'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object StaticText14: TStaticText
      Left = 5
      Top = 166
      Width = 92
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Ano Fabrica'#231#227'o'
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
    object DBEdit4: TDBEdit
      Left = 99
      Top = 166
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Ano_Fabricacao'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 99
      Top = 51
      Width = 292
      Height = 21
      DataField = 'Cor_DENATRAN'
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        '01|MARELO'
        '02|AZUL'
        '03|BEGE'
        '04|BRANCA'
        '05|CINZA'
        '06|DOURADA'
        '07|GREN'#193
        '08|LARANJA'
        '09|MARROM'
        '10|PRATA'
        '11|PRETA'
        '12|ROSA'
        '13|ROXA'
        '14|VERDE'
        '15|VERMELHA'
        '16|FANTASIA '#9)
      ParentFont = False
      TabOrder = 1
      Values.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16')
    end
    object StaticText15: TStaticText
      Left = 5
      Top = 51
      Width = 92
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Cor DENATRAN'
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
    object cCodigo: TRxDBLookupCombo
      Left = 99
      Top = 5
      Width = 594
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Produto_Codigo'
      DataSource = Dados.dsProdutosSeriais
      Enabled = False
      FieldsDelimiter = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao_Reduzida'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 21
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 204
    Width = 708
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      708
      30)
    object bSair: TButton
      Left = 634
      Top = 1
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bSalvar: TButton
      Left = 559
      Top = 1
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Salvar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSalvarClick
    end
  end
end
