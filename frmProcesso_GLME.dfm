object Processo_GLME: TProcesso_GLME
  Left = 378
  Top = 202
  BorderStyle = bsDialog
  Caption = 'Processo_GLME'
  ClientHeight = 575
  ClientWidth = 745
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 745
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 898
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 84
    Height = 21
    Caption = 'PROCESSOS'
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
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 215
    Height = 18
    Caption = 'Controle de Processos Exonerados.'
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
    Top = 543
    Width = 745
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 898
    object bSair: TButton
      AlignWithMargins = True
      Left = 673
      Top = 2
      Width = 70
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 826
    end
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 211
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = dstNotas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Align = alLeft
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
    object bExon: TButton
      AlignWithMargins = True
      Left = 215
      Top = 2
      Width = 73
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Exonerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bExonClick
    end
    object bNaoExon: TButton
      AlignWithMargins = True
      Left = 290
      Top = 2
      Width = 94
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&N'#227'o Exonerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bNaoExonClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 739
    Height = 491
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitLeft = 4
    ExplicitTop = 50
    ExplicitWidth = 889
    ExplicitHeight = 489
    object cSituacao: TRadioGroup
      Left = 207
      Top = 10
      Width = 326
      Height = 48
      Caption = 'Situa'#231#227'o'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'N'#227'o Exoneradas'
        'Exoneradas'
        'Todas')
      TabOrder = 0
      OnClick = cSituacaoClick
    end
    object Grade: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 69
      Width = 731
      Height = 418
      Align = alBottom
      DataSource = dstNotas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = GradeDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DI'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Processo'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 139
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Desemb'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Vencto'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Data Nota'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_TotalNota'
          Title.Alignment = taCenter
          Title.Caption = 'Total Nota'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 127
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 33
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Exonerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Webdings'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Exon'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 32
          Visible = True
        end>
    end
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'use cybersoft_abmf_filial1'
      'declare @pPrazo int'
      'declare @pAviso int'
      'set @pPrazo = 15'
      'set @pAviso = 15'
      ''
      'select distinct '
      '       Nota'
      '      ,Data'
      
        '      ,Data_Desemb = (select Data_DesembaracoDeclaracao from Pro' +
        'cessosDocumentos pd where pd.Numero_Declaracao = ni.DI)'
      
        '      ,Data_Vencto = (select Data_DesembaracoDeclaracao from Pro' +
        'cessosDocumentos pd where pd.Numero_Declaracao = ni.DI) + @pPraz' +
        'o'
      '      ,Processo'
      '      ,DI'
      
        '      ,Valor_TotalNota = (select Valor_TotalNota from NotasFisca' +
        'is where Numero = Nota and Data_Emissao = Data)'
      
        '      ,Exonerado = (select Exonerado from ProcessosDocumentos pd' +
        ' where pd.Numero_Declaracao = ni.DI)'
      
        '      ,Dias = iif((select Exonerado from ProcessosDocumentos pd ' +
        'where pd.Numero_Declaracao = ni.DI) = 0, @pPrazo - datediff(day,' +
        ' Data, getdate()), 0)'
      'from NotasItens ni'
      'where Saida_Entrada = 0'
      'and isnull(Cancelada, 0) = 0'
      'and isnull(Nfe_Denegada, 0) = 0'
      
        'and (select isnull(Exonerado, 0) from ProcessosDocumentos pd whe' +
        're pd.Processo = ni.Processo) = 0'
      
        'and datediff(day, getdate(), (select Data_DesembaracoDeclaracao ' +
        'from ProcessosDocumentos pd where pd.Numero_Declaracao = ni.DI) ' +
        '+ @pPrazo) <= @pAviso'
      'union all'
      'select distinct '
      '       Nota = null'
      '      ,Data = null'
      '      ,Data_Desemb = Data_DesembaracoDeclaracao'
      '      ,Data_Vencto = Data_DesembaracoDeclaracao + @pPrazo'
      '      ,Processo'
      '      ,DI = Numero_Declaracao'
      '      ,Valor_TotalNota = 0'
      '      ,Exonerado'
      
        '      ,Dias = iif(Exonerado = 0, @pPrazo - datediff(day, pd.Data' +
        '_DesembaracoDeclaracao, getdate()), 0)'
      'from ProcessosDocumentos pd'
      'where isnull(Exonerado, 0) = 0'
      
        '--and (select count(DI) from NotasItens ni where ni.di = pd.Nume' +
        'ro_Declaracao) = 0'
      'order by Dias, Data, Nota')
    Active = True
    Left = 240
    Top = 220
    object tNotasNota: TIntegerField
      FieldName = 'Nota'
      ReadOnly = True
      DisplayFormat = '000000000'
    end
    object tNotasData: TDateTimeField
      FieldName = 'Data'
      ReadOnly = True
    end
    object tNotasData_Desemb: TDateTimeField
      FieldName = 'Data_Desemb'
      ReadOnly = True
    end
    object tNotasData_Vencto: TDateTimeField
      FieldName = 'Data_Vencto'
      ReadOnly = True
    end
    object tNotasProcesso: TStringField
      FieldName = 'Processo'
      ReadOnly = True
      Size = 15
    end
    object tNotasDI: TStringField
      FieldName = 'DI'
      ReadOnly = True
      EditMask = '##/#######-#;0'
      Size = 15
    end
    object tNotasValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tNotasExonerado: TBooleanField
      FieldName = 'Exonerado'
      ReadOnly = True
      DisplayValues = 'a'
    end
    object tNotasDias: TIntegerField
      FieldName = 'Dias'
      ReadOnly = True
    end
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 240
    Top = 277
  end
end
