object Pedido_NFSVinculo: TPedido_NFSVinculo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido_NFSVinculo'
  ClientHeight = 448
  ClientWidth = 838
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
    Top = 3
    Width = 832
    Height = 366
    Margins.Bottom = 15
    Align = alTop
    DataSource = dstProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 380
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desc_Processo'
        Title.Alignment = taCenter
        Title.Caption = 'Processo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 113
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 418
    Width = 838
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bAdicionar: TButton
      Left = 696
      Top = 1
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alRight
      Caption = '&Adicionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bAdicionarClick
    end
    object bCancelar: TButton
      Left = 616
      Top = 1
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alRight
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bCancelarClick
    end
    object bSair: TButton
      Left = 776
      Top = 1
      Width = 61
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSairClick
    end
  end
  object StaticText6: TStaticText
    Left = 648
    Top = 371
    Width = 51
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'TOTAL'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Transparent = False
    StyleElements = []
  end
  object cTotal: TCurrencyEdit
    Left = 700
    Top = 371
    Width = 121
    Height = 21
    DisplayFormat = ',##0.00;-,##0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object dstProdutos: TDataSource
    DataSet = tProdutos
    Left = 221
    Top = 242
  end
  object tVinculos: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 146
    Top = 193
  end
  object tProdutos: TClientDataSet
    PersistDataPacket.Data = {
      300100009619E0BD01000000180000000B000000000003000000300106436F64
      69676F04000100000000000850726F636573736F010049000000010005574944
      54480200020014000A5175616E74696461646504000100000000000556616C6F
      72080004000000010007535542545950450200490006004D6F6E65790011416C
      6971756F7461494E53535F53657276080004000000000010416C6971756F7461
      5049535F53657276080004000000000013416C6971756F7461434F46494E535F
      53657276080004000000000011416C6971756F746143534C4C5F536572760800
      04000000000011416C6971756F74614952504A5F536572760800040000000000
      10416C6971756F74614350505F53657276080004000000000010416C6971756F
      74614950495F5365727608000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    AfterPost = tProdutosAfterPost
    Left = 221
    Top = 193
    object tProdutosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProdutosDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Dados.Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao_Reduzida'
      KeyFields = 'Codigo'
      Size = 80
      Lookup = True
    end
    object tProdutosProcesso: TStringField
      FieldName = 'Processo'
    end
    object tProdutosDesc_Processo: TStringField
      FieldKind = fkLookup
      FieldName = 'Desc_Processo'
      LookupDataSet = Dados.ProcessosDOC
      LookupKeyFields = 'Processo'
      LookupResultField = 'Processo'
      KeyFields = 'Processo'
      Lookup = True
    end
    object tProdutosQuantidade: TIntegerField
      FieldName = 'Quantidade'
      DisplayFormat = ',##0'
    end
    object tProdutosValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
    object tProdutosAliquotaINSS_Serv: TFloatField
      FieldName = 'AliquotaINSS_Serv'
    end
    object tProdutosAliquotaPIS_Serv: TFloatField
      FieldName = 'AliquotaPIS_Serv'
    end
    object tProdutosAliquotaCOFINS_Serv: TFloatField
      FieldName = 'AliquotaCOFINS_Serv'
    end
    object tProdutosAliquotaCSLL_Serv: TFloatField
      FieldName = 'AliquotaCSLL_Serv'
    end
    object tProdutosAliquotaIRPJ_Serv: TFloatField
      FieldName = 'AliquotaIRPJ_Serv'
    end
    object tProdutosAliquotaCPP_Serv: TFloatField
      FieldName = 'AliquotaCPP_Serv'
    end
    object tProdutosAliquotaIPI_Serv: TFloatField
      FieldName = 'AliquotaIPI_Serv'
    end
  end
  object ttmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 146
    Top = 242
  end
end
