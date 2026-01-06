object Financeiro_NFCancelada: TFinanceiro_NFCancelada
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Financeiro_NFCancelada'
  ClientHeight = 403
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 47
    Width = 821
    Height = 313
    Margins.Top = 1
    Margins.Bottom = 5
    Align = alClient
    DataSource = dstNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Titulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Vencto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Valor Documento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Valor T'#237'tulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Filial'
        Title.Alignment = taCenter
        Title.Caption = 'Origem'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Baixado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'BX'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 20
        Visible = True
      end>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 368
    Width = 821
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      AlignWithMargins = True
      Left = 753
      Top = 2
      Width = 66
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      TabOrder = 0
      OnClick = bSairClick
    end
    object bSelTodos: TButton
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 67
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Sel &Todos'
      TabOrder = 1
      OnClick = bSelTodosClick
    end
    object bSelNenhum: TButton
      AlignWithMargins = True
      Left = 70
      Top = 2
      Width = 76
      Height = 28
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Sel &Nenhum'
      TabOrder = 2
      OnClick = bSelNenhumClick
    end
    object bEstTit: TButton
      AlignWithMargins = True
      Left = 247
      Top = 2
      Width = 98
      Height = 28
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Estornar T'#237't&ulos'
      TabOrder = 3
      OnClick = bEstTitClick
    end
    object bEstBx: TButton
      AlignWithMargins = True
      Left = 147
      Top = 2
      Width = 99
      Height = 28
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Estornar &Baixas'
      TabOrder = 4
      OnClick = bEstBxClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 821
    Height = 41
    Margins.Bottom = 2
    Align = alTop
    BevelOuter = bvLowered
    Caption = '   NOTAS FISCAIS CANCELADAS QUE CONSTAM NO FINANCEIRO'
    Color = 111
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11579568
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    Font.Quality = fqClearType
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleElements = [seBorder]
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Nota = Numero'
      '      ,Data = Data_Emissao'
      
        '      ,Titulo = (select Numero from PagarReceber pr where pr.Fis' +
        'cal = cast(nf.Numero as varchar(15)) and Data_Documento = Data_E' +
        'missao)'
      
        '      ,Vencimento = (select Data_Vencimento from PagarReceber pr' +
        ' where pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Docum' +
        'ento = Data_Emissao)'
      
        '      ,Parcela = (select Valor_Parcela from PagarReceber pr wher' +
        'e pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Documento ' +
        '= Data_Emissao)'
      '      ,Pedido = Pedido_Representante'
      '      ,Total = Valor_TotalNota'
      '      ,Numero_Filial = 0'
      '      ,Filial = '#39'MATRIZ'#39
      
        '      ,Baixado = cast(iif((select count(Numero) from PagarRecebe' +
        'rBaixas prb where prb.Numero = (select Numero from PagarReceber ' +
        'pr where pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Doc' +
        'umento = Data_Emissao)) > 0, 1, 0) as bit)'
      'from NotasFiscais nf'
      'where Cancelada = 1'
      
        '--and (select Numero from PagarReceber pr where pr.Fiscal = cast' +
        '(nf.Numero as varchar(15)) and Data_Documento = Data_Emissao) > ' +
        '0'
      'order by Data, Nota')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 356
    Top = 177
    object tNotasNota: TIntegerField
      FieldName = 'Nota'
      DisplayFormat = '000000000'
    end
    object tNotasData: TDateTimeField
      FieldName = 'Data'
    end
    object tNotasTitulo: TLargeintField
      Alignment = taLeftJustify
      FieldName = 'Titulo'
      ReadOnly = True
    end
    object tNotasVencimento: TDateTimeField
      Alignment = taCenter
      FieldName = 'Vencimento'
      ReadOnly = True
    end
    object tNotasParcela: TCurrencyField
      FieldName = 'Parcela'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tNotasPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tNotasTotal: TCurrencyField
      FieldName = 'Total'
      DisplayFormat = ',##0.00'
    end
    object tNotasNumero_Filial: TIntegerField
      FieldName = 'Numero_Filial'
      ReadOnly = True
    end
    object tNotasFilial: TStringField
      FieldName = 'Filial'
      ReadOnly = True
      Size = 6
    end
    object tNotasBaixado: TBooleanField
      FieldName = 'Baixado'
      ReadOnly = True
      DisplayValues = 'a'
    end
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 356
    Top = 225
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Nota = Numero'
      '      ,Data = Data_Emissao'
      
        '      ,Titulo = (select Numero from PagarReceber pr where pr.Fis' +
        'cal = cast(nf.Numero as varchar(15)) and Data_Documento = Data_E' +
        'missao)'
      
        '      ,Vencimento = (select Data_Vencimento from PagarReceber pr' +
        ' where pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Docum' +
        'ento = Data_Emissao)'
      
        '      ,Parcela = (select Valor_Parcela from PagarReceber pr wher' +
        'e pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Documento ' +
        '= Data_Emissao)'
      '      ,Pedido = Pedido_Representante'
      '      ,Total = Valor_TotalNota'
      'from NotasFiscais nf'
      'where Cancelada = 1'
      
        '--and (select Numero from PagarReceber pr where pr.Fiscal = cast' +
        '(nf.Numero as varchar(15)) and Data_Documento = Data_Emissao) > ' +
        '0'
      'order by Data, Nota')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 356
    Top = 129
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 434
    Top = 128
  end
end
