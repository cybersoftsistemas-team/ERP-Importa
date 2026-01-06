object NotaFiscal_TerceirosItensNota: TNotaFiscal_TerceirosItensNota
  Left = 29
  Top = 199
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_TerceirosItensNota'
  ClientHeight = 445
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 1
    Top = 4
    Width = 981
    Height = 402
    Caption = 'Itens da Nota Fiscal de Refer'#234'ncia'
    TabOrder = 0
    DesignSize = (
      981
      402)
    object Grade: TRxDBGrid
      Left = 5
      Top = 16
      Width = 971
      Height = 381
      Anchors = [akLeft, akTop, akBottom]
      Color = 14286847
      DataSource = dmFiscal.dsNotasItens
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = bInclui_ItemClick
      ShowGlyphs = False
      Columns = <
        item
          Expanded = False
          FieldName = 'Nota'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 503
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NCM'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Disponivel'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Total'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 410
    Width = 986
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      986
      35)
    object bSair: TButton
      Left = 921
      Top = 2
      Width = 63
      Height = 32
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 2
      Width = 288
      Height = 32
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotasItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Ctl3D = True
      Hints.Strings = (
        '  Vai para o primeiro registro.  '
        '  Volta para o registro anterior.  '
        '  Vai para o pr'#243'ximo registro.  '
        '  Vai para o '#250'ltimo registro.  '
        '  Inlcuir um novo registro.  '
        '  Deletar o registro atual.  '
        '  Altera o reistro atual. '
        '  Salvar o registro no banco de dados.  '
        '  Cancelar as modifica'#231#245'es feitas no registro atual.  '
        '  Atualizar inform'#231#245'es do banco de dados.  ')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object bInclui_Item: TButton
      Left = 289
      Top = 2
      Width = 88
      Height = 32
      Hint = '  Adiciona um item no pedido.  '
      Caption = 'Adicionar &Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bInclui_ItemClick
    end
  end
  object tItem: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Item) AS Item FROM NotasItens')
    Left = 400
    Top = 413
    object tItemItem: TSmallintField
      FieldName = 'Item'
      ReadOnly = True
    end
  end
end
