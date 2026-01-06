object Impressao_NotaFiscalServicoReimpressao: TImpressao_NotaFiscalServicoReimpressao
  Left = 267
  Top = 109
  BorderStyle = bsDialog
  Caption = 'Impressao_NotaFiscalServicoReimpressao'
  ClientHeight = 532
  ClientWidth = 928
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
    928
    532)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 928
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 180
    Height = 21
    Caption = 'NOTA FISCAL DE SERVI'#199'O'
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
    Left = 8
    Top = 22
    Width = 324
    Height = 18
    Caption = 'Reimpress'#227'o das notas fiscais de Servi'#231'os Prestados.'
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
  object Image1: TImage
    Left = 891
    Top = 7
    Width = 30
    Height = 32
    Anchors = [akTop, akRight]
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFF00007000000F8888888888888888888
      000077000000F8888888888888888880000770000000FFFFFFFF8FFFFFFFFF00
      007700000000F8F8F8FF8F8888888000077000000000FFFFFFFF8FFFFFFF0000
      770000000000F888F8FF8F88F8800007700000000000FFFFFFFF8FFFFF000007
      000000000000FFFFFFFF8FFFFF000000F00000000000FFFFFFFF8FFFF000000F
      F00000000000F888888888880B990088F00000000000FFFFFFFFFFF0B99FFFFF
      F00000000000F888888F8F0B99888888F00000000000FF0FFFFFF0B99FFFFFFF
      F000000000088000FFFF0B99FFFFFFFFF0000000000877708800B99888888888
      F00000000008770000BB998888888888F0000000000080770BB99FFFFFFFFFFF
      F00000000000F8777099FFFFFFFFFFFFF00000000000F887770088888F888888
      F00000000000FF88770000088FFFFFFFF00000000000F7788777777877777777
      F00000000000F7778887788777777777F00000000000F7777778877777777777
      F00000000000F7777777777777777777F00000000000FFFFFFFFFFFFFFFFFFFF
      F000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFF1F8000000E0000000E0000000E0000001E0000003
      E0000007E000000FE000001FE000001FE000001FE000001FE000001FE000001F
      E000001FE000001FE000001FE000001FE000001FE000001FE000001FE000001F
      E000001FE000001FE000001FE000001FE000001FE000001FE000003FE000003F
      FFFFFFFF}
  end
  object Grade: TRxDBGrid
    Left = 7
    Top = 54
    Width = 916
    Height = 441
    Ctl3D = True
    DataSource = dmFiscal.dsNotasServico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Title.Caption = 'Nota N'#186
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Title.Caption = 'Processo N'#186
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Natureza_Operacao'
        Title.Alignment = taCenter
        Title.Caption = 'Natureza'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClienteNome'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 372
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Servico'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Servi'#231'o'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Nota'
        Title.Alignment = taCenter
        Title.Caption = 'Total Nota'
        Width = 103
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 503
    Width = 928
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      928
      29)
    object bSair: TButton
      Left = 861
      Top = 1
      Width = 66
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
    object bImprimir: TButton
      Left = 779
      Top = 1
      Width = 82
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
    end
    object bTudo: TButton
      Left = 697
      Top = 1
      Width = 82
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object Button1: TButton
      Left = 480
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
      Visible = False
      OnClick = Button1Click
    end
  end
  object tTabela: TMSTable
    Connection = Dados.Banco
    Left = 400
    Top = 8
  end
end
