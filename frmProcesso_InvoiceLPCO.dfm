object Processo_InvoiceLPCO: TProcesso_InvoiceLPCO
  Left = 0
  Top = 0
  ActiveControl = Grade
  BorderStyle = bsDialog
  Caption = 'Processo_InvoiceLPCO'
  ClientHeight = 477
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 445
    Width = 731
    Height = 32
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 326
    ExplicitWidth = 640
    object bCancelar: TButton
      AlignWithMargins = True
      Left = 654
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bCancelarClick
      ExplicitLeft = 563
    end
    object bSalvar: TButton
      AlignWithMargins = True
      Left = 570
      Top = 2
      Width = 82
      Height = 28
      Hint = 'Adicionar itens a invoice'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Salvar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSalvarClick
      ExplicitLeft = 479
    end
    object bTodos: TButton
      AlignWithMargins = True
      Left = 486
      Top = 2
      Width = 82
      Height = 28
      Hint = 'Adicionar itens a invoice'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = ' &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bTodosClick
      ExplicitLeft = 395
    end
    object bNenhum: TButton
      AlignWithMargins = True
      Left = 402
      Top = 2
      Width = 82
      Height = 28
      Hint = 'Adicionar itens a invoice'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = ' &Nenhum'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bNenhumClick
      ExplicitLeft = 311
    end
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 55
    Width = 725
    Height = 387
    Align = alClient
    DataSource = dmDespacho.dsLPCO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    StyleElements = []
    OnCellClick = GradeCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Sel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Wingdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Orgao_Anuente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Org'#227'o Anuente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Documento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 234
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Inicio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Fim'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 52
    Align = alTop
    BevelOuter = bvLowered
    Color = 12615808
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleElements = [seBorder]
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 729
      Height = 50
      Align = alClient
      Stretch = True
      ExplicitLeft = 7
      ExplicitTop = 0
      ExplicitWidth = 487
      ExplicitHeight = 43
    end
    object RxLabel3: TRxLabel
      AlignWithMargins = True
      Left = 137
      Top = 12
      Width = 458
      Height = 27
      Alignment = taCenter
      Caption = 'NCM exige LPCO, selecione os LPCO'#39's para adicionar.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = 4194304
      ShadowPos = spRightBottom
      Transparent = True
    end
  end
  object ttmp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposProcesso'
      
        '  (Codigo, Descricao, Conta_Cliente, Conta_ClienteAdiantamento, ' +
        'Conta_Fornecedor, Conta_FornecedorAdiantamento, Conta_Despesas, ' +
        'Conta_Impostos)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Conta_Cliente, :Conta_ClienteAdiantamen' +
        'to, :Conta_Fornecedor, :Conta_FornecedorAdiantamento, :Conta_Des' +
        'pesas, :Conta_Impostos)')
    SQLDelete.Strings = (
      'DELETE FROM TiposProcesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposProcesso'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Conta_Cliente = :Con' +
        'ta_Cliente, Conta_ClienteAdiantamento = :Conta_ClienteAdiantamen' +
        'to, Conta_Fornecedor = :Conta_Fornecedor, Conta_FornecedorAdiant' +
        'amento = :Conta_FornecedorAdiantamento, Conta_Despesas = :Conta_' +
        'Despesas, Conta_Impostos = :Conta_Impostos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposProcesso.Codigo, TiposProcesso.Descricao, TiposProce' +
        'sso.Conta_Cliente, TiposProcesso.Conta_ClienteAdiantamento, Tipo' +
        'sProcesso.Conta_Fornecedor, TiposProcesso.Conta_FornecedorAdiant' +
        'amento, TiposProcesso.Conta_Despesas, TiposProcesso.Conta_Impost' +
        'os FROM TiposProcesso'
      'WHERE TiposProcesso.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select isnull(sum(Total_Fatura), 0)   as Total_Real,'
      '       isnull(sum(Total_FaturaME), 0) as Total_ME,'
      '       isnull(sum(Peso_Liquido), 0)   as Total_PesoLiquido,'
      '       isnull(sum(Peso_Bruto), 0)     as Total_PesoBruto'
      'from Invoice'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 254
    Top = 277
  end
end
