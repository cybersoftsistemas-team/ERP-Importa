object ControleNaviosLaudoBL: TControleNaviosLaudoBL
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'ControleNaviosLaudoBL'
  ClientHeight = 668
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 531
    Height = 623
    Margins.Bottom = 10
    Align = alClient
    DataSource = Dados.dsControleNaviosBL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BL'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade_15C'
        Title.Alignment = taCenter
        Title.Caption = 'Qtfr 15C'#186
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
        FieldName = 'Quantidade_20C'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde 20C'#186
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
        FieldName = 'Quantidade_LT'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde LT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Endossado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Webdings'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'End'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Bloqueado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Webdings'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Blq'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 636
    Width = 537
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      Left = 462
      Top = 1
      Width = 74
      Height = 30
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bAdicionar: TButton
      AlignWithMargins = True
      Left = 166
      Top = 2
      Width = 80
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Adicionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bAdicionarClick
    end
    object bTodos: TButton
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 80
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Sel &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bTodosClick
    end
    object bNenhum: TButton
      AlignWithMargins = True
      Left = 84
      Top = 2
      Width = 80
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Sel &Nenhum'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bNenhumClick
    end
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Fabricantes')
    Left = 270
    Top = 236
  end
end
