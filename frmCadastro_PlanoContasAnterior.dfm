object Cadastro_PlanoContasAnterior: TCadastro_PlanoContasAnterior
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Plano de Contas (Anterior)'
  ClientHeight = 238
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    480
    238)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 208
    Width = 480
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 448
    ExplicitWidth = 678
    DesignSize = (
      480
      30)
    object bSair: TButton
      Left = 414
      Top = 1
      Width = 65
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 612
    end
    object bSalvar: TButton
      Left = 348
      Top = 1
      Width = 65
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'Sal&var'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSalvarClick
      ExplicitLeft = 340
    end
  end
  object Panel2: TPanel
    Left = 6
    Top = 10
    Width = 467
    Height = 168
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitWidth = 470
    object cNaturteza: TDBRadioGroup
      Left = 11
      Top = 116
      Width = 197
      Height = 42
      Caption = 'Situa'#231#227'o do Saldo'
      Columns = 2
      DataField = 'Anterior_IndSaldo'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      Items.Strings = (
        'Credor'
        'Devedor')
      ParentFont = False
      TabOrder = 2
      Values.Strings = (
        'C'
        'D')
    end
    object StaticText1: TStaticText
      Left = 11
      Top = 34
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Conta'
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
    object StaticText5: TStaticText
      Left = 11
      Top = 57
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o'
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
    object cDescricao: TDBEdit
      Left = 98
      Top = 57
      Width = 357
      Height = 21
      DataField = 'Anterior_Descricao'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 11
      Top = 80
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Saldo Inicial'
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
    object cConta: TDBEdit
      Left = 98
      Top = 34
      Width = 142
      Height = 21
      Cursor = crIBeam
      DataField = 'Anterior_Conta'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText7: TStaticText
      Left = 11
      Top = 11
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Empresa'
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
    object DBRadioGroup1: TDBRadioGroup
      Left = 226
      Top = 116
      Width = 197
      Height = 42
      Caption = 'Situa'#231#227'o da Conta'
      Columns = 2
      DataField = 'Anterior_Situacao'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      Items.Strings = (
        'Ativas'
        'Desativada')
      ParentFont = False
      TabOrder = 7
      Values.Strings = (
        'A'
        'D')
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 98
      Top = 11
      Width = 357
      Height = 21
      DataField = 'Anterior_Empresa'
      DataSource = dmContab.dsPlanoContas
      DropDownWidth = 600
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'CNPJ'
      ListField = 'CNPJ;Razao_Social;Numero_Filial'
      ListSource = Dados.dsEmpresas
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit1: TDBEdit
      Left = 98
      Top = 80
      Width = 142
      Height = 21
      Cursor = crIBeam
      DataField = 'Anterior_Saldo'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
  end
end
