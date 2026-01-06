object PesquisaGerais: TPesquisaGerais
  Left = 532
  Top = 314
  ActiveControl = cPesq
  BorderStyle = bsToolWindow
  Caption = 'Pesquisa'
  ClientHeight = 459
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 11
    Width = 82
    Height = 13
    Caption = 'Pesquisar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cPesq: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 29
    Width = 643
    Height = 21
    Align = alBottom
    TabOrder = 0
    OnChange = cPesqChange
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 643
    Height = 371
    Align = alBottom
    DataSource = dstPesquisa
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GradeDblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 430
    Width = 649
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object bOK: TButton
      Left = 498
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = '&OK'
      Enabled = False
      TabOrder = 0
      OnClick = bOKClick
    end
    object bCancelar: TButton
      Left = 573
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bCancelarClick
    end
  end
  object tPesquisa: TMSQuery
    SQL.Strings = (
      'select * from RecintosAduaneiros')
    Left = 51
    Top = 222
  end
  object dstPesquisa: TDataSource
    DataSet = tPesquisa
    Left = 49
    Top = 279
  end
end
