object Utilitarios_Restore: TUtilitarios_Restore
  Left = 536
  Top = 295
  BorderStyle = bsDialog
  Caption = 'Utilitarios_Restore'
  ClientHeight = 265
  ClientWidth = 717
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
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 717
    Height = 43
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 181
    Height = 21
    Caption = 'UTILIT'#193'RIOS DO SISTEMA'
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
    Width = 275
    Height = 18
    Caption = 'Restaura'#231#227'o de BACKUP do Banco de Dados.'
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
    Top = 235
    Width = 717
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      717
      30)
    object bSair: TButton
      Left = 642
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bRestaurar: TButton
      Left = 566
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = '  Salva as informa'#231#245'es no banco de dados.'
      Anchors = [akTop, akRight]
      Caption = '&Restaurar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bRestaurarClick
    end
  end
  object StaticText23: TStaticText
    Left = 5
    Top = 181
    Width = 76
    Height = 22
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Movimento'
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
  object cArqMovimento: TFilenameEdit
    Left = 83
    Top = 181
    Width = 629
    Height = 21
    OnAfterDialog = cArqMovimentoAfterDialog
    DefaultExt = '*.xls'
    FileEditStyle = fsComboBox
    Filter = 'All files (*.*)|*.bak'
    DialogOptions = [ofReadOnly, ofHideReadOnly]
    DialogTitle = 'Explorar'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ButtonWidth = 20
    NumGlyphs = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = ''
    OnChange = cArqMovimentoChange
  end
  object StaticText1: TStaticText
    Left = 5
    Top = 157
    Width = 76
    Height = 22
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Cadastros'
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
  object cArqCadastros: TFilenameEdit
    Left = 83
    Top = 157
    Width = 629
    Height = 21
    DefaultExt = '*.xls'
    FileEditStyle = fsComboBox
    Filter = 'All files (*.*)|*.bak'
    DialogOptions = [ofReadOnly, ofHideReadOnly]
    DialogTitle = 'Explorar'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ButtonWidth = 20
    NumGlyphs = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = ''
    OnChange = cArqMovimentoChange
  end
  object StaticText2: TStaticText
    Left = 5
    Top = 205
    Width = 76
    Height = 22
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Contabilidade'
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
  object cArqContabil: TFilenameEdit
    Left = 83
    Top = 205
    Width = 629
    Height = 21
    DefaultExt = '*.xls'
    FileEditStyle = fsComboBox
    Filter = 'All files (*.*)|*.bak'
    DialogOptions = [ofReadOnly, ofHideReadOnly]
    DialogTitle = 'Explorar'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ButtonWidth = 20
    NumGlyphs = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Text = ''
    OnChange = cArqMovimentoChange
  end
  object Memo1: TMemo
    Left = 5
    Top = 52
    Width = 708
    Height = 99
    TabStop = False
    Color = clRed
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Aten'#231#227'o!'
      ''
      
        'Esta rotina ira restaurar o banco de dados com o arquivo selecio' +
        'nado. Tenha certeza do que esta fazendo, pois uma vez executada ' +
        'a rotina os '
      'dados atuais ser'#227'o sobrepostos.'
      ''
      
        'Qualquer duvida com rela'#231#227'o a rotina de restaura'#231#227'o, contacte o ' +
        'suporte t'#233'cnico da CYBERSOFT.')
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
end
