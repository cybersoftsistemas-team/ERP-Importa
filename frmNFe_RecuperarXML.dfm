object NFe_RecuperarXML: TNFe_RecuperarXML
  Left = 242
  Top = 101
  BorderStyle = bsDialog
  Caption = 'NFe_RecuperarXML'
  ClientHeight = 531
  ClientWidth = 890
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
  object Image3: TImage
    Left = 0
    Top = 0
    Width = 890
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
    Width = 234
    Height = 18
    Caption = 'Recupera'#231#227'o de XML de NF-e emitida.'
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
  object cTipo: TRadioGroup
    Left = 4
    Top = 51
    Width = 198
    Height = 42
    Caption = 'Tipo de Nota Fiscal'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Entrada'
      'Sa'#237'da')
    TabOrder = 0
    OnClick = cTipoClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 502
    Width = 890
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      890
      29)
    object bSair: TButton
      Left = 825
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
    object bConsultar: TButton
      Left = 588
      Top = 1
      Width = 144
      Height = 28
      Caption = 'Consultar Si&tua'#231#227'o da NF-e'
      TabOrder = 1
      OnClick = bConsultarClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 208
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
    object bPesquisa: TButton
      Left = 209
      Top = 1
      Width = 64
      Height = 28
      Caption = '&Pesquisar'
      TabOrder = 3
      OnClick = bPesquisaClick
    end
    object bRecuperar: TButton
      Left = 732
      Top = 1
      Width = 94
      Height = 28
      Caption = '&Recuperar NF-e'
      TabOrder = 4
      OnClick = bRecuperarClick
    end
    object bBuscar: TButton
      Left = 280
      Top = 1
      Width = 129
      Height = 28
      Caption = '&Recuperar Protocolo'
      Enabled = False
      TabOrder = 5
      Visible = False
      OnClick = bBuscarClick
    end
    object bDownload: TButton
      Left = 424
      Top = 1
      Width = 75
      Height = 28
      Caption = '&Download'
      TabOrder = 6
      Visible = False
      OnClick = bDownloadClick
    end
  end
  object Grade: TRxDBGrid
    Left = 4
    Top = 100
    Width = 881
    Height = 241
    DataSource = dmFiscal.dsNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    MultiSelect = True
    RowColor2 = 16776176
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NFe_CNF'
        Title.Alignment = taCenter
        Title.Caption = 'Nota Fiscal'
        Width = 372
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Complementar'
        Title.Alignment = taCenter
        Title.Caption = 'Compl.'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Devolucao'
        Title.Alignment = taCenter
        Title.Caption = 'Devol.'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cancelada'
        Title.Alignment = taCenter
        Title.Caption = 'Cancel.'
        Width = 53
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Nfe_Denegada'
        Title.Alignment = taCenter
        Title.Caption = 'Denegada'
        Width = 53
        Visible = True
      end>
  end
  object cMensagens: TMemo
    Left = 4
    Top = 343
    Width = 881
    Height = 155
    Color = 16757783
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object tNotasRef: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Pedido FROM Pedidos')
    FetchRows = 1
    Left = 376
    Top = 8
  end
  object AbrirXML: TOpenDialog
    Left = 408
    Top = 8
  end
end
