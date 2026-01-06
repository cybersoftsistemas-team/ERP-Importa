object NotaServico_Cancelar: TNotaServico_Cancelar
  Left = 477
  Top = 181
  BorderStyle = bsDialog
  Caption = 'NotaServico_Cancelar'
  ClientHeight = 466
  ClientWidth = 404
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 404
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 92
    Height = 21
    Caption = 'NOTA FISCAL'
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
    Width = 314
    Height = 18
    Caption = 'Cancelamento de nota fiscal de servi'#231'os Prestados.'
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
    Top = 436
    Width = 404
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      404
      30)
    object bSair: TButton
      Left = 340
      Top = 1
      Width = 64
      Height = 28
      Cursor = crHandPoint
      Hint = '  Fecha a janela atual e cancela os processos pendentes.  '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bCancelar: TButton
      Left = 241
      Top = 1
      Width = 82
      Height = 28
      Cursor = crHandPoint
      Hint = '  Executa o cancelamento da nota fiscal selecionada.  '
      Anchors = [akTop, akRight]
      Caption = '&Cancelar NFS'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bCancelarClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 176
      Height = 28
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o reistro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object bPesquisar: TButton
      Left = 177
      Top = 1
      Width = 64
      Height = 28
      Caption = '&Pesquisar'
      TabOrder = 3
      OnClick = bPesquisarClick
    end
  end
  object Grade: TRxDBGrid
    Left = 3
    Top = 50
    Width = 398
    Height = 381
    DataSource = dmFiscal.dsNotasServico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    RowColor2 = 16776176
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cancelada'
        Title.Alignment = taCenter
        Title.Caption = 'Cancel.'
        Visible = True
      end>
  end
end
