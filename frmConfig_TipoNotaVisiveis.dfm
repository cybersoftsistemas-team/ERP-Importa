object Config_TipoNotaVisiveis: TConfig_TipoNotaVisiveis
  Left = 506
  Top = 61
  Width = 358
  Height = 674
  Caption = 'Campos Visiveis do Lay-Out'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TRxDBGrid
    Left = 0
    Top = -1
    Width = 350
    Height = 602
    Color = clWhite
    Ctl3D = True
    DataSource = Dados.dsImpressao
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    OnDrawColumnCell = GradeDrawColumnCell
    TitleButtons = True
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Visivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Vis'#237'vel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 605
    Width = 350
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      Left = 652
      Top = 2
      Width = 75
      Height = 32
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 280
      Top = 2
      Width = 69
      Height = 32
      Hint = 
        'Salva o Lay-Out corrente como Lay-Out padr'#227'o do Sistema. - Toda ' +
        'vez em que for criado um tipo de nota novo este sera o lay-out b' +
        'ase.'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button1Click
    end
    object bTodos: TButton
      Left = 209
      Top = 2
      Width = 71
      Height = 32
      Hint = 
        'Salva o Lay-Out corrente como Lay-Out padr'#227'o do Sistema. - Toda ' +
        'vez em que for criado um tipo de nota novo este sera o lay-out b' +
        'ase.'
      Caption = '&Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bTodosClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 2
      Width = 208
      Height = 32
      Cursor = crHandPoint
      DataSource = Dados.dsImpressao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o registro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
  end
end
