object Pedido_ItensSeriais: TPedido_ItensSeriais
  Left = 425
  Top = 216
  Anchors = [akTop]
  BorderStyle = bsToolWindow
  Caption = 'Pedido_ItensSeriais'
  ClientHeight = 430
  ClientWidth = 984
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 984
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      984
      30)
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 208
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsProdutosSeriais
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
      TabOrder = 1
    end
    object bPesquisa: TButton
      Left = 209
      Top = 1
      Width = 58
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object bCancelar: TButton
      Left = 926
      Top = 1
      Width = 58
      Height = 28
      Hint = 'Fecha a janela atual e cancela a sele'#231#227'o  '
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bCancelarClick
    end
    object Button1: TButton
      Left = 267
      Top = 1
      Width = 99
      Height = 28
      Hint = '  Seleciona todos n'#250'meros seriais  '
      Caption = 'Selecionar Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button1Click
    end
    object bOK: TButton
      Left = 868
      Top = 1
      Width = 58
      Height = 28
      Hint = 'Fecha a janela atual e confirma a sele'#231#227'o  '
      Anchors = [akTop, akRight]
      Caption = '&OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bOKClick
    end
    object bProcesso: TButton
      Left = 366
      Top = 1
      Width = 115
      Height = 28
      Hint = '  Seleciona todos os n'#250'meros seriais do processo corrente.  '
      Caption = 'Selecionar Processo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bProcessoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 7
    Width = 974
    Height = 388
    Caption = 'Seriais dispon'#237'veis para faturamento [0]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Grade: TRxDBGrid
      Left = 4
      Top = 20
      Width = 965
      Height = 361
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = GradeCellClick
      OnDrawColumnCell = GradeDrawColumnCell
      OnKeyUp = GradeKeyUp
      MultiSelect = True
      Columns = <
        item
          Expanded = False
          FieldName = 'Cor_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero 1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo2'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero2'
          Title.Alignment = taCenter
          Title.Caption = 'Numero 2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo3'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 3'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero3'
          Title.Alignment = taCenter
          Title.Caption = 'Numero 3'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end>
    end
  end
end
